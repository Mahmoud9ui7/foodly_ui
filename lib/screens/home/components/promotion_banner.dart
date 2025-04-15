import 'package:flutter/material.dart';
import '../../../components/scalton/scalton_rounded_container.dart';

import '../../../constants.dart';

class PromotionBanner extends StatefulWidget {
  const PromotionBanner({super.key});

  @override
  State<PromotionBanner> createState() => _PromotionBannerState();
}

class _PromotionBannerState extends State<PromotionBanner> {
  
  bool isLoading = true;
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 1), () {
      setState(() {
        isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
      child: isLoading
          ? const AspectRatio(
              aspectRatio: 1.97,
              child: ScaltonRoundedContainer(radious: 12),
            )
          : ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(12)),
              child: Image.asset("assets/images/Banner.png"),
            ),
    );
  }
}