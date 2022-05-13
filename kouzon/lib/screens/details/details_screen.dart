import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stylish/constants.dart';
import 'package:stylish/models/Product.dart';

import 'components/color_dot.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key, required this.product}) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.bgColor,
      appBar: AppBar(
        leading: const BackButton(color: Colors.white),
        actions: [
          IconButton(
            onPressed: () {},
            icon: CircleAvatar(
              backgroundColor: Color.fromARGB(255, 39, 166, 89),
              child: SvgPicture.asset(
                "assets/icons/star.svg",
                height: 20,
              ),
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Image.asset(
            product.image,
            height: MediaQuery.of(context).size.height * 0.4,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: defaultPadding * 1.5),
          Expanded(
            child: Container(
              padding: const EdgeInsets.fromLTRB(defaultPadding,
                  defaultPadding * 2, defaultPadding, defaultPadding),
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 62, 62, 62),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(defaultBorderRadius * 3),
                  topRight: Radius.circular(defaultBorderRadius * 3),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          product.title,
                          style: Theme.of(context).textTheme.headline6!.copyWith(
                            color: Colors.white
                          ),
                        ),
                      ),
                      const SizedBox(width: defaultPadding),
                      Text(
                        product.price.toString() + "TL",
                        style: Theme.of(context).textTheme.headline6!.copyWith(
                          color: Colors.white
                        ),
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: defaultPadding),
                    child: Text(
                      "Siz sipariş verdiğiniz zaman üretilir, paketlenir ve adresinize gönderilir.",

                    ),
                  ),
                  Text(
                    "Renkler",
                    style: Theme.of(context).textTheme.subtitle2!.copyWith(
                      color: Colors.white
                    ),
                  ),
                  const SizedBox(height: defaultPadding / 2),
                  Row(
                    children: const [
                      ColorDot(
                        color: Colors.white,
                        isActive: true,
                      ),
                      ColorDot(
                        color: Colors.black,
                        isActive: false,
                      ),
                      ColorDot(
                        color: Colors.red,
                        isActive: false,
                      ),
                      ColorDot(
                        color: Colors.blue,
                        isActive: false,
                      ),
                      ColorDot(
                        color: Colors.orange,
                        isActive: false,
                      ),
                    ],
                  ),
                  const SizedBox(height: defaultPadding * 2),
                  Center(
                    child: SizedBox(
                      width: 200,
                      height: 48,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            primary: primaryColor,
                            shape: const StadiumBorder()),
                        child: const Text("Sepete Ekle"),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
