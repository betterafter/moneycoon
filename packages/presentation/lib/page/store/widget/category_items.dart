import 'package:flutter/widgets.dart';

class CategoryItemWidget extends StatelessWidget {
  final String icon;
  final String title;
  const CategoryItemWidget({
    super.key,
    required this.icon,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.network(icon),
        Text(title),
      ],
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
        Image.network(icon),
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
