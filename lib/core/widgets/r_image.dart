import 'package:flutter/material.dart';
import 'package:reminder/core/design/r_colors.dart';

class RImage extends StatelessWidget {
  const RImage({
    super.key,
    required this.imagePath,
    required this.imageHeight,
    required this.imageWidth,
  });

  final String imagePath;
  final double imageHeight;
  final double imageWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: imageHeight,
      width: imageWidth,
      decoration: BoxDecoration(
        border: Border.all(color: RColors.darkButton)
      ),
      child: Image.asset(imagePath),
    );
  }
}
