import 'package:delivering/screens/Menu.dart';
import 'package:delivering/screens/Orders.dart';
import 'package:delivering/store/orders.dart';
import 'package:delivering/widgets/OffersSwiper.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class MainDisplay extends StatefulWidget {
  @override
  _OffersDisplayState createState() => _OffersDisplayState();
}

class _OffersDisplayState extends State<MainDisplay> {

  @override
  Widget build(BuildContext context) {
    return
      SafeArea(
      child: Scaffold(
         floatingActionButton: FloatingActionButton(
           backgroundColor: Colors.white,
           onPressed: (){
             Navigator.push(context, MaterialPageRoute(builder: (context)=>Orders()));

           },
           child:Icon(Icons.shopping_cart_outlined,
           color: Colors.black,)
         ),
        body:SingleChildScrollView(

          child: Column(

              children: [
                OffersSwiper(),
                Menu()



              ]
          ),
        ) ,
      ),
    );

  }
}

