// import 'package:flutter/material.dart';
// import './onlinecategory.dart';

// class ProductDetailPage extends StatefulWidget {
//   late final Category category;

//   @override
//   _ProductDetailPageState createState() => _ProductDetailPageState(category);
// }

// class _ProductDetailPageState extends State<ProductDetailPage>
//     with TickerProviderStateMixin {
//   final Category category;

//   _ProductDetailPageState(this.category);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         leading: IconButton(
//           icon: const Icon(
//             Icons.chevron_left,
//             size: 40.0,
//             color: Colors.black,
//           ),
//           onPressed: () {
//             Navigator.of(context).pop();
//           },
//         ),
//         backgroundColor: Colors.white,
//         title: const Text(
//           "PRODUCT DETAIL",
//           style: TextStyle(
//             color: Colors.black,
//           ),
//         ),
//       ),
//       body: _buildProductDetailsPage(context),
//       bottomNavigationBar: _buildBottomNavigationBar(),
//     );
//   }

//   _buildProductDetailsPage(BuildContext context) {
//     Size screenSize = MediaQuery.of(context).size;

//     return ListView(
//       children: <Widget>[
//         Container(
//           padding: const EdgeInsets.all(4.0),
//           child: Card(
//             elevation: 4.0,
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: <Widget>[
//                 _buildProductImagesWidgets(),
//                 _buildProductTitleWidget(),
//                 const SizedBox(height: 12.0),
//                 _buildPriceWidgets(),
//                 const SizedBox(height: 12.0),
//                 _buildDivider(screenSize),
//                 const SizedBox(height: 12.0),
//                 _buildFurtherInfoWidget(),
//                 const SizedBox(height: 12.0),
//                 _buildDivider(screenSize),
//                 const SizedBox(height: 12.0),
//                 _buildSizeChartWidgets(),
//                 const SizedBox(height: 12.0),
//                 _buildDetailsAndMaterialWidgets(),
//                 const SizedBox(height: 12.0),
//                 _buildStyleNoteHeader(),
//                 const SizedBox(height: 6.0),
//                 _buildDivider(screenSize),
//                 const SizedBox(height: 4.0),
//                 _buildStyleNoteData(),
//                 const SizedBox(height: 20.0),
//                 _buildMoreInfoHeader(),
//                 const SizedBox(height: 6.0),
//                 _buildDivider(screenSize),
//                 const SizedBox(height: 4.0),
//                 _buildMoreInfoData(),
//                 const SizedBox(height: 24.0),
//               ],
//             ),
//           ),
//         ),
//       ],
//     );
//   }

//   _buildDivider(Size screenSize) {
//     return Column(
//       children: <Widget>[
//         Container(
//           color: Colors.grey[600],
//           width: screenSize.width,
//           height: 0.25,
//         ),
//       ],
//     );
//   }

//   _buildProductImagesWidgets() {
//     TabController imagesController = TabController(length: 3, vsync: this);

//     return Padding(
//       padding: const EdgeInsets.all(16.0),
//       child: SizedBox(
//         height: 250.0,
//         child: Center(
//           child: DefaultTabController(
//             length: 3,
//             child: Stack(
//               children: <Widget>[
//                 TabBarView(
//                   controller: imagesController,
//                   children: <Widget>[
//                     Image.asset(
//                       'assets/images/test.png',
//                     ),
//                     Image.asset(
//                       'assets/images/test.png',
//                     ),
//                     Image.asset(
//                       'assets/images/test.png',
//                     ),
//                   ],
//                 ),
//                 Container(
//                   alignment: const FractionalOffset(0.5, 0.95),
//                   child: TabPageSelector(
//                     controller: imagesController,
//                     selectedColor: Colors.grey,
//                     color: Colors.white,
//                   ),
//                 )
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   _buildProductTitleWidget() {
//     return Padding(
//       padding: EdgeInsets.symmetric(horizontal: 12.0),
//       child: Center(
//         child: Text(
//           //name,
//           category.name,
//           style: const TextStyle(fontSize: 16.0, color: Colors.black),
//         ),
//       ),
//     );
//   }

//   _buildPriceWidgets() {
//     return Padding(
//       padding: EdgeInsets.symmetric(horizontal: 12.0),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.start,
//         mainAxisSize: MainAxisSize.max,
//         children: <Widget>[
//           const Text(
//             "\${category.salePrice}",
//             style: TextStyle(fontSize: 16.0, color: Colors.black),
//           ),
//           const SizedBox(
//             width: 8.0,
//           ),
//           const Text(
//             "\${category.regularPrice}",
//             style: TextStyle(
//               fontSize: 12.0,
//               color: Colors.grey,
//               decoration: TextDecoration.lineThrough,
//             ),
//           ),
//           const SizedBox(
//             width: 8.0,
//           ),
//           Text(
//             "{category.discount}%",
//             style: TextStyle(
//               fontSize: 12.0,
//               color: Colors.blue[700],
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   _buildFurtherInfoWidget() {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 12.0),
//       child: Row(
//         children: <Widget>[
//           Icon(
//             Icons.local_offer,
//             color: Colors.grey[500],
//           ),
//           const SizedBox(
//             width: 12.0,
//           ),
//           Text(
//             "Tap to get further info",
//             style: TextStyle(
//               color: Colors.grey[500],
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   _buildSizeChartWidgets() {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 12.0),
//       child: Row(
//         mainAxisSize: MainAxisSize.max,
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: <Widget>[
//           Row(
//             children: <Widget>[
//               Icon(
//                 Icons.straighten,
//                 color: Colors.grey[600],
//               ),
//               const SizedBox(
//                 width: 12.0,
//               ),
//               Text(
//                 "Size",
//                 style: TextStyle(
//                   color: Colors.grey[600],
//                 ),
//               ),
//             ],
//           ),
//           Text(
//             "SIZE CHART",
//             style: TextStyle(
//               color: Colors.blue[400],
//               fontSize: 12.0,
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   _buildDetailsAndMaterialWidgets() {
//     TabController tabController = TabController(length: 2, vsync: this);
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       mainAxisSize: MainAxisSize.min,
//       children: <Widget>[
//         TabBar(
//           controller: tabController,
//           tabs: const <Widget>[
//             Tab(
//               child: Text(
//                 "DETAILS",
//                 style: TextStyle(
//                   color: Colors.black,
//                 ),
//               ),
//             ),
//             Tab(
//               child: Text(
//                 "MATERIAL & CARE",
//                 style: TextStyle(
//                   color: Colors.black,
//                 ),
//               ),
//             ),
//           ],
//         ),
//         Container(
//           padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 6.0),
//           height: 40.0,
//           child: TabBarView(
//             controller: tabController,
//             children: const <Widget>[
//               Text(
//                 "76% acrylic, 19% polyster, 5% metallic yarn Hand-wash cold",
//                 style: TextStyle(
//                   color: Colors.black,
//                 ),
//               ),
//               Text(
//                 "86% acrylic, 9% polyster, 1% metallic yarn Hand-wash cold",
//                 style: TextStyle(
//                   color: Colors.black,
//                 ),
//               )
//             ],
//           ),
//         ),
//       ],
//     );
//   }

//   _buildStyleNoteHeader() {
//     return Padding(
//       padding: const EdgeInsets.only(
//         left: 12.0,
//       ),
//       child: Text(
//         "STYLE NOTE",
//         style: TextStyle(
//           color: Colors.grey[800],
//         ),
//       ),
//     );
//   }

//   _buildStyleNoteData() {
//     return Padding(
//       padding: const EdgeInsets.only(
//         left: 12.0,
//       ),
//       child: Text(
//         "Boys dress",
//         style: TextStyle(
//           color: Colors.grey[600],
//         ),
//       ),
//     );
//   }

//   _buildMoreInfoHeader() {
//     return Padding(
//       padding: const EdgeInsets.only(
//         left: 12.0,
//       ),
//       child: Text(
//         "MORE INFO",
//         style: TextStyle(
//           color: Colors.grey[800],
//         ),
//       ),
//     );
//   }

//   _buildMoreInfoData() {
//     return Padding(
//       padding: const EdgeInsets.only(
//         left: 12.0,
//       ),
//       child: Text(
//         "Product Code: 410\nTax info: Applicable GST will be charged at the time of chekout",
//         style: TextStyle(
//           color: Colors.grey[600],
//         ),
//       ),
//     );
//   }

//   _buildBottomNavigationBar() {
//     return SizedBox(
//       width: MediaQuery.of(context).size.width,
//       height: 50.0,
//       child: Row(
//         mainAxisSize: MainAxisSize.max,
//         mainAxisAlignment: MainAxisAlignment.spaceAround,
//         children: <Widget>[
//           Flexible(
//             fit: FlexFit.tight,
//             flex: 1,
//             child: RaisedButton(
//               onPressed: () {},
//               color: Colors.grey,
//               child: Center(
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: const <Widget>[
//                     Icon(
//                       Icons.list,
//                       color: Colors.white,
//                     ),
//                     SizedBox(
//                       width: 4.0,
//                     ),
//                     Text(
//                       "SAVE",
//                       style: TextStyle(color: Colors.white),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//           Flexible(
//             flex: 2,
//             child: RaisedButton(
//               onPressed: () {},
//               color: Colors.greenAccent,
//               child: Center(
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: const <Widget>[
//                     Icon(
//                       Icons.card_travel,
//                       color: Colors.white,
//                     ),
//                     SizedBox(
//                       width: 4.0,
//                     ),
//                     Text(
//                       "ADD TO BAG",
//                       style: TextStyle(color: Colors.white),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';
import 'login.dart';
import 'package:se330_plushable_plushies/checkout1.dart';
import 'profile_page.dart';

class ProductDetailbichonPage extends StatefulWidget {
  @override
  _ProductDetailPageState createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailbichonPage>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.favorite,
              color: Colors.amber,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute<void>(builder: (_) => ProfilePage()),
              );
            },
          ),
          IconButton(
            icon: const Icon(
              Icons.shopping_cart,
              color: Colors.amber,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute<void>(builder: (_) => Checkout()),
              );
            },
          ),
          IconButton(
            icon: const Icon(
              Icons.login,
              color: Colors.amber,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute<void>(builder: (_) => LoginDemo()),
              );
            },
          ),
        ],
        leading: Builder(builder: (BuildContext context) {
          return IconButton(
              icon: const Icon(
                Icons.chevron_left,
                size: 40.0,
                color: Colors.black,
              ),
              onPressed: () {
                Navigator.of(context).pop();
              });
        }),
        backgroundColor: Colors.white,
        title: const Text(
          "Old McDonald",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: _buildProductDetailsPage(context),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  _buildProductDetailsPage(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return ListView(
      children: <Widget>[
        Container(
          padding: const EdgeInsets.all(4.0),
          child: Card(
            elevation: 4.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                _buildProductImagesWidgets(),
                _buildProductTitleWidget(),
                const SizedBox(height: 12.0),
                _buildPriceWidgets(),
                const SizedBox(height: 12.0),
                _buildDivider(screenSize),
                const SizedBox(height: 12.0),
                _buildDivider(screenSize),
                const SizedBox(height: 12.0),
                _buildQuantityWidget(),
                const SizedBox(
                  height: 12.0,
                ),
                _buildSizeChartWidgets(),
                const SizedBox(height: 12.0),
                _buildDetailsAndMaterialWidgets(),
                const SizedBox(height: 12.0),
                _buildDivider(screenSize),
                const SizedBox(height: 4.0),
                _buildDivider(screenSize),
                const SizedBox(height: 4.0),
              ],
            ),
          ),
        ),
      ],
    );
  }

  _buildDivider(Size screenSize) {
    return Column(
      children: <Widget>[
        Container(
          color: Colors.grey[600],
          width: screenSize.width,
          height: 0.25,
        ),
      ],
    );
  }

  _buildProductImagesWidgets() {
    TabController imagesController = TabController(length: 3, vsync: this);

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        height: 300.0,
        child: Center(
          child: DefaultTabController(
            length: 3,
            child: Stack(
              children: <Widget>[
                TabBarView(
                  controller: imagesController,
                  children: <Widget>[
                    Image.asset(
                      "assets/images/BichonFrise.jpg",
                    ),
                    Image.asset(
                      "assets/images/BichonFrise2.jpg",
                    ),
                    Image.asset(
                      "assets/images/BichonFrise3.jpg",
                    ),
                  ],
                ),
                Container(
                  alignment: const FractionalOffset(0.5, 0.95),
                  child: TabPageSelector(
                    controller: imagesController,
                    selectedColor: Colors.grey,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  _buildProductTitleWidget() {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 12.0),
      child: const Center(
        child: Text(
          //name,
          "Marshmallow Maggie",
          style: const TextStyle(fontSize: 16.0, color: Colors.black),
        ),
      ),
    );
  }

  _buildPriceWidgets() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          const Text(
            "\$11.24",
            style: const TextStyle(fontSize: 16.0, color: Colors.black),
          ),
          const SizedBox(
            width: 8.0,
          ),
        ],
      ),
    );
  }

  _buildQuantityWidget() {
    var dropdownValue;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
              Icon(
                Icons.numbers,
                color: Colors.grey[600],
              ),
              const SizedBox(
                width: 12.0,
              ),
              Text(
                "Quantity",
                style: TextStyle(
                  color: Colors.grey[600],
                ),
              ),
            ],
          ),
          const MyStatefulWidget2(),
          // Text(
          //   "SIZE CHART",
          //   style: TextStyle(
          //     color: Colors.blue[400],
          //     fontSize: 12.0,
          //   ),
          // ),
        ],
      ),
    );
  }

  _buildSizeChartWidgets() {
    var dropdownValue;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
              Icon(
                Icons.open_in_full,
                color: Colors.grey[600],
              ),
              const SizedBox(
                width: 12.0,
              ),
              Text(
                "Size",
                style: TextStyle(
                  color: Colors.grey[600],
                ),
              ),
            ],
          ),
          const MyStatefulWidget(),
          // Text(
          //   "SIZE CHART",
          //   style: TextStyle(
          //     color: Colors.blue[400],
          //     fontSize: 12.0,
          //   ),
          // ),
        ],
      ),
    );
  }

  _buildDetailsAndMaterialWidgets() {
    TabController tabController = new TabController(length: 2, vsync: this);
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          TabBar(
            controller: tabController,
            tabs: const <Widget>[
              Tab(
                child: Text(
                  "DETAILS",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  "Review",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
          Container(
            padding:
                const EdgeInsets.symmetric(horizontal: 12.0, vertical: 6.0),
            height: 150.0,
            child: TabBarView(
              controller: tabController,
              children: <Widget>[
                Text(
                  "Maggie is a sweet girl that will always love you, no matter what. Once you hold her, she'll never forget you.\n\n Fiber fill made from 100% recycled plastics\n Cloth labels made from 100% recycled materials\n Plastics pellets made from recycled plastics\n Hang tags are recyclable\n Your new best friend is built to last!",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Column(
                  children: [
                    Row(
                      children: const [
                        Text(
                          "Jenny Nguyen:  ",
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                        Icon(Icons.star),
                        Icon(Icons.star_outline),
                        Icon(Icons.star_outline),
                        Icon(Icons.star_outline),
                        Icon(Icons.star_outline)
                      ],
                    ),
                    Row(
                      children: [
                        Text("My cat tore the ear off almost immediately!")
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  _buildBottomNavigationBar() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 50.0,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Flexible(
            fit: FlexFit.tight,
            flex: 1,
            child: RaisedButton(
              onPressed: () {},
              color: Colors.grey,
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    Icon(
                      Icons.favorite,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 4.0,
                    ),
                    Text(
                      "FAVORITE",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Flexible(
            flex: 2,
            child: RaisedButton(
              onPressed: () {},
              color: Color.fromARGB(255, 225, 143, 149),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    Icon(
                      Icons.add_shopping_cart,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 4.0,
                    ),
                    Text("ADD TO CART", style: TextStyle(color: Colors.white)),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  String dropdownValue = '6 Inch';

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: const Icon(Icons.arrow_downward),
      elevation: 16,
      style: const TextStyle(color: Colors.deepPurple),
      underline: Container(
        height: 2,
        color: Colors.deepPurpleAccent,
      ),
      onChanged: (String? newValue) {
        setState(() {
          dropdownValue = newValue!;
        });
      },
      items: <String>['6 Inch', '8 Inch', '10 Inch']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}

class MyStatefulWidget2 extends StatefulWidget {
  const MyStatefulWidget2({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget2> createState() => _MyStatefulWidgetState2();
}

class _MyStatefulWidgetState2 extends State<MyStatefulWidget2> {
  String dropdownValue = 'One';

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: const Icon(Icons.arrow_downward),
      elevation: 16,
      style: const TextStyle(color: Colors.deepPurple),
      underline: Container(
        height: 2,
        color: Colors.deepPurpleAccent,
      ),
      onChanged: (String? newValue) {
        setState(() {
          dropdownValue = newValue!;
        });
      },
      items: <String>['One', 'Two', 'Three']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
