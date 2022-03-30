// ignore_for_file: unnecessary_new

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/src/rendering/box.dart';
import 'package:se330_plushable_plushies/productlistitem.dart';

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
                    child: Image.asset(
                      'assets/images/test.png',
                      height: 190,
                      width: 350,
                    ),
                  ),
                  const Padding(
                      padding: EdgeInsets.only(
                          left: 15.0, right: 15.0, top: 15.0, bottom: 0)),
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
                              'assets/images/chicken.jpg',
                              height: 100,
                            ),
                            Text('Chica Chick'),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: <Widget>[
                            Image.asset(
                              'assets/images/otter.jpg',
                              height: 100,
                            ),
                            Text('Floatin Otter'),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: <Widget>[
                            Image.asset(
                              'assets/images/TexedoCat.jpg',
                              height: 100,
                            ),
                            Text('Fancy Oreo'),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: <Widget>[
                            Image.asset(
                              'assets/images/pig.jpg',
                              height: 100,
                            ),
                            Text('Petunia Pig'),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const Padding(padding: EdgeInsets.all(8.0)),
                  const Text(
                    'Noah\'s Ark\n',
                    style: TextStyle(fontSize: 20),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          children: <Widget>[
                            Image.asset(
                              'assets/images/Wolf.jpg',
                              height: 100,
                            ),
                            Text('Howling Wolf'),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: <Widget>[
                            Image.asset(
                              'assets/images/SnowLeopard.jpg',
                              height: 100,
                            ),
                            Text('Snuggly Snowy'),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: <Widget>[
                            Image.asset(
                              'assets/images/LionCub.jpg',
                              height: 100,
                            ),
                            Text('Kipper the Cub'),
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
