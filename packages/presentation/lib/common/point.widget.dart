import 'package:flutter/material.dart';

class PointWidget extends StatelessWidget {
  final double? size;
  final Color? borderColor;
  final Color? backgroundColor;
  final Color? textColor;

  const PointWidget({
    super.key,
    this.size = 16,
    this.borderColor = Colors.amber,
    this.backgroundColor = Colors.amber,
    this.textColor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size! * 1.5,
      height: size! * 1.5,
      alignment: Alignment.center,
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
          fontSize: size,
          height: 1.0,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
