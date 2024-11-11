import 'package:flutter/material.dart';
import 'package:presentation/common/divier.dart';
import 'package:presentation/page/my/widget/kun_manage_section.widget.dart';
import 'package:presentation/page/my/widget/profile_section.widget.dart';
import 'package:presentation/page/my/widget/reviewer_manage_section.widget.dart';
import 'package:presentation/page/my/widget/service_section.widget.dart';
import 'package:presentation/util/color.dart';

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
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
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
              const DividerWidget(),
              const SizedBox(height: 36),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: ReviewerManageSectionWidget(),
              ),
              const SizedBox(height: 36),
              const DividerWidget(),
              const SizedBox(height: 36),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: ServiceSectionWidget(),
              ),
              const SizedBox(height: 36),
              Container(
                height: 100,
                color: AppColor.backgroundGrey,
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    children: [
                      Icon(Icons.logout),
                      SizedBox(width: 8),
                      Text('로그아웃'),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
