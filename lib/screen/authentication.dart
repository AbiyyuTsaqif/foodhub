import 'package:flutter/material.dart';
import 'package:foodhub/screen/home.dart';

class authentication extends StatefulWidget {
  const authentication({super.key});

  @override
  State<authentication> createState() => _authenticationState();
}

class _authenticationState extends State<authentication> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE16B6B),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
      ),
      body: Stack(
        children: [
          Container(
            height: 400,
            child: Center(
              child: Image.asset(
                'assets/1.png',
                width: 280,
                height: 400.67340087890625,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 70, horizontal: 23),
              height: 375,
              width: double.infinity,
              decoration: BoxDecoration(color: Colors.white),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 100,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "What is your firstname?",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        searchBox()
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => home(),
                        ),
                      );
                    },
                    child: Container(
                      width: double.infinity,
                      height: 56,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xffe16b6b),
                      ),
                      child: Center(
                        child: Text(
                          "Let’s Continue",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
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
          prefixIconConstraints: BoxConstraints(
            maxHeight: 20,
            minWidth: 25,
          ),
          border: InputBorder.none,
          hintText: 'Tony',
          hintStyle: TextStyle(
            color: Color.fromARGB(255, 136, 136, 136),
          ),
        ),
      ),
    );
  }
}
