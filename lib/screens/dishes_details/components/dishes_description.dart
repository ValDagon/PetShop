import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class DishesDescription extends StatelessWidget {
  const DishesDescription({
    Key? key,
    this.pressOnSeeMore,
  }) : super(key: key);

  final GestureTapCallback? pressOnSeeMore;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(20)),
              child: Text(
                "Плов по-узбекски",
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
            Icon(
              Icons.bookmark,
              color: true ? Color(0xFFFF4848) : Color(0xFFDBDEE4),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.only(left: 20, right: 20, bottom: 20, top: 5),
          child: Text("На 100 г: белок - 15г, жир - 3г, углеводы - 4г"),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: getProportionateScreenWidth(20),
            right: getProportionateScreenWidth(64),
          ),
          child: Text(
            "Описание блюда",
            maxLines: 3,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(20),
            vertical: 10,
          ),
          child: GestureDetector(
            onTap: () {},
            child: Row(
              children: [
                Text(
                  "Узнать больше",
                  style: TextStyle(
                      fontWeight: FontWeight.w600, color: kPrimaryColor),
                ),
                SizedBox(width: 5),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 12,
                  color: kPrimaryColor,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
