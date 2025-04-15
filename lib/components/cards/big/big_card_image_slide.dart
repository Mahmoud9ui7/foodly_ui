import 'package:flutter/material.dart';
import '../../../constants.dart';

import '../../dot_indicators.dart';
import 'big_card_image.dart';

class BigCardImageSlide extends StatefulWidget {
  const BigCardImageSlide({
    super.key,
    required this.images,
  });

  final List images;

  @override
  State<BigCardImageSlide> createState() => _BigCardImageSlideState();
}

class _BigCardImageSlideState extends State<BigCardImageSlide> {
  int intialIndex = 0;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.81,
      child: Stack(
        children: [
          PageView.builder(
            onPageChanged: (value) {
              setState(() {
                intialIndex = value;
              });
            },
            itemCount: widget.images.length,
            itemBuilder: (context, index) =>
                BigCardImage(image: widget.images[index]),
          ),
          Positioned(
            bottom: defaultPadding,
            right: defaultPadding,
            child: Row(
              children: List.generate(
                widget.images.length,
                (index) => DotIndicator(
                  isActive: intialIndex == index,
                  activeColor: Colors.white,
                  inActiveColor: Colors.white,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}