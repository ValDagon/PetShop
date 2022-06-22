import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class DishesImages extends StatefulWidget {
  const DishesImages({
    Key? key,
  }) : super(key: key);

  @override
  _DishesImagesState createState() => _DishesImagesState();
}

class _DishesImagesState extends State<DishesImages> {
  int selectedImage = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: getProportionateScreenWidth(238),
          child: AspectRatio(
            aspectRatio: 1,
            child: Hero(
              tag: "widget.product.id.toString(",
              child: Image.asset("assets/images/plov.png"),
            ),
          ),
        ),
        // SizedBox(height: getProportionateScreenWidth(20)),
      ],
    );
  }

  GestureDetector buildSmallProductPreview(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedImage = index;
        });
      },
      child: AnimatedContainer(
        duration: defaultDuration,
        margin: EdgeInsets.only(right: 15),
        padding: EdgeInsets.all(8),
        height: getProportionateScreenWidth(48),
        width: getProportionateScreenWidth(48),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
              color: kPrimaryColor.withOpacity(selectedImage == index ? 1 : 0)),
        ),
        child: Image.asset("assets/images/plov.png"),
      ),
    );
  }
}
