import 'package:flutter/material.dart';
import 'package:shop_app/models/Cart.dart';
import 'package:shop_app/models/Product.dart';
import 'package:shop_app/screens/dishes_details/dishes_details_screen.dart';

import '../../../size_config.dart';

class DishesList extends StatelessWidget {
  const DishesList({
    Key? key,
    @required this.cart,
    @required this.product,
  }) : super(key: key);

  final Cart? cart;
  final Product? product;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => DishesDetailsScreen()));
      },
      child: Row(
        children: [
          SizedBox(
              width: 64,
              height: 64,
              child: Image.asset("assets/images/Profile Image.png")),
          SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Плов по узбекски",
                style: TextStyle(color: Colors.black, fontSize: 16),
                maxLines: 2,
              ),
              Text(
                "Мария Погребняк @mariap",
                style: TextStyle(color: Colors.blue, fontSize: 12),
                maxLines: 1,
              ),
              SizedBox(height: 10),
              Row(children: [
                Padding(
                  padding: const EdgeInsets.only(right: 2.0, left: 2.0),
                  child: Icon(Icons.favorite_outlined),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 22.0, left: 2.0),
                  child: Text("150"),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 2.0, left: 2.0),
                  child: Icon(Icons.ios_share_outlined),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 2.0, left: 2.0),
                  child: Text("110"),
                ),
              ]),
            ],
          ),
          Spacer(),
          SizedBox(
            width: 88,
            child: AspectRatio(
              aspectRatio: 0.88,
              child: Container(
                padding: EdgeInsets.all(getProportionateScreenWidth(10)),
                decoration: BoxDecoration(
                  color: Color(0xFFF5F6F9),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Image.asset(cart!.product!.images![0]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
