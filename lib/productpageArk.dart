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
        itemCount: 8,
        itemBuilder: (context, index) {
          if (index == 0) {
            return _buildFilterWidgets(screenSize);
          } else if (index == 7) {
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
          name: "name",
          currentPrice: 1.00,
          originalPrice: 1.00,
          discount: 1,
          image: "assets/images/test.png"),
      const ProductsListItem(
        name: "Gerald the Giraffe",
        currentPrice: 11.99,
        originalPrice: 15.99,
        discount: 25,
        image: "assets/images/Giraffe.jpg",
      ),
      const ProductsListItem(
        name: "Miko the Panda",
        currentPrice: 11.99,
        originalPrice: 15.99,
        discount: 25,
        image: "assets/images/RedPanda.jpg",
      ),
      const ProductsListItem(
        name: "Floatin' Otter",
        currentPrice: 7.99,
        originalPrice: 15.99,
        discount: 50,
        image: "assets/images/otter.jpg",
      ),
      const ProductsListItem(
        name: "Playfull Ferret",
        currentPrice: 12.31,
        originalPrice: 15.99,
        discount: 23,
        image: "assets/images/Ferret.jpg",
      ),
      const ProductsListItem(
        name: "Howling Wolf",
        currentPrice: 12.79,
        originalPrice: 15.99,
        discount: 20,
        image: "assets/images/Wolf.jpg",
      ),
      const ProductsListItem(
        name: "Bambi the Deer",
        currentPrice: 12.31,
        originalPrice: 15.99,
        discount: 23,
        image: "assets/images/Fawn.jpg",
      ),
      const ProductsListItem(
        name: "Snuggly Snowy",
        currentPrice: 12.31,
        originalPrice: 15.99,
        discount: 23,
        image: "assets/images/SnowLeopard.jpg",
      ),
      const ProductsListItem(
        name: "Kipper the Cub",
        currentPrice: 12.31,
        originalPrice: 15.99,
        discount: 23,
        image: "assets/images/LionCub.jpg",
      ),
    ];
  }
}
