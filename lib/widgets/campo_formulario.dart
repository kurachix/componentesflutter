import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CampoFormulario extends StatelessWidget {
  const CampoFormulario({
    super.key,
    required this.hintText,
    this.width = 342,
    this.height = 56,
    this.controller,
    this.keyboardType,
    this.obscureText = false,
  });

  static const Color backgroundColor = Color(0xFFF4F4F4);
  static const Color hintColor = Color(0xFF9D9D9D);

  final String hintText;
  final double width;
  final double height;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(4),
        ),
        child: TextFormField(
          controller: controller,
          keyboardType: keyboardType,
          obscureText: obscureText,
          style: GoogleFonts.outfit(
            color: const Color(0xFF111111),
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: GoogleFonts.outfit(
              color: hintColor,
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
            border: InputBorder.none,
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 18,
            ),
            isDense: true,
          ),
        ),
      ),
    );
  }
}