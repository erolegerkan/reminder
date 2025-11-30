import 'package:flutter/material.dart';
import 'package:reminder/core/design/r_colors.dart';
import 'package:reminder/core/design/r_numbers.dart';
import 'package:reminder/core/widgets/r_text.dart';

class RTextfield extends StatelessWidget {
  const RTextfield({super.key, required this.textData});

  final String textData;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(RNumbers.defaultPadding),
      margin: EdgeInsets.only(top:RNumbers.defaultMargin,right: RNumbers.defaultMargin,left: RNumbers.defaultMargin),
      decoration: BoxDecoration(
        color: RColors.darkCard,
        border: Border.all(
          color: RColors.darkTitle,
        ),
        borderRadius: BorderRadius.circular(RNumbers.circularPadding)
      ),
      child: TextField(
        style: TextStyle(
          color: RColors.darkTitle,
          fontSize: 20
        ),
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(RNumbers.circularBorderV2),
            borderSide: BorderSide(color: RColors.darkTitle)
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(RNumbers.circularBorderV2),
            borderSide: BorderSide(color: RColors.darkTitle)
          ),
          hint: RText(textData: textData, fontSize: 20,textAlign: TextAlign.start,),
          focusColor: RColors.darkTitle
        ),

      ),
    );
  }
}
