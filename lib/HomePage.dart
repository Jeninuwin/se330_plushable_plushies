// ignore_for_file: unnecessary_new

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/src/rendering/box.dart';
import 'package:se330_plushable_plushies/productlistitemArk.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Center(
          child: Column(
            children: <Widget>[
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(0.20),
                    child: Image.asset('assets/images/test.png'),
                  ),
                  const Padding(padding: EdgeInsets.all(8.0)),
                  const Text(
                    'What\'s Hot\n',
                    style: TextStyle(fontSize: 20),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          children: <Widget>[
                            Image.asset(
                              'assets/images/Yorkie.jpg',
                              height: 100,
                            ),
                            Text('Yorkie Bitch'),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: <Widget>[
                            Image.asset(
                              'assets/images/Yorkie.jpg',
                              height: 100,
                            ),
                            Text('Yorkie Hoe'),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: <Widget>[
                            Image.asset(
                              'assets/images/Yorkie.jpg',
                              height: 100,
                            ),
                            Text('Yorkie Hoe'),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: <Widget>[
                            Image.asset(
                              'assets/images/Yorkie.jpg',
                              height: 100,
                            ),
                            Text('Yorkie Hoe'),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
