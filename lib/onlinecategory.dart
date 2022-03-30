import 'package:flutter/cupertino.dart';

import './anyimage.dart';

class Category {
  String name;
  int currentPrice;
  int originalPrice;
  int discount;
  //AnyImage image;
  String image;

  Category(
      {required this.name,
      required this.currentPrice,
      required this.originalPrice,
      required this.discount,
      //required this.image,
      required this.image});
}
