/*import 'package:flutter/material.dart';

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
*/
import 'package:flutter/material.dart';
import './productlistitem.dart';

// ignore: must_be_immutable
class ArkProductsListPage extends StatelessWidget {
  ArkProductsListPage({Key? key}) : super(key: key);
  late BuildContext context;

  @override
  Widget build(BuildContext context) {
    this.context = context;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: const Text(
          "Noah's Ark",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: _buildProductsListPage(),
    );
  }

  _buildProductsListPage() {
    Size screenSize = MediaQuery.of(context).size;
    return Container(
      color: Colors.grey[100],
      child: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          if (index == 0) {
            return _buildFilterWidgets(screenSize);
          } else if (index == 4) {
            return const SizedBox(
              height: 12.0,
            );
          } else {
            return _dummyProductsList()[index];
          }
        },
      ),
    );
  }

  _buildFilterWidgets(Size screenSize) {
    return Container(
      margin: const EdgeInsets.all(12.0),
      width: screenSize.width,
      child: Card(
        elevation: 4.0,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 12.0),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              _buildFilterButton("SORT"),
              Container(
                color: Colors.black,
                width: 2.0,
                height: 24.0,
              ),
              _buildFilterButton("REFINE"),
            ],
          ),
        ),
      ),
    );
  }

  _buildFilterButton(String title) {
    return InkWell(
      onTap: () {
        // ignore: avoid_print
        print(title);
      },
      child: Row(
        children: <Widget>[
          const Icon(
            Icons.arrow_drop_down,
            color: Colors.black,
          ),
          const SizedBox(
            width: 2.0,
          ),
          Text(title),
        ],
      ),
    );
  }

  _dummyProductsList() {
    return [
      const ProductsListItem(
        name: "Bitchon Frise",
        currentPrice: 524,
        originalPrice: 699,
        discount: 25,
        image: "assets/images/Bitchon Frise.jpg",
      ),
      const ProductsListItem(
        name: "Fawn",
        currentPrice: 524,
        originalPrice: 699,
        discount: 25,
        image: "assets/images/Fawn.jpg",
      ),
      const ProductsListItem(
        name: "Giraffe",
        currentPrice: 249,
        originalPrice: 499,
        discount: 50,
        image: "assets/images/Giraffe.jpg",
      ),
      const ProductsListItem(
        name: "Ferret",
        currentPrice: 899,
        originalPrice: 1299,
        discount: 23,
        image: "assets/images/Ferret.jpg",
      ),
      const ProductsListItem(
        name: "Lion Cub",
        currentPrice: 249,
        originalPrice: 499,
        discount: 20,
        image: "assets/images/Lion Cub.jpg",
      ),
      const ProductsListItem(
        name: "Otter2",
        currentPrice: 899,
        originalPrice: 1299,
        discount: 23,
        image: "assets/images/otter 2.jpg",
      ),
    ];
  }
}
