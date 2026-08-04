import 'package:flutter/material.dart';

class BotaoVoltar extends StatelessWidget {
  const BotaoVoltar({super.key, required this.onPressed});

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: const Color(0xFFF4F4F4),
      shape: const CircleBorder(),
      child: InkWell(
        customBorder: const CircleBorder(),
        onTap: onPressed,
        child: const SizedBox(
          width: 40,
          height: 40,
          child: Icon(
            Icons.chevron_left,
            size: 24,
            color: Color(0xFF2E2E2E),
          ),
        ),
      ),
    );
  }
}