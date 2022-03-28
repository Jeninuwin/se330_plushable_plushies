import './anyimage.dart';

class Category {
  int id;
  String name;
  int parent;
  String description;
  int count;

  Category(
      {required this.id,
      required this.name,
      required this.parent,
      required this.description,
      required this.count});
}
