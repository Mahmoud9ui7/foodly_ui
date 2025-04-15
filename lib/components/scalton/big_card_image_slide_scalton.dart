import 'package:flutter/material.dart';
import '../../constants.dart';

import '../dot_indicators.dart';

class BigCardImageSlideScalton extends StatelessWidget {
  const BigCardImageSlideScalton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.08),
            borderRadius: const BorderRadius.all(Radius.circular(12)),
          ),
        ),
        Positioned(
          bottom: defaultPadding,
          right: defaultPadding,
          child: Row(
            children: List.generate(4, (index) => const DotIndicator()),
          ),
        ),
      ],
    );
  }
}