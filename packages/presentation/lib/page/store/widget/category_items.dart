import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';

class CategoryItemWidget extends StatelessWidget {
  const CategoryItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          'assets/images/store/category_item.png',
          width: 100,
          height: 100,
        ),
      ],
    );
  }
}

class StoreItemWidget extends StatelessWidget {
  const StoreItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
