import 'package:flutter/material.dart';
import 'package:presentation/page/home/widget/top_my_section.widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: Container(
            padding: const EdgeInsets.only(left: 16),
            child: Image.asset(
              'packages/presentation/assets/images/logo.png',
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.notifications),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: SingleChildScrollView(
            child: Column(
              children: [
                TopMySectionWidget(
                  myPoint: 1000,
                  totalPoint: 10000,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
