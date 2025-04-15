import 'package:flutter/material.dart';

class BigCardImage extends StatelessWidget {
  const BigCardImage({
    super.key,
    required this.image,
  });

  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(12)),
        image: DecorationImage(
          // for newtowk image use NetworkImage()
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}