import 'package:flutter/material.dart';
import 'package:presentation/common/point.widget.dart';

class StorePage extends StatelessWidget {
  const StorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          scrolledUnderElevation: 0,
          backgroundColor: Colors.transparent,
          leading: Container(
            padding: const EdgeInsets.only(left: 16),
            child: const Text(
              '상점',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          actions: [
            const PointWidget(),
            const SizedBox(width: 16),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                size: 28,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
