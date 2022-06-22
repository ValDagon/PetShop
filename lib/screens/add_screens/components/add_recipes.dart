import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/components/default_button.dart';

class AddRecipes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Название",
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Название',
                ),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                "Создать рецепт",
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Создать рецепт',
                ),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Icon(Icons.note_add_outlined),
                    Icon(Icons.attach_file_outlined),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: DefaultButton(
                  text: "Сохранить",
                  press: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      title: Row(
        children: [
          Icon(Icons.note_add_outlined),
          Text(
            "Рецепт",
            style: TextStyle(color: Colors.black),
          ),
        ],
      ),
    );
  }
}
