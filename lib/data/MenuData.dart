class Menu {
  String title;
  String url;
  String description;
  int weight;
  int quantity;
  String quantityunit;
  int cost;
  String currency;
  int purchasedquant=0;

  Menu({this.title,this.url,this.description,this.weight,this.quantity,this.quantityunit,this.cost, this.currency="usd"});



    Menu.fromJson(Map<String, dynamic> json) {

    title = json['title'];
    url = json['url'];
    cost=json['cost'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['title'] = this.title;
    data['url'] = this.url;
    data['cost'] = this.cost;
    return data;
  }

  @override
  String toString() {
    return '"orders" : { "title": $title, "url": $url, "cost": $cost}';
  }

}