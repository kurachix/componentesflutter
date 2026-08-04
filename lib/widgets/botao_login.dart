import 'package:flutter/material.dart';

class BotaoLogin extends StatelessWidget {
  const BotaoLogin({
    super.key,
    required this.texto,
    required this.icone,
    required this.onPressed,
    this.width = 344,
    this.height = 56,
    this.backgroundColor = const Color(0xFFF4F4F4),
    this.textColor = const Color(0xFF1C1C1C),
  });

  final String texto;
  final Widget icone;
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
          shadowColor: Colors.transparent,
          padding: EdgeInsets.zero,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100),
          ),
        ),
        child: Stack(
          fit: StackFit.expand,
          children: [
            Positioned(
              left: 20,
              top: 0,
              bottom: 0,
              child: Center(child: icone),
            ),
            Center(
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  texto,
                  textAlign: TextAlign.center,
                  maxLines: 1,
                  softWrap: false,
                  style: const TextStyle(
                    fontFamily: 'Circular Std',
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    height: 1.0,
                  ).copyWith(color: textColor),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}