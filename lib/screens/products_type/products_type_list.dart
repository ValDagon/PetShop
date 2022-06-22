import 'package:flutter/material.dart';
import 'package:shop_app/components/coustom_bottom_nav_bar.dart';

class ProductsTypeList extends StatelessWidget {
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
                  _buildCard(
                      '300 гр',
                      'Кукуруза Bonduelle',
                      'assets/images/Image Popular Product 1.png',
                      false,
                      false,
                      context),
                  _buildCard(
                      '200 гр',
                      'Хлеб',
                      'assets/images/Image Popular Product 2.png',
                      true,
                      false,
                      context),
                  _buildCard('150 гр', 'Кукуруза Bonduelle',
                      'assets/images/fruits.png', false, false, context),
                  _buildCard(
                      '400 гр',
                      'Кукуруза Bonduelle',
                      'assets/images/Image Popular Product 4.png',
                      false,
                      false,
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
              padding: const EdgeInsets.only(left: 50, right: 15),
              child: Text(
                "Овощи",
                style: TextStyle(color: Colors.black87),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 30, left: 110),
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

  Widget _buildCard(String name, String price, String img2Path, bool added,
      bool isFavorite, context) {
    return Padding(
        padding: EdgeInsets.only(top: 5.0, bottom: 5.0, left: 15.0, right: 5.0),
        child: InkWell(
            onTap: () {},
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
                      padding: EdgeInsets.all(5.0),
                      child: Container(
                          height: 96.0,
                          width: 96.0,
                          child: Image.asset(img2Path))),
                  Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [])),
                  SizedBox(height: 7.0),
                  Text(price,
                      style: TextStyle(
                          color: Color(0xFFCC8053),
                          fontFamily: 'Varela',
                          fontSize: 14.0)),
                  Text(name,
                      style: TextStyle(
                          color: Color(0xFF575E67),
                          fontFamily: 'Varela',
                          fontSize: 14.0)),
                  Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Container(color: Color(0xFFEBEBEB), height: 1.0)),
                  Padding(
                      padding: EdgeInsets.only(left: 5.0, right: 5.0),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                                height: 32,
                                width: 32,
                                child: Image.asset("assets/images/five.png")),
                            Text('45.40',
                                style: TextStyle(
                                    fontFamily: 'Varela',
                                    color: Color(0xFFD17E50),
                                    fontSize: 18.0)),
                            Icon(Icons.add,
                                color: Color(0xFFD17E50), size: 24.0),
                          ]))
                ]))));
  }
}
