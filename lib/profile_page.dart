import 'package:flutter/material.dart';
import 'package:se330_plushable_plushies/productpageark.dart';
import 'package:se330_plushable_plushies/productpagemcdonald.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: const Color(0xffffffff),
          iconTheme: IconThemeData(color: Colors.black),
          titleTextStyle: const TextStyle(color: Colors.black, fontSize: 25),
        ),
        body: SingleChildScrollView(
          child: Form(
            autovalidateMode: AutovalidateMode.always,
            child: Column(
              children: <Widget>[
                Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Container(
                        width: 500,
                        height: 210,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 190, 190, 190),
                            borderRadius: BorderRadius.circular(20.0)),
                        child: Column(
                          children: <Widget>[
                            Container(
                                alignment: Alignment.center,
                                child: const Text("My Favorites!",
                                    style: TextStyle(fontSize: 25))),
                            Container(
                                alignment: Alignment.center,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(800),
                                  child: Image.asset(
                                      'assets/images/resizedaccount.png',),
                                )),
                            const Padding(
                              padding: EdgeInsets.only(
                                  left: 15.0, right: 15.0, top: 15, bottom: 0),
                            ),                                
                            const Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "   Full Name: Noah Bentley",
                                style: TextStyle(fontSize: 20),
                                textAlign: TextAlign.left,
                              ),
                            ),
                            const Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "   Email: noah.bentley@jacks.sdstate.edu",
                                style: TextStyle(fontSize: 20),
                                textAlign: TextAlign.left,
                              ),
                            ),
                            const Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "   Phone Number: 605-555-5555",
                                style: TextStyle(fontSize: 20),
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ],
                        ))),
                const Padding(
                  padding: EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 15, bottom: 0),
                ),
                Column(children: <Widget>[
                  Align(
                      alignment: Alignment.center,
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ArkProductsListPage()));
                        },
                        child: Image.asset(
                          "assets/images/BichonFrise.jpg",
                          width: 100,
                          height: 100,
                        ),
                      )),
                  const Align(
                      alignment: Alignment.center,
                      child: Text(" Marshmallow Maggie      \$14.99")),
                  const Padding(
                    padding: EdgeInsets.only(top: 30.0),
                  ),

                  Align(
                      alignment: Alignment.center,
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      McDonaldProductsListPage()));
                        },
                        child: Image.asset(
                          "assets/images/sheep.jpg",
                          width: 100,
                          height: 100,
                        ),
                      )),
                  const Align(
                      alignment: Alignment.center,
                      child: Text(" Dolly the Sheep     \$16.99")),
                  //Image.asset("assets/images/Wolf.jpg", width: 100, height: 100,),
                  //Text("dsada")
                ]),
                Padding(
                    padding: const EdgeInsets.only(top: 30.0),
                    child: Column(children: const <Widget>[]))
              ],
            ),
          ),
        ));
  }
}
