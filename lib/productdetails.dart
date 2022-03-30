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

class ProductDetailPage extends StatefulWidget {
  @override
  _ProductDetailPageState createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(
            Icons.chevron_left,
            size: 40.0,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        backgroundColor: Colors.white,
        title: const Text(
          "PRODUCT DETAIL",
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
        height: 250.0,
        child: Center(
          child: DefaultTabController(
            length: 3,
            child: Stack(
              children: <Widget>[
                TabBarView(
                  controller: imagesController,
                  children: <Widget>[
                    Image.network(
                      "https://assets.myntassets.com/h_240,q_90,w_180/v1/assets/images/1304671/2016/4/14/11460624898615-Hancock-Men-Shirts-8481460624898035-1_mini.jpg",
                    ),
                    Image.network(
                      "https://n1.sdlcdn.com/imgs/c/9/8/Lambency-Brown-Solid-Casual-Blazers-SDL781227769-1-1b660.jpg",
                    ),
                    Image.network(
                      "https://images-na.ssl-images-amazon.com/images/I/71O0zS0DT0L._UX342_.jpg",
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
          "Nakkana",
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
            "\$899",
            style: const TextStyle(fontSize: 16.0, color: Colors.black),
          ),
          const SizedBox(
            width: 8.0,
          ),
          const Text(
            "\$1299",
            style: TextStyle(
              fontSize: 12.0,
              color: Colors.grey,
              decoration: TextDecoration.lineThrough,
            ),
          ),
          const SizedBox(
            width: 8.0,
          ),
          Text(
            "30% Off",
            style: TextStyle(
              fontSize: 12.0,
              color: Colors.blue[700],
            ),
          ),
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
            height: 100.0,
            child: TabBarView(
              controller: tabController,
              children: <Widget>[
                Text(
                  "Description",
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
                        Icon(Icons.star),
                        Icon(Icons.star),
                        Icon(Icons.star),
                        Icon(Icons.star_outline)
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                            "I weawwy wiked the pwushie. I cuddwe with iwt evewy\n night!")
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
                      Icons.list,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 4.0,
                    ),
                    Text(
                      "SAVE",
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
              color: Colors.greenAccent,
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
                    Text(
                      "ADD TO CART",
                      style: TextStyle(color: Colors.white),
                    ),
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
