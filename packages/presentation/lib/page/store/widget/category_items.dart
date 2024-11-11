import 'package:flutter/widgets.dart';
import 'package:presentation/util/color.dart';

class CategoryItemWidget extends StatelessWidget {
  final String icon;
  final String title;
  final bool isClicked;
  const CategoryItemWidget({
    super.key,
    required this.icon,
    required this.title,
    required this.isClicked,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
      decoration: BoxDecoration(
        color: isClicked ? AppColor.primaryBlack : AppColor.defaultTransparent,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Container(
            width: 50,
            height: 50,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: AppColor.backgroundGrey,
            ),
            child: Image.network(
              icon,
              width: 30,
              height: 30,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            title,
            style: TextStyle(
              color: isClicked ? AppColor.primaryWhite : AppColor.primaryBlack,
            ),
          ),
        ],
      ),
    );
  }
}

class CategoryStoreItemWidget extends StatelessWidget {
  final String icon;
  final String title;
  const CategoryStoreItemWidget({
    super.key,
    required this.icon,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.network(icon, width: 30, height: 30),
        Text(title),
      ],
    );
  }
}

class StoreItemWidget extends StatelessWidget {
  final String image;
  final String title;
  final String price;
  const StoreItemWidget({
    super.key,
    required this.image,
    required this.title,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.network(image),
        Text(title),
        Text(price),
      ],
    );
  }
}
