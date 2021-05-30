import 'package:delivering/store/orders.dart';
import 'package:delivering/styles/Title%20Styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class OrderList extends StatelessWidget {
  String title;
  String url;
  int cost;

  OrderList({this.title,this.url,this.cost});
  @override
  Widget build(BuildContext context) {
    final orders=Order();
    return Column(
      children: [
        ListTile(
          leading:Image.asset(url,height:70,width: 70,),
          title: ordertitle(str:title),
          subtitle:ordertitle(str:cost.toString()+" usd"),
          trailing: Icon(Icons.dangerous),
        ),



      ],
    );
  }
}
