import 'package:flutter/material.dart';
import './HomePage.dart' as first;
import './productpageark.dart' as second;
import './productlist.dart' as third;
import './login.dart' as fourth;

//routing so far. set the page you want by importing it here as ./[page name] following the next number.
//for example: import './login.dart' as fourth; then you would go to the body and list it as follows: fourth.[name of class](). That's it.
//if you are adding more tabs make sure to increase the length on line 24 and add the tab name
void main() => runApp(const HomePage());

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.white,
        tabBarTheme: const TabBarTheme(
          labelColor: Colors.black,
          labelStyle: TextStyle(color: Colors.black),
        ),
      ),
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: const Color(0xffffffff),
            title: const Text('Plushable Plushies'),
            titleTextStyle: const TextStyle(color: Colors.black, fontSize: 25),
            centerTitle: true,
            bottom: const TabBar(
              isScrollable: true,
              tabs: [
                //https://api.flutter.dev/flutter/material/TabBar-class.html
                Tab(
                  text: 'Home',
                ),
                Tab(
                  text: 'Noah\'s Ark',
                ),
                Tab(
                    text: 'Old'
                        '\nMcDonald'),
                Tab(text: 'Login'),
                // Tab(text: 'Sale'),
                // Tab(
                //     text: 'Furry'
                //         '\nFriends'),
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              first.HomePage(),
              second.ArkCategoriesScreen(),
              third.ProductsListPage(),
              fourth.LoginDemo(),
            ],
          ),
        ),
      ),
    );
  }
}
