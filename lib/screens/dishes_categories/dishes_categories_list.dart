import 'package:flutter/material.dart';
import 'package:shop_app/screens/dishes_compilation/dishes_compilation_screen.dart';

class DishesCategoriesList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Категории блюд",
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: getListView(context));
  }

  Widget getListView(BuildContext context) {
    var listView = ListView(
      children: <Widget>[
        ListTile(
            leading: Icon(
              Icons.fact_check,
              color: Colors.green,
            ),
            title: Text("Блюдо дня"),
            subtitle: Text("Собрание популярных блюд"),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => DishesCompilationCard()));
            }),

        ListTile(
          leading: Icon(
            Icons.fact_check,
            color: Colors.purple,
          ),
          title: Text("Подборка от знаменитостей"),
          subtitle: Text("Описание"),
        ),
        ListTile(
          leading: Icon(
            Icons.fact_check,
            color: Colors.yellow.shade700,
          ),
          title: Text("Популярное"),
          subtitle: Text("Описание"),
        ),
        ListTile(
          leading: Icon(
            Icons.fact_check,
            color: Colors.yellow.shade700,
          ),
          title: Text("Быстрое приготовление"),
          subtitle: Text("Описание"),
        ),
        ListTile(
          leading: Icon(
            Icons.fact_check,
            color: Colors.blue,
          ),
          title: Text("Диабетическое"),
          subtitle: Text("Описание"),
        ),
        ListTile(
          leading: Icon(
            Icons.fact_check,
            color: Colors.blue,
          ),
          title: Text("Низкокалорийное"),
          subtitle: Text("Описание"),
        ),

//      Text("Yet another element in List"),

//      Container(color: Colors.red, height: 50.0,)
      ],
    );

    return listView;
  }
}
