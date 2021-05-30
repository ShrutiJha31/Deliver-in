import 'package:delivering/styles/Title%20Styles.dart';
import 'package:delivering/widgets/Menu.dart';
import 'package:delivering/widgets/Orders.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Orders.dart';

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController(initialPage: 0);
    return Container(
      child: PageView(
        scrollDirection: Axis.horizontal,
        controller: controller,
        children: <Widget>[
          Column(
            children: [
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MainTitle(str: "Pizza"),
                  SubTitle(str: "Sushi"),
                  SubTitle(str: "Drinks")
                ],
              ),
              SizedBox(height: 20),
              PizzaMenu(),
            ],
          ),
          Column(
            children: [
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MainTitle(str: "Sushi"),
                  SubTitle(str: "Drinks"),
                  SubTitle(str: "Pizza")
                ],
              ),
              SizedBox(height: 20),
              SushiMenu(),
            ],
          ),
          Column(
            children: [
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MainTitle(str: "Drinks"),
                  SubTitle(str: "Pizza"),
                  SubTitle(str: "Sushi")
                ],
              ),
              SizedBox(height: 20),
              DrinksMenu(),
            ],
          ),
          Orders()
        ],
      ),
      width: 400,
      height: 2000,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40), topRight: Radius.circular(40))),

    );
  }
}
