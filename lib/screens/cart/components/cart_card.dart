import 'package:flutter/material.dart';
import 'package:shop_app/models/Cart.dart';
import 'package:shop_app/components/rounded_icon_btn.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class CartCard extends StatelessWidget {
  const CartCard({
    Key? key,
    @required this.cart,
  }) : super(key: key);

  final Cart? cart;

  @override
  Widget build(BuildContext context) {
    var counter = 0;
    return Row(
      children: [
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
        SizedBox(width: 20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              cart!.product!.title!,
              style: TextStyle(color: Colors.black, fontSize: 16),
              maxLines: 2,
            ),
            Text(
              "300 грамм",
              style: TextStyle(color: Colors.grey, fontSize: 12),
              maxLines: 2,
            ),
            SizedBox(height: 10),
            Text.rich(
              TextSpan(
                text: "${cart!.product!.price}",
                style: TextStyle(
                    fontWeight: FontWeight.w600, color: kPrimaryColor),
                children: [
                  TextSpan(
                      text: " руб",
                      style: Theme.of(context).textTheme.bodyText1),
                ],
              ),
            ),
          ],
        ),
        // ...List.generate(
        //   product.colors.length,
        //   (index) => ColorDot(
        //     color: product.colors[index],
        //     isSelected: index == selectedColor,
        //   ),
        // ),
        Spacer(),
        RoundedIconBtn(
          icon: Icons.remove,
          press: () {},
        ),
        Text(
          "$counter",
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
        SizedBox(width: getProportionateScreenWidth(20)),
        RoundedIconBtn(
          icon: Icons.add,
          showShadow: true,
          press: () {
            print(counter++);
          },
        ),
      ],
    );
  }
}
