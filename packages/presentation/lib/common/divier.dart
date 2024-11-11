import 'package:flutter/material.dart';
import 'package:presentation/util/color.dart';

class DividerWidget extends StatelessWidget {
  const DividerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 10,
      width: MediaQuery.of(context).size.width,
      color: AppColor.backgroundGrey,
    );
  }
}
