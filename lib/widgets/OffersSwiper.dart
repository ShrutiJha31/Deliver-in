import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:delivering/data/OffersDisplay.dart';

class OffersSwiper extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<OffersSwiper> {
  List<Offer> offers = [
    Offer(url: "assets/images/offer1.png"),
    Offer(url: "assets/images/offer2.png"),
    Offer(url: "assets/images/offer3.png"),

  ];
  @override
  Widget build(BuildContext context) {
    return   Row(mainAxisAlignment: MainAxisAlignment.start, children: [
      Container(
        height: 500,
        width: 392,
        child: new Swiper(
          itemBuilder: (BuildContext context, int index) {
            return new Image.asset(
              offers[index].url,
              fit: BoxFit.fill,
            );
          },
          itemCount: offers.length,
          itemWidth: 600.0,
          layout: SwiperLayout.DEFAULT,
        ),
      )
    ]);
  }
}


