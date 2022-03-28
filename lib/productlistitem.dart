import 'package:flutter/material.dart';
import './constants.dart';
import './routes.dart';

class ProductsListItem extends StatelessWidget {
  final String name;
  final int currentPrice;
  final int originalPrice;
  final int discount;
  final String image;

  const ProductsListItem(
      {Key? key,
      required this.name,
      required this.currentPrice,
      required this.originalPrice,
      required this.discount,
      required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        _buildProductItemCard(context),
        _buildProductItemCard(context),
      ],
    );
  }

  _buildProductItemCard(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(Constants.ROUTE_PRODUCT_DETAIL);
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
                      Text(
                        "\$$originalPrice",
                        style: const TextStyle(
                          fontSize: 12.0,
                          color: Colors.grey,
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                      const SizedBox(
                        width: 8.0,
                      ),
                      Text(
                        "$discount\% off",
                        style:
                            const TextStyle(fontSize: 12.0, color: Colors.grey),
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
