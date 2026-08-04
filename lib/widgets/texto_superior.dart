import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FixedTitleText extends StatelessWidget {
  const FixedTitleText({super.key, required this.text});

  static const double top = 123;
  static const double left = 27;

  static const Color textColor = Color(0xFF111111);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      left: left,
      child: Text(
        text,
        style: GoogleFonts.outfit(
          color: textColor,
          fontSize: 32,
          fontWeight: FontWeight.w600,
          height: 34.5 / 32,
          letterSpacing: -0.41,
        ),
      ),
    );
  }
}