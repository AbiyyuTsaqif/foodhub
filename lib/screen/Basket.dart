import 'package:flutter/material.dart';
import 'package:fruithub/screen/Order.dart';

class Basket extends StatefulWidget {
  const Basket({super.key});

  @override
  State<Basket> createState() => _BasketState();
}

class _BasketState extends State<Basket> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 100,
        backgroundColor: Color(0xffE16B6B),
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back_ios_new_rounded,
                size: 30,
                color: Colors.white,
              ),
            ),
            Text(
              "My Basket",
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              width: 30,
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.only(
              right: 20,
              left: 20,
              top: 20,
            ),
            child: Column(
              children: [
                basketList(),
                basketList(),
                basketList(),
                basketList(),
                basketList(),
                basketList(),
                basketList(),
                basketList(),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 25),
              height: 170,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 60,
                    width: 130,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Total",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          "Rp. 60,000",
                          style: TextStyle(
                            fontSize: 24,
                            color: Color.fromARGB(255, 33, 25, 92),
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      showModalBottomSheet<void>(
                        backgroundColor: Colors.transparent,
                        context: context,
                        builder: (BuildContext context) {
                          return Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 50),
                            height: 406,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(24),
                                topRight: Radius.circular(24),
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 90,
                                  width: double.infinity,
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Delivery address",
                                        style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                      searchBox(
                                          "10th avenue, Lekki, Lagos State"),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 90,
                                  width: double.infinity,
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Number we can call",
                                        style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                      searchBox("09090605708"),
                                    ],
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => Order(),
                                          ),
                                        );
                                      },
                                      child: Container(
                                        height: 56,
                                        width: 125,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            color: Color(0xffE16B6B),
                                            width: 1,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        child: Center(
                                          child: Text("Pay on delivery",
                                              style: TextStyle(
                                                fontSize: 16,
                                                color: Color(0xffE16B6B),
                                                fontWeight: FontWeight.w500,
                                              )),
                                        ),
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => Order(),
                                          ),
                                        );
                                      },
                                      child: Container(
                                        height: 56,
                                        width: 125,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            color: Color(0xffE16B6B),
                                            width: 1,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        child: Center(
                                          child: Text("Pay with card",
                                              style: TextStyle(
                                                fontSize: 16,
                                                color: Color(0xffE16B6B),
                                                fontWeight: FontWeight.w500,
                                              )),
                                        ),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          );
                        },
                      );
                    },
                    child: Container(
                      width: 199,
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xffe16b6b),
                      ),
                      child: Center(
                        child: Text(
                          "Checkout",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget searchBox(String texthint) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.grey, width: 1),
      ),
      child: TextField(
        style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(4),
          border: InputBorder.none,
          hintText: texthint,
          hintStyle: TextStyle(
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}

class basketList extends StatelessWidget {
  const basketList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      height: 70,
      width: double.infinity,
      decoration: BoxDecoration(color: Colors.white),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 70,
            width: 200,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 65,
                  height: 64,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xfffffaeb),
                  ),
                  child: Center(
                    child: Image.asset(
                      "assets/2.png",
                      width: 40,
                      height: 40,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Quinoa fruit salad",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Text("2packs",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                        ))
                  ],
                )
              ],
            ),
          ),
          Text(
            "Rp. 20,000",
            style: TextStyle(
              fontSize: 16,
              color: Color.fromARGB(255, 33, 25, 92),
              fontWeight: FontWeight.w500,
            ),
          )
        ],
      ),
    );
  }
}
