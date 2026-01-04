import 'package:flutter/material.dart';
import 'package:reminder/core/design/r_colors.dart';
import 'package:reminder/core/design/r_numbers.dart';

class RContainer extends StatelessWidget {
  const RContainer({
    super.key,
    required this.containerChild,
    this.margin = RNumbers.defaultMarginV2,
    this.padding = RNumbers.defaultPadding,
    this.isBorderNeeded = true,
    this.width,
  });

  final Widget containerChild;
  final double margin;
  final double padding;
  final bool isBorderNeeded;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      padding: EdgeInsets.all(padding),
      margin: EdgeInsets.only(
        top: margin,
        bottom: margin,
        right: RNumbers.defaultMargin,
        left: RNumbers.defaultMargin,
      ),
      decoration: isBorderNeeded == false
          ? null
          : BoxDecoration(
              color: RColors.darkCard,
              border: Border.all(color: RColors.darkTitle),
              borderRadius: BorderRadius.circular(RNumbers.circularPadding),
            ),
      child: containerChild,
    );
  }
}
