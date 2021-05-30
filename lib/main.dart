import 'package:delivering/data/OrdersData.dart';
import 'package:delivering/store/orders.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'screens/MainDisplay.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(

      title: 'Deliver\'in',
      home: ChangeNotifierProvider(
          create: (context) => OrderData(),

          child: Consumer<OrderData>(
              builder: (context, provider, child) =>
          SafeArea( child: MainDisplay())

          ))
    );
  }
}


