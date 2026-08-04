import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BotaoPadrao extends StatelessWidget {
  const BotaoPadrao({
    super.key,
    required this.text,
    required this.onPressed,
    this.width = 344,
    this.height = 56,
    this.backgroundColor = const Color(0xFF8E6CEF),
    this.textColor = Colors.white,
  });

  final String text;
  final VoidCallback onPressed;
  final double width;
  final double height;
  final Color backgroundColor;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          foregroundColor: textColor,
          elevation: 0,
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100),
          ),
          textStyle: GoogleFonts.outfit(
            fontSize: 17,
            fontWeight: FontWeight.w600,
            height: 1.0,
          ),
        ),
        child: FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(text, maxLines: 1, softWrap: false),
        ),
      ),
    );
  }
}