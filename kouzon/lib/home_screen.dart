import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stylish/constants.dart';
import 'package:stylish/models/Gezinti.dart';

import 'screens/home/components/categories.dart';
import 'screens/home/components/new_arrival_products.dart';
import 'screens/home/components/popular_products.dart';
import 'screens/home/components/search_form.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 62, 62, 62),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 62, 62, 62),
        leading: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset("assets/icons/menu.svg"),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset("assets/icons/kouzon.svg"),
            const SizedBox(width: defaultPadding / 2),
          ],
        ),
        actions: [
          IconButton(
            icon: SvgPicture.asset("assets/icons/shop.svg"),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics()),
        padding: const EdgeInsets.all(defaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Keşfet",
              style: Theme.of(context)
                  .textTheme
                  .headline4!
                  .copyWith(fontWeight: FontWeight.w500, color: Colors.white),
            ),
            const Text(
              "En yeni ürünleri hemen keşfet.",
              style: TextStyle(fontSize: 18,color: Colors.white),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: defaultPadding),
              child: SearchForm(),
            ),
            const Categories(),
            const NewArrivalProducts(),
            const PopularProducts(),
          ],
        ),
      ),
      bottomNavigationBar: altgezinti(),
    );
  }
  Widget altgezinti() {
    return Container(
      height: 70,
      /// gezintinin rengini ve üst çerçevesini oluşturup renk verdik.
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 62, 62, 62),
          border: Border(top: BorderSide(color: Color.fromARGB(255, 39, 39, 39).withOpacity(0.2)))),
      ///Iconları yerleştirip aralıklarını ayarladık.
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, top: 5),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(gezinti.length, (index) {
            return IconButton(
                icon: Icon(
                  gezinti[index]['icon'],
                  size: gezinti[index]['size'],
                  color: gezinti[index]['color'],
                ),
                onPressed: () {});
          })),
      ),
    );
  }
}
