import 'package:flutter/material.dart';
import 'package:fokusin/core/theme/app_palette.dart';

class AnimatedFilledButton extends StatefulWidget {
  final VoidCallback onPressed;
  final String text;
  final double? width;

  const AnimatedFilledButton({
    super.key,
    required this.onPressed,
    required this.text,
    this.width,
  });

  @override
  AnimatedFilledButtonState createState() => AnimatedFilledButtonState();
}

class AnimatedFilledButtonState extends State<AnimatedFilledButton> {
  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) => setState(() => _isPressed = true),
      onTapUp: (_) => setState(() => _isPressed = false),
      onTapCancel: () => setState(() => _isPressed = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 400),
        width: widget.width,
        // transform:
        child: Transform.scale(
          scale: _isPressed ? 0.98 : 1,
          alignment: Alignment.center,
          child: FilledButton(
            onPressed: widget.onPressed,
            style: FilledButton.styleFrom(
              minimumSize: const Size.fromHeight(40),
            ),
            child: Text(widget.text),
          ),
        ),
      ),
    );
  }
}
