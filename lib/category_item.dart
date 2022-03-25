import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    Key? key,
    required this.id,
    required this.title,
    required this.backgroundColor,
  }) : super(key: key);

  final String id;
  final String title;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15.0),
      child: Text(
        title,
      ),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            backgroundColor.withOpacity(0.7),
            backgroundColor,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(15.0),
      ),
    );
  }
}
