import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:shop_app/components/coustom_bottom_nav_bar.dart';
import 'package:shop_app/screens/products_type/products_type_list.dart';

class ProductsType extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      backgroundColor: Color(0xFFFCFAF8),
      body: ListView(
        children: <Widget>[
          SizedBox(height: 15.0),
          Container(
              padding: EdgeInsets.only(right: 15.0),
              width: MediaQuery.of(context).size.width - 30.0,
              height: MediaQuery.of(context).size.height - 50.0,
              child: GridView.count(
                crossAxisCount: 2,
                primary: false,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 15.0,
                childAspectRatio: 0.8,
                children: <Widget>[
                  _buildCard('(43)', 'Овощи', 'assets/images/vegetables.png',
                      false, context),
                  _buildCard(
                      '(32)', 'Хлеб', 'assets/images/bread.png', true, context),
                  _buildCard('(21)', 'Фрукты', 'assets/images/fruits.png',
                      false, context),
                  _buildCard('(12)', 'Лапша', 'assets/images/lapsha.png', false,
                      context)
                ],
              )),
          SizedBox(height: 15.0)
        ],
      ),
      bottomNavigationBar: CustomBottomNavBar(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      title: Center(
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Text(
                "Категории продуктов",
                style: TextStyle(color: Colors.black87),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Icon(
                Icons.search_rounded,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCard(
      String name, String price, String imgProductPath, bool added, context) {
    return Padding(
        padding: EdgeInsets.only(top: 5.0, bottom: 5.0, left: 20.0, right: 5.0),
        child: InkWell(
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => ProductsTypeList()));
            },
            child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 3.0,
                          blurRadius: 5.0)
                    ],
                    color: Colors.white),
                child: Column(children: [
                  Padding(
                      padding: EdgeInsets.all(0.0),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [])),
                  Hero(
                      tag: imgProductPath,
                      child: Container(
                          height: 150.0,
                          width: 155.0,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(imgProductPath),
                                  fit: BoxFit.contain)))),
                  SizedBox(height: 7.0),
                  Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Container(color: Color(0xFFEBEBEB), height: 1.0)),
                  Text(price,
                      style: TextStyle(
                          color: Color(0xFFCC8053),
                          fontFamily: 'Varela',
                          fontSize: 16.0)),
                  Text(name,
                      style: TextStyle(
                          color: Color(0xFF575E67),
                          fontFamily: 'Varela',
                          fontSize: 16.0)),
                ]))));
  }
}
