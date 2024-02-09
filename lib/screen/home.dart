import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fruithub/screen/Basket.dart';
import 'package:palette_generator/palette_generator.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        toolbarHeight: 80,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              Icons.menu_rounded,
              size: 24,
              color: Colors.black,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Basket(),
                  ),
                );
              },
              child: Column(
                children: [
                  Icon(
                    Icons.shopping_bag_outlined,
                    color: Color(0xffe16a6a),
                    size: 24,
                  ),
                  Text(
                    "My basket",
                    style: TextStyle(
                      fontSize: 9,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 138,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Hello, What fruit salad \ncombo do you want today?",
                          style: TextStyle(
                            letterSpacing: 0.7,
                            fontSize: 20,
                            fontWeight: FontWeight.w900,
                          ),
                        ),

                        // RichText(
                        //   text: TextSpan(
                        //     children: [
                        //       TextSpan(
                        //         text: "Hello Tony",
                        //         style: TextStyle(
                        //           fontSize: 20,
                        //           fontWeight: FontWeight.w100,
                        //           letterSpacing: 0.7,
                        //         ),
                        //       ),
                        //       TextSpan(
                        //         text:
                        //             ", What fruit salad \ncombo do you want today?",
                        //         style: TextStyle(
                        //           letterSpacing: 0.7,
                        //           fontSize: 20,
                        //           fontWeight: FontWeight.w600,
                        //         ),
                        //       ),
                        //     ],
                        //   ),
                        // ),
                        searchBox()
                        // Row(
                        //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //   children: [
                        //     searchBox(),
                        //     Icon(
                        //       Icons.filter_list,
                        //       color: Colors.black,
                        //       size: 27,
                        //     )
                        //   ],
                        // ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 275,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    child: Text(
                      "Recommended Combo",
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    width: double.infinity,
                    height: 240,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        recomendedList(),
                        recomendedList(),
                        recomendedList(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            MenuSections(),
            // Container(
            //   height: 210,
            //   width: double.infinity,
            //   padding: EdgeInsets.symmetric(
            //     horizontal: 24,
            //   ),
            //   color: Colors.blue,
            //   child: Column(
            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     crossAxisAlignment: CrossAxisAlignment.start,
            //     children: [
            //       Row(
            //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //         children: [
            //           Text(
            //             "Hottest",
            //             style: TextStyle(
            //                 fontSize: 20,
            //                 fontWeight: FontWeight.w500,
            //                 color: Color(0xff938DB5)),
            //           ),
            //           Text(
            //             "Popular",
            //             style: TextStyle(
            //                 fontSize: 20,
            //                 fontWeight: FontWeight.w500,
            //                 color: Color(0xff938DB5)),
            //           ),
            //           Text(
            //             "New Combo",
            //             style: TextStyle(
            //                 fontSize: 20,
            //                 fontWeight: FontWeight.w500,
            //                 color: Color(0xff938DB5)),
            //           ),
            //           Text(
            //             "Top",
            //             style: TextStyle(
            //                 fontSize: 20,
            //                 fontWeight: FontWeight.w500,
            //                 color: Color(0xff938DB5)),
            //           ),
            //         ],
            //       ),
            //       Container(
            //         height: 100,
            //         width: 100,
            //         color: Colors.red,
            //       ),
            //     ],
            //   ),
            // )
          ],
        ),
      ),
    );
  }

  Widget searchBox() {
    return Container(
      height: 56,
      padding: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0xffF3F1F1),
      ),
      child: const TextField(
        style: TextStyle(
          color: Color.fromARGB(255, 136, 136, 136),
        ),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(4),
          prefixIcon: Icon(
            Icons.search,
            color: Color.fromARGB(255, 136, 136, 136),
            size: 20,
          ),
          prefixIconConstraints: BoxConstraints(
            maxHeight: 20,
            minWidth: 25,
          ),
          border: InputBorder.none,
          hintText: 'Search for fruit salad combos',
          hintStyle: TextStyle(
            color: Color.fromARGB(255, 136, 136, 136),
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}

class recomendedList extends StatefulWidget {
  const recomendedList({super.key});

  @override
  State<recomendedList> createState() => _recomendedListState();
}

class _recomendedListState extends State<recomendedList> {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
        height: 183,
        width: 170,
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
          color: Colors.white, // You can also add color if needed
          borderRadius:
              BorderRadius.circular(10), // Adjust the radius as needed
        ),
        child:
            // Stack(
            //   children: [
            Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              "assets/2.png",
              height: 120,
              width: 120,
            ),
            Container(
              // decoration: BoxDecoration(color: Colors.yellow),
              height: 52,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Honey lime Combo",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff27214D),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Rp 30.000",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Color(0xffe16b6b),
                        ),
                      ),
                      Icon(
                        Icons.add_circle_outline,
                        size: 20,
                        color: Color(0xffe16b6b),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        )
        // ],
        // ),
        );
  }
}

class MenuSections extends StatefulWidget {
  @override
  _MenuSectionsState createState() => _MenuSectionsState();
}

class _MenuSectionsState extends State<MenuSections> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 230,
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildMenuItem(0, "Hottest"),
              _buildMenuItem(1, "Popular"),
              _buildMenuItem(2, "New Combo"),
              _buildMenuItem(3, "Top"),
            ],
          ),
          _selectedIndex != -1
              ? _buildSelectedWidget(_selectedIndex)
              : SizedBox(), // If no item selected, show an empty SizedBox
        ],
      ),
    );
  }

  Widget _buildMenuItem(
    int index,
    String text,
  ) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedIndex = index;
        });
      },
      child: Text(
        text,
        style: TextStyle(
          fontSize: _selectedIndex == index ? 24 : 20,
          fontWeight: FontWeight.w500,
          color: _selectedIndex == index ? Colors.black : Color(0xff938DB5),
        ),
      ),
    );
  }

  Widget _buildSelectedWidget(int index) {
    switch (index) {
      case 0:
        return Container(
          width: double.infinity,
          height: 175,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              MenuItems(),
              MenuItems(),
              MenuItems(),
            ],
          ),
        );
      case 1:
        return SizedBox();
      case 2:
        return SizedBox();
      case 3:
        return SizedBox();
      default:
        return SizedBox(); // Return an empty SizedBox if index is invalid
    }
  }
}

class MenuItems extends StatelessWidget {
  const MenuItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
      height: 170,
      width: 150,
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
        color: Colors.white, // You can also add color if needed
        borderRadius: BorderRadius.circular(10), // Adjust the radius as needed
      ),
      child:
          // Stack(
          //   children: [
          Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            "assets/2.png",
            height: 80,
            width: 80,
          ),
          Container(
            // decoration: BoxDecoration(color: Colors.yellow),
            height: 52,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Honey lime Combo",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff27214D),
                      overflow: TextOverflow.ellipsis),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Rp 30.000",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Color(0xffe16b6b),
                      ),
                    ),
                    Icon(
                      Icons.add_circle_outline,
                      size: 17,
                      color: Color(0xffe16b6b),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
