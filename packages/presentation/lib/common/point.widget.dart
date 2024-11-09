import 'package:flutter/material.dart';

class PointWidget extends StatelessWidget {
  final Color? borderColor;
  final Color? backgroundColor;
  final Color? textColor;

  const PointWidget({
    super.key,
    this.borderColor = Colors.amber,
    this.backgroundColor = Colors.amber,
    this.textColor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor ?? Colors.grey,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: borderColor ?? Colors.grey),
      ),
      child: Text(
        'C',
        style: TextStyle(
          color: textColor,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
