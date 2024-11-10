import 'package:flutter/material.dart';
import 'package:presentation/page/home/widget/bottom_ranking_section.widget.dart';
import 'package:presentation/page/home/widget/middle_banner_section.widget.dart';
import 'package:presentation/page/home/widget/top_my_section.widget.dart';
import 'package:presentation/util/color.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          scrolledUnderElevation: 0,
          backgroundColor: Colors.transparent,
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
                    padding: const EdgeInsets.only(top: 160),
                    child: Stack(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          decoration: const BoxDecoration(
                            color: AppColor.primaryWhite,
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
                          child: const Padding(
                            padding: EdgeInsets.only(
                              top: 60,
                              left: 20,
                              right: 20,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                MiddleBannerSectionWidget(),
                                BottomRankingSection(),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const TopMySectionWidget(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
