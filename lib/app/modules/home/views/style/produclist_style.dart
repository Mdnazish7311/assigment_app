import 'package:flutter/material.dart';

TextStyle productStyle(color, fontsize, fontweight) {
  return TextStyle(
    color: color,
    fontSize: fontsize,
    fontWeight: fontweight,
    overflow: TextOverflow.ellipsis,
  );
}
