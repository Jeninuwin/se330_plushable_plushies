import 'package:flutter/material.dart';

class Category {
  const Category({
    required this.id,
    required this.title,
    this.backgroundColor = Colors.orange,
  });

  final String id;
  final String title;
  final Color backgroundColor;
}
