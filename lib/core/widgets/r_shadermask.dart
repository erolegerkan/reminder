import 'package:flutter/material.dart';
import 'package:reminder/core/design/r_colors.dart';

class RShaderMask extends StatelessWidget {
  const RShaderMask({
    super.key,
    required this.imagePath,
    this.rightColor = RColors.darkTitle,
    this.leftColor = RColors.darkTitle,
    this.imageHeight = 100,
    this.imageWidth = 100,
  });

  final String imagePath;
  final Color rightColor;
  final Color leftColor;
  final double imageHeight;
  final double imageWidth;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (Rect bounds) {
        return LinearGradient(
          colors: [rightColor, leftColor],
          begin: AlignmentGeometry.topLeft,
          end: AlignmentGeometry.bottomRight,
        ).createShader(bounds);
      },
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: RColors.darkTitle),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Image.asset(
          imagePath,
          height: imageHeight,
          width: imageWidth,
          color: RColors.darkTitle,
        ),
      ),
    );
  }
}
