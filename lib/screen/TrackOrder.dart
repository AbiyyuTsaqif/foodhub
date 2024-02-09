import 'package:flutter/material.dart';

class TrackOrder extends StatefulWidget {
  const TrackOrder({super.key});

  @override
  State<TrackOrder> createState() => _TrackOrderState();
}

class _TrackOrderState extends State<TrackOrder> {
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
              "Track Order",
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
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            orderStatus(
              image: "assets/icon/1.png",
              title: "Order Taken",
              kode: 0xffC4FFBF,
            ),
            orderStatus(
              image: "assets/icon/2.png",
              title: "Order is being prepared",
              kode: 0xfff1eff6,
            ),
            orderStatus(
              image: "assets/icon/3.png",
              title: "Order Is Being Delivered",
              kode: 0xfffef0f0,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image.asset(
                "assets/icon/4.png",
                width: double.infinity,
                height: 128,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 40),
              height: 70,
              width: double.infinity,
              decoration: BoxDecoration(color: Colors.white),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 70,
                    width: 250,
                    child: Row(
                      children: [
                        Container(
                          width: 65,
                          height: 64,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xfff0fef8),
                          ),
                          child: Center(
                            child: Icon(
                              Icons.check_circle,
                              color: Colors.green,
                              size: 50,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Order Received",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Icon(
                    Icons.check_circle,
                    size: 30,
                    color: Colors.green,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class orderStatus extends StatelessWidget {
  String title;
  String image;
  var kode;

  orderStatus({
    Key? key,
    required this.image,
    required this.title,
    required this.kode,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 40),
      height: 70,
      width: double.infinity,
      decoration: BoxDecoration(color: Colors.white),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 70,
            width: 250,
            child: Row(
              children: [
                Container(
                  width: 65,
                  height: 64,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(kode),
                  ),
                  child: Center(
                    child: Image.asset(
                      image,
                      width: 50,
                      height: 50,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ),
          Icon(
            Icons.check_circle,
            size: 30,
            color: Colors.green,
          )
        ],
      ),
    );
  }
}
