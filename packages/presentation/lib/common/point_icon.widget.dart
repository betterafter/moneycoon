import 'package:flutter/material.dart';

class PointIconWidget extends StatelessWidget {
  final Color? borderColor;
  final Color? backgroundColor;
  final Color? textColor;
  final double? size;

  const PointIconWidget({
    super.key,
    this.borderColor = Colors.amber,
    this.backgroundColor = Colors.amber,
    this.textColor = Colors.white,
    this.size = 24,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: backgroundColor ?? Colors.grey,
        borderRadius: BorderRadius.circular(100),
        border: Border.all(
          color: borderColor ?? Colors.grey,
          width: 1.5,
        ),
      ),
      child: Text(
        'C',
        style: TextStyle(
          color: textColor,
          fontWeight: FontWeight.bold,
          fontSize: size! * 18 / 24,
          height: 1.2,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
