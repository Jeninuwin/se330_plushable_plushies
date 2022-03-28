import './anyimage.dart';
import './onlinecategory.dart';

class Product {
  String lineItemId;
  int productId;
  String productName;
  List<Category> categories;
  List<String> size;
  String shortDescription;
  String regularPrice;
  String salePrice;
  int discount;
  bool ifItemAvailable;
  bool ifAddedToCart;
  String description;
  int stockQuantity;
  int quantity;

  Product(
      {required this.lineItemId,
      required this.productId,
      required this.productName,
      required this.categories,
      required this.size,
      required this.shortDescription,
      required this.regularPrice,
      required this.salePrice,
      required this.discount,
      required this.ifItemAvailable,
      required this.ifAddedToCart,
      required this.description,
      required this.stockQuantity,
      required this.quantity});

  @override
  toString() => "productId: $productId , productName: $productName";
}
