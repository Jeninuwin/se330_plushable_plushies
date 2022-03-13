import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Plushable Plushies'),
            centerTitle: true,
            bottom: const TabBar(
              tabs: [
                //https://api.flutter.dev/flutter/material/TabBar-class.html
                Tab(text: 'Noah\'s Ark'),
                Tab(
                    text: 'Old'
                        '\nMcDonald'),
                Tab(text: 'Sale'),
                Tab(
                    text: 'Furry'
                        '\nFriends'),
              ],
            ),
          ),
          body: Center(
            child: Column(children: <Widget>[
              //big image for homepage
              Padding(
                padding: const EdgeInsets.all(0.20),
                child: Image.asset('assets/images/test.png'),
              ),
              //what's hot icon bars
              const Padding(
                padding: EdgeInsets.all(8.0),
              ),
              RichText(
                text: const TextSpan(
                  children: [
                    WidgetSpan(
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.black,
                        size: 20.0,
                      ),
                    ),
                    TextSpan(
                      text: ' What\'s Hot ',
                      style: TextStyle(color: Colors.black),
                    ),
                    WidgetSpan(
                      child: Icon(
                        Icons.arrow_forward,
                        color: Colors.black,
                        size: 20.0,
                      ),
                    ),
                  ],
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
