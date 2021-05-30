import 'dart:ui';

import 'package:delivering/data/OrdersData.dart';
import 'package:delivering/screens/MainDisplay.dart';
import 'package:delivering/store/orders.dart';
import 'package:delivering/styles/Title%20Styles.dart';
import 'package:delivering/widgets/Orders.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

class Orders extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return ChangeNotifierProvider(
        create: (context) => OrderData(),
      child: Consumer<OrderData>(
        builder: (context, provider, child) =>SafeArea(
          child: Scaffold(
              body: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                FlatButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MainDisplay()));
                    },
                    color: Colors.white,
                    child: Row(
                      children: [
                        Icon(
                          Icons.arrow_back_ios_sharp,
                          color: Colors.black38,
                          size: 17,
                        ),
                        SizedBox(width: 5),
                        Text(
                          "Menu",
                          style: TextStyle(
                              color: Colors.black38,
                              fontSize: 20,
                              fontWeight: FontWeight.w700),
                        )
                      ],
                    )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(height: 80),
                    MainTitle(str: "Cart"),
                    SubTitle(str: "Orders"),
                    SubTitle(str: "Info"),
                    SizedBox(height: 40)
                  ],
                ),
               OrdersMenu(),


                SubTitle(str: "Delivery is Free"),
                SizedBox(height: 50),
                Row(
                  textBaseline: TextBaseline.ideographic,
                  verticalDirection: VerticalDirection.up,
                  children: [
                    SizedBox(width: 30),
                    ordertitle(str: "Value:"),
                    SizedBox(width: 20),
                    MainTitle(str: Order().totalcost.toString()+" usd")
                  ],
                ),

                SizedBox(height: 40)
              ],
            ),
          )),
    )));
  }
}
