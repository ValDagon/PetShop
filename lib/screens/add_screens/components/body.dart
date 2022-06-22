import 'package:flutter/material.dart';
import 'package:shop_app/screens/add_screens/components/add_recipes.dart';
import 'package:shop_app/screens/dishes_compilation/dishes_compilation_screen.dart';

import 'add_compilation_dishes.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: getListView(context));
  }

  Widget getListView(BuildContext context) {
    var listView = ListView(
      children: <Widget>[
        ListTile(
            leading: Icon(
              Icons.note_add_outlined,
//              color: Colors.yellow.shade900,
            ),
            title: Text("Рецепт"),
            subtitle: Text("Добавить свой рецепт"),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => AddRecipes()));
            }),
        ListTile(
            leading: Icon(
              Icons.fact_check,
            ),
            title: Text("Подборка блюд"),
            subtitle: Text("Добавить свою подборку"),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => AddCompilation()));
            }),

//      Text("Yet another element in List"),

//      Container(color: Colors.red, height: 50.0,)
      ],
    );

    return listView;
  }
}
