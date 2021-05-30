import 'package:delivering/data/OrdersData.dart';
import 'package:delivering/store/orders.dart';
import 'package:flutter/material.dart';

import 'package:delivering/data/MenuList.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

import 'OrderList.dart';

class OrdersMenu extends StatefulWidget {
  @override
  _OrdersState createState() => _OrdersState();
}

class _OrdersState extends State<OrdersMenu> {
  MenuList menu = MenuList();
  @override
  Widget build(BuildContext context) {



    return  Consumer<OrderData>(
        builder:(context,order,child){
      return Expanded(
            flex: 5,
            child: ListView.builder(
              itemBuilder: (context, index) {

                return OrderList(
                  title: order.orders[index].title,
                  url: order.orders[index].url,
                  cost:order.orders[index].cost,

                );
              },
              itemCount: order.orders.length,
            )
        );}
    )
    ;
  }
}
