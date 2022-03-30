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
import 'productlistitemffriends.dart';

// ignore: must_be_immutable
class FriendsProductsListPage extends StatelessWidget {
  FriendsProductsListPage({Key? key}) : super(key: key);
  late BuildContext context;

  @override
  Widget build(BuildContext context) {
    this.context = context;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: const Text(
          "Furry Friends",
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
      const ProductsListItemffriends(
        name: "Fuzzy Shiro",
        currentPrice: 11.24,
        originalPrice: 14.99,
        discount: 25,
        image: "assets/images/Pomeranian.jpg",
      ),
      const ProductsListItemffriends(
        name: "Fuzzy Shiro",
        currentPrice: 11.24,
        originalPrice: 14.99,
        discount: 25,
        image: "assets/images/Pomeranian.jpg",
      ),
      const ProductsListItemffriends(
        name: "Marshmallow Maggie",
        currentPrice: 11.24,
        originalPrice: 14.99,
        discount: 25,
        image: "assets/images/BichonFrise.jpg",
      ),
      const ProductsListItemffriends(
        name: "Mischievous Kitty",
        currentPrice: 7.49,
        originalPrice: 14.99,
        discount: 50,
        image: "assets/images/OrangeTabbyCat.jpg",
      ),
      const ProductsListItemffriends(
        name: "Chatty Bella",
        currentPrice: 11.54,
        originalPrice: 14.99,
        discount: 23,
        image: "assets/images/Yorkie.jpg",
      ),
      const ProductsListItemffriends(
        name: "Fancy Oreo",
        currentPrice: 11.99,
        originalPrice: 14.99,
        discount: 20,
        image: "assets/images/TexedoCat.jpg",
      ),
      const ProductsListItemffriends(
        name: "Hyper Asher",
        currentPrice: 11.54,
        originalPrice: 14.99,
        discount: 23,
        image: "assets/images/ShibaInu.jpg",
      ),
    ];
  }
}
