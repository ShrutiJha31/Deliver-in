import 'dart:convert';

import 'package:delivering/data/MenuData.dart';
import 'package:mobx/mobx.dart';

// Include generated file
part 'orders.g.dart';

// This is the class used by rest of your codebase
class Order = _Order with _$Order;

// The store-class
abstract class _Order with Store {
  @observable
  int totalcost = 0;

  @observable
  ObservableList<Menu> orders = ObservableList<Menu>();

  @action
  void addOrder(String url,String title,int cost) {
     orders.add(Menu(url:url,title:title,cost: cost));
  }

  @action
  void removeOrder(Menu order) {
    orders.remove(order);
  }



}