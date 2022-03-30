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
import 'productlistitemmcdonald.dart';

// ignore: must_be_immutable
class McDonaldProductsListPage extends StatelessWidget {
  McDonaldProductsListPage({Key? key}) : super(key: key);
  late BuildContext context;

  @override
  Widget build(BuildContext context) {
    this.context = context;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: const Text(
          "Old McDonald",
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
      const ProductsListItemmcdonald(
        name: "Professor Pony",
        currentPrice: 16.99,
        originalPrice: 699,
        discount: 25,
        image: "assets/images/pony2.jpg",
      ),
      const ProductsListItemmcdonald(
        name: "Professor Pony",
        currentPrice: 16.99,
        originalPrice: 699,
        discount: 25,
        image: "assets/images/pony2.jpg",
      ),
      const ProductsListItemmcdonald(
        name: "Clarabelle",
        currentPrice: 16.99,
        originalPrice: 699,
        discount: 25,
        image: "assets/images/cow.jpg",
      ),
      const ProductsListItemmcdonald(
        name: "Dolly the Sheep",
        currentPrice: 16.99,
        originalPrice: 499,
        discount: 50,
        image: "assets/images/sheep.jpg",
      ),
      const ProductsListItemmcdonald(
        name: "Chica Chick",
        currentPrice: 16.99,
        originalPrice: 1299,
        discount: 23,
        image: "assets/images/chicken.jpg",
      ),
      const ProductsListItemmcdonald(
        name: "Petunia Pig",
        currentPrice: 16.99,
        originalPrice: 499,
        discount: 20,
        image: "assets/images/pig.jpg",
      ),
      const ProductsListItemmcdonald(
        name: "Tixie the Fox",
        currentPrice: 16.99,
        originalPrice: 1299,
        discount: 23,
        image: "assets/images/fox.jpg",
      ),
    ];
  }
}
