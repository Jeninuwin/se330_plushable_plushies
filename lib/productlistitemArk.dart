import 'package:flutter/material.dart';
import './constants.dart';
import './routes.dart';
import 'productdetailswolf.dart';

class ProductsListItemArk extends StatelessWidget {
  final String name;
  final double currentPrice;
  final double originalPrice;
  final int discount;
  final String image;

  const ProductsListItemArk(
      {Key? key,
      required this.name,
      required this.currentPrice,
      required this.originalPrice,
      required this.discount,
      required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        _buildProductItemCard(context),
        //_buildProductItemCard(context),
      ],
    );
  }

  _buildProductItemCard(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (BuildContext context) => ProductDetailwolfPage()));
      },
      child: Card(
        elevation: 4.0,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              child: Image.asset(
                image,
              ),
              height: 250.0,
              width: MediaQuery.of(context).size.width / 2.2,
            ),
            const SizedBox(
              height: 8.0,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 8.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    name,
                    style: const TextStyle(fontSize: 16.0, color: Colors.grey),
                  ),
                  const SizedBox(
                    height: 2.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(
                        "\$$currentPrice",
                        style: const TextStyle(
                            fontSize: 16.0, color: Colors.black),
                      ),
                      const SizedBox(
                        width: 8.0,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
