import 'package:flutter/material.dart';

class TextoComSpan extends StatelessWidget {
  const TextoComSpan({
    super.key,
    required this.textoNormal,
    required this.textoEmSpan,
    this.textColor = Colors.black,
    this.spanColor = Colors.black,
    this.width = 183,
    this.height = 15,
  });

  final String textoNormal;
  final String textoEmSpan;
  final Color textColor;
  final Color spanColor;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: Center(
        child: Text.rich(
          TextSpan(
            style: const TextStyle(
              fontFamily: 'Circular Std',
              fontSize: 12,
              fontWeight: FontWeight.w400,
              height: 1.0,
              letterSpacing: -0.41,
              color: Colors.black,
            ).copyWith(color: textColor),
            children: [
              TextSpan(
                text: textoNormal,
                style: TextStyle(
                  color: textColor,
                  fontWeight: FontWeight.w400,
                ),
              ),
              TextSpan(
                text: textoEmSpan,
                style: TextStyle(
                  color: spanColor,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}