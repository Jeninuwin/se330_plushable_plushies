import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plushable Plushies'),
          centerTitle: true,
      ),
        body: const Center(
          child: Image(image: AssetImage('assets/homepage.png')
          ,),
          ),
          ),
        );
  }
}