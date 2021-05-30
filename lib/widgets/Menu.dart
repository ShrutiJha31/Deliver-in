import 'package:delivering/data/MenuList.dart';
import 'package:delivering/data/OrdersData.dart';
import "package:flutter/material.dart";
import 'package:provider/provider.dart';
import "MenuList.dart";

class PizzaMenu extends StatefulWidget {
  @override
  _PizzaMenuState createState() => _PizzaMenuState();
}

class _PizzaMenuState extends State<PizzaMenu> {
  MenuList menu = MenuList();
  @override
  Widget build(BuildContext context) {
    return
      Expanded(
         flex: 5,
        child: ListView.builder(itemBuilder: (context,index){
          return  ChangeNotifierProvider(
              create: (context) => OrderData(),child:MenuDisplay(
              title:menu.pizza[index].title,
              url:menu.pizza[index].url,
              description: menu.pizza[index].description,
              weight:menu.pizza[index].weight,
               quantity: menu.pizza[index].quantity,
              quantityunit: menu.pizza[index].quantityunit,
              cost: menu.pizza[index].cost,
          ));
        },
        itemCount: menu.pizza.length,),
      );
  }
}
class SushiMenu extends StatefulWidget {
  @override
  _SushiMenuState createState() => _SushiMenuState();
}

class _SushiMenuState extends State<SushiMenu> {
  MenuList menu= MenuList();
  @override
  Widget build(BuildContext context) {
    return   Expanded(
      flex: 5,
      child: ListView.builder(itemBuilder: (context,index){
        return MenuDisplay(
          title:menu.sushi[index].title,
          url:menu.sushi[index].url,
          description: menu.sushi[index].description,
          weight:menu.sushi[index].weight,
          quantity: menu.sushi[index].quantity,
          quantityunit: menu.sushi[index].quantityunit,
          cost: menu.sushi[index].cost,
        );
      },
        itemCount: menu.sushi.length,),
    );;
  }
}
class DrinksMenu extends StatefulWidget {
  @override
  _DrinksMenuState createState() => _DrinksMenuState();
}

class _DrinksMenuState extends State<DrinksMenu> {
  MenuList menu=MenuList();
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 5,
      child: ListView.builder(itemBuilder: (context,index){
        return MenuDisplay(
          title:menu.drinks[index].title,
          url:menu.drinks[index].url,
          description: menu.drinks[index].description,
          weight:menu.drinks[index].weight,
          quantity: menu.drinks[index].quantity,
          quantityunit: menu.drinks[index].quantityunit,
          cost: menu.drinks[index].cost,
        );
      },
        itemCount: menu.drinks.length,),
    );;;
  }
}
