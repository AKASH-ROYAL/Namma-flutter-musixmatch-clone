import 'package:flutter/material.dart';
import 'package:musixmatch_clone_namma_flutter/app/config/constants.dart';
import 'package:velocity_x/velocity_x.dart';

class NectText extends StatelessWidget {
  final String text;
  final double? size;
  final Color? color;
  final String? fontFamily;
  final FontWeight? fontWeight;
  final int? maxLines;
  final double? minFontSize;

  final TextAlign? textAlign;
  final TextDecoration? decoration;
  final TextOverflow? overflow;
  final TextStyle? style;
  final FontStyle? fontStyle;

  const NectText({
    super.key,
    required this.text,
    this.size,
    this.color,
    this.fontFamily,
    this.fontWeight,
    this.maxLines,
    this.minFontSize,
    this.style,
    this.textAlign,
    this.decoration,
    this.overflow,
    this.fontStyle,
  });

  @override
  Widget build(BuildContext context) {
    return style != null
        ? text.text
            .textStyle(style)
            .maxLines(maxLines ?? 1)
            .minFontSize(minFontSize ?? 14)
            .make()
        : text.text
            .fontWeight(fontWeight ?? FontWeight.w400)
            .color(color ?? primaryColor)
            .fontFamily(fontFamily ?? primaryFontFamily)
            .size(size ?? 14)
            .minFontSize(minFontSize ?? size ?? 14)
            .maxLines(maxLines ?? 1)
            .overflow(overflow ?? TextOverflow.ellipsis)
            .textStyle(TextStyle(decoration: decoration))
            // .ellipsis
            .align(textAlign ?? TextAlign.center)
            .make();
  }
}
