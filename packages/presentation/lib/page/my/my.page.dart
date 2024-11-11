import 'package:flutter/material.dart';
import 'package:presentation/common/divier.dart';
import 'package:presentation/page/my/widget/kun_manage_section.widget.dart';
import 'package:presentation/page/my/widget/profile_section.widget.dart';
import 'package:presentation/page/my/widget/reviewer_manage_section.widget.dart';

class MyPage extends StatelessWidget {
  const MyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          scrolledUnderElevation: 0,
          backgroundColor: Colors.transparent,
          leading: Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.only(left: 16),
            child: const Text(
              'MY',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          actions: [
            const SizedBox(width: 2),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.settings,
                size: 28,
              ),
            ),
          ],
        ),
        body: const SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    ProfileSectionWidget(),
                    SizedBox(height: 16),
                    KunManageSectionWidget(),
                    SizedBox(height: 16),
                  ],
                ),
              ),
              DividerWidget(),
              SizedBox(height: 36),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: ReviewerManageSectionWidget(),
              ),
              SizedBox(height: 36),
              DividerWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
