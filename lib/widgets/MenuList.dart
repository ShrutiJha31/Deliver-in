import 'package:delivering/data/OrdersData.dart';
import 'package:delivering/store/orders.dart';
import 'package:delivering/styles/Title%20Styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';


class MenuDisplay extends StatelessWidget {
  final String title;
  final String url;
  final String description;
  final int weight;
  final int quantity;
  final String quantityunit;
  final int cost;
  final String currency;
  MenuDisplay(
      {this.title,
      this.url,
      this.description,
      this.weight,
      this.quantity,
      this.quantityunit,
      this.cost,
      this.currency});
  @override
  Widget build(BuildContext context) {

    return ChangeNotifierProvider(
        create: (context) => OrderData(),

        child: Consumer<OrderData>(
            builder: (context, provider, child) =>Card(
      margin: EdgeInsets.all(40),
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              url,
              width: double.infinity,
              cacheHeight: 160,
              cacheWidth: 312,

            ),
          ),
          SizedBox(height: 30),
          Row(
            children: [
              SizedBox(width: 20),
              menutitle(str: title),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(width: 20),
              destitle(str: description),
            ],
          ),
          SizedBox(height: 30),
          Row(children: [
            SizedBox(width: 20),
            destitle(str: weight.toString()),
            SizedBox(width: 2),
            destitle(str: "grams"),
            SizedBox(width: 6),
            destitle(str: quantity.toString()),
            SizedBox(width: 2),
            destitle(str: quantityunit),
            SizedBox(width: 70),
            // ignore: deprecated_member_use

             FlatButton(
                  onPressed: () {
                    Provider.of<OrderData>(context,listen: false).addOrder(title,url,cost);
                    },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  textColor: Colors.white,
                  color: Colors.black,
                  child: Row(
                    children: [
                      Text(cost.toString()),
                      SizedBox(width: 10),
                      Text("usd")
                    ],
                  )),

          ]),
          SizedBox(height: 30)
        ],
      ),
    )));
  }
}
