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
              icon: const Icon(
                Icons.notifications,
                size: 28,
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 200),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Stack(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Color.fromARGB(255, 241, 241, 241),
                                  blurRadius: 16,
                                ),
                              ],
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(16),
                                topRight: Radius.circular(16),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  TopMySectionWidget(
                    myPoint: 1000,
                    totalPoint: 10000,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
