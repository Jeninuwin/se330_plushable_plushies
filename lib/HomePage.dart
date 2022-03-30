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
      body: SingleChildScrollView(
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
                  RichText(
                      text: const TextSpan(children: [
                    WidgetSpan(
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.black,
                        size: 20.0,
                      ),
                    ),
                    TextSpan(
                      text: 'What\'s Hot',
                      style: TextStyle(color: Colors.black),
                    ),
                    WidgetSpan(
                      child: Icon(
                        Icons.arrow_forward,
                        color: Colors.black,
                        size: 20.0,
                      ),
                    ),
                  ]))
                ],
              ),
              Row(
                // ignore: unnecessary_new
                children: const <Widget>[
                  Expanded(
                    child: Text('Deliver features faster',
                        textAlign: TextAlign.center),
                  ),
                  Expanded(
                    child: Text('Craft beautiful UIs',
                        textAlign: TextAlign.center),
                  ),
                  Expanded(
                    child: FittedBox(
                      fit: BoxFit.contain, // otherwise the logo will be tiny
                      child: FlutterLogo(),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
