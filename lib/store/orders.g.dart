// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'orders.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Order on _Order, Store {
  final _$totalcostAtom = Atom(name: '_Order.totalcost');

  @override
  int get totalcost {
    _$totalcostAtom.reportRead();
    return super.totalcost;
  }

  @override
  set totalcost(int value) {
    _$totalcostAtom.reportWrite(value, super.totalcost, () {
      super.totalcost = value;
    });
  }

  final _$ordersAtom = Atom(name: '_Order.orders');

  @override
  ObservableList<Menu> get orders {
    _$ordersAtom.reportRead();
    return super.orders;
  }

  @override
  set orders(ObservableList<Menu> value) {
    _$ordersAtom.reportWrite(value, super.orders, () {
      super.orders = value;
    });
  }

  final _$_OrderActionController = ActionController(name: '_Order');

  @override
  void addOrder(String url, String title, int cost) {
    final _$actionInfo =
        _$_OrderActionController.startAction(name: '_Order.addOrder');
    try {
      return super.addOrder(url, title, cost);
    } finally {
      _$_OrderActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeOrder(Menu order) {
    final _$actionInfo =
        _$_OrderActionController.startAction(name: '_Order.removeOrder');
    try {
      return super.removeOrder(order);
    } finally {
      _$_OrderActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
totalcost: ${totalcost},
orders: ${orders}
    ''';
  }
}
