import 'package:flutter/material.dart';

class PointWidget extends StatelessWidget {
  final Color? borderColor;
  final Color? backgroundColor;
  final Color? textColor;
  final double? fontSize;

  const PointWidget({
    super.key,
    this.borderColor = Colors.amber,
    this.backgroundColor = Colors.amber,
    this.textColor = Colors.white,
    this.fontSize = 14,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: fontSize! * 1.5,
      height: fontSize! * 1.5,
      decoration: BoxDecoration(
        color: backgroundColor ?? Colors.grey,
        borderRadius: BorderRadius.circular(100),
        border: Border.all(color: borderColor ?? Colors.grey),
      ),
      child: Text(
        'C',
        style: TextStyle(
          color: textColor,
          fontWeight: FontWeight.bold,
          fontSize: fontSize,
          height: 1.2,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
