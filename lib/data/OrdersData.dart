
import 'package:flutter/foundation.dart';
import 'MenuData.dart';

class OrderData extends ChangeNotifier{
  List<Menu> orders=[];

  void addOrder(String title,String url,int cost)
  {
    orders.add(Menu(title:title,url:url,cost:cost));
    print(orders.length);
    notifyListeners();
  }
}