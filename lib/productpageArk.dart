import 'package:flutter/material.dart';

import './category_item.dart';
import './ark_data.dart';

class ArkCategoriesScreen extends StatelessWidget {
  const ArkCategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Noahs Ark'),
      ),
      body: GridView(
        children: TEMP_CATEGORIES
            .map((categoryData) => CategoryItem(
                  id: categoryData.id,
                  title: categoryData.title,
                  backgroundColor: categoryData.backgroundColor,
                ))
            .toList(),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200.0,
          childAspectRatio: 3.0 / 2.0,
          crossAxisSpacing: 20.0,
          mainAxisSpacing: 20.0,
        ),
      ),
    );
  }
}
