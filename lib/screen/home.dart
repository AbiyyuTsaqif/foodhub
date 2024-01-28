import 'package:flutter/material.dart';

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
            Column(
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
            )
          ],
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 20),
        child: Column(
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
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "Hello Tony",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w100,
                                  letterSpacing: 0.7,
                                ),
                              ),
                              TextSpan(
                                text:
                                    ", What fruit salad \ncombo do you want today?",
                                style: TextStyle(
                                  letterSpacing: 0.7,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
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
              height: 240,
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
                  )
                ],
              ),
            )
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
