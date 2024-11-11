import 'package:flutter/widgets.dart';
import 'package:presentation/common/point.widget.dart';
import 'package:presentation/util/color.dart';
import 'package:presentation/util/util.dart';

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
  final bool isClicked;
  const CategoryStoreItemWidget({
    super.key,
    required this.icon,
    required this.title,
    required this.isClicked,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 80,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(3),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              border: Border.all(color: AppColor.iconGrey, width: 1),
            ),
            child: ClipOval(
              child: Image.network(icon, width: 40, height: 40),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            title,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w900,
              color: isClicked ? AppColor.primaryBlack : AppColor.iconGrey,
            ),
          ),
        ],
      ),
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
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.all(4),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.network(image),
          ),
        ),
        const SizedBox(height: 8),
        Padding(
          padding: const EdgeInsets.only(left: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    price.toPriceWithComma(),
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(width: 4),
                  const PointWidget(size: 8),
                ],
              ),
              Text(
                title,
                style: const TextStyle(fontSize: 16),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        )
      ],
    );
  }
}
