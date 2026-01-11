import 'package:flutter/material.dart';
import 'package:reminder/core/design/r_colors.dart';
import 'package:reminder/core/design/r_numbers.dart';

class RShaderMask extends StatelessWidget {
  const RShaderMask({
    super.key,
    required this.imagePath,
    this.rightColor = RColors.darkTitle,
    this.leftColor = RColors.darkTitle,
    this.imageHeight = 100,
    this.imageWidth = 100,
    this.onTap,
  });

  final String imagePath;
  final Color rightColor;
  final Color leftColor;
  final double imageHeight;
  final double imageWidth;
  final Function? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(RNumbers.defaultPadding),
      decoration: BoxDecoration(
        border: Border.all(color: RColors.darkTitle),
        borderRadius: BorderRadius.circular(16),
      ),
      child: InkWell(
        onTap: () => onTap!.call(),
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
