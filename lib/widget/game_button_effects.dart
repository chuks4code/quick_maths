import 'package:flutter/material.dart';

class GameButton extends StatelessWidget {
  final String text;
  final VoidCallback? onTap;
  final bool enabled;
  final double width;
  final double height;

  const GameButton({
    super.key,
    required this.text,
    required this.onTap,
    this.enabled = true,
    this.width = 180,
    this.height = 70,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: enabled ? onTap : null,
        borderRadius: BorderRadius.circular(20),
        splashColor: Colors.white60,
        highlightColor: Colors.black87,
        child: Ink(
          width: width,
          height: height,

          decoration: BoxDecoration(
            color: enabled ? Colors.blue : Colors.blueGrey,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Center(
            child: Text(
              text,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
