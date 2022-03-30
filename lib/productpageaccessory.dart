import 'package:flutter/material.dart';
import './productlistitem.dart';

// ignore: must_be_immutable
class AccessoryProductsListPage extends StatelessWidget {
  AccessoryProductsListPage({Key? key}) : super(key: key);
  late BuildContext context;

  @override
  Widget build(BuildContext context) {
    this.context = context;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: const Text(
          "Accessories",
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
          name: "a",
          currentPrice: 1,
          originalPrice: 1,
          discount: 1,
          image: "a"),
      const ProductsListItem(
        name: "Collars",
        currentPrice: 3.99,
        originalPrice: 8.99,
        discount: 25,
        image: "assets/images/collar.jpg",
      ),
      const ProductsListItem(
        name: "Shirt",
        currentPrice: 5.99,
        originalPrice: 10.99,
        discount: 25,
        image: "assets/images/shirt.jpg",
      ),
      const ProductsListItem(
        name: "Bag",
        currentPrice: 14.99,
        originalPrice: 29.99,
        discount: 50,
        image: "assets/images/bag.jpeg",
      ),
    ];
  }
}
