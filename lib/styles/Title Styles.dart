import 'package:flutter/material.dart';

class MainTitle extends StatelessWidget {
  String str="";
  MainTitle({this.str});
  @override
  Widget build(BuildContext context) {
    return Text(str,
      style:TextStyle(
          fontSize: 30,
          color: Colors.black,
          fontWeight: FontWeight.w900,
          decoration:TextDecoration.none
      ),);
  }
}


class SubTitle extends StatelessWidget {
  String str="";
  SubTitle({this.str});
  @override
  Widget build(BuildContext context) {
    return Text(str,
      style:TextStyle(
          fontSize: 30,
          color: Colors.black12,
          fontWeight: FontWeight.w900,
          decoration:TextDecoration.none
      ),);
  }
}


class menutitle extends StatelessWidget {
  String str = "";

  menutitle({this.str});

  @override
  Widget build(BuildContext context) {
    return Text(str,
      textAlign: TextAlign.right,

      style: TextStyle(
        fontSize: 23,
        color: Colors.black,

        fontWeight: FontWeight.w900,
        decoration: TextDecoration.none,
      ),
    );
  }
}

class destitle extends StatelessWidget {
  String str = "";

  destitle({this.str});

  @override
  Widget build(BuildContext context) {
    return Text(str,
      textAlign: TextAlign.right,
      overflow: TextOverflow.clip,
      style: TextStyle(
        fontSize: 10,
        color: Colors.grey,
        fontWeight: FontWeight.w500,



        decoration: TextDecoration.none,
      ),
    );
  }
}

class ordertitle extends StatelessWidget {
  String str = "";

  ordertitle({this.str});

  @override
  Widget build(BuildContext context) {
    return Text(str,
      textAlign: TextAlign.right,
      overflow: TextOverflow.clip,
      style: TextStyle(
        fontSize: 15,
        color: Colors.black54,
        fontWeight: FontWeight.w700,



        decoration: TextDecoration.none,
      ),
    );
  }
}



