import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:reminder/core/design/r_colors.dart';

class RText extends StatelessWidget {
  const RText({
    super.key,
    required this.textData,
    this.fontWeight = FontWeight.normal,
    required this.fontSize,
    this.textAlign = TextAlign.center,
  });

  final String textData;
  final FontWeight fontWeight;
  final double fontSize;
  final TextAlign textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      textData,
      textAlign: textAlign,
      style: GoogleFonts.literata(
        fontStyle: FontStyle.normal,
        fontWeight: fontWeight,
        fontSize: fontSize,
        color: RColors.darkTitle,
      ),
    );
  }
}
