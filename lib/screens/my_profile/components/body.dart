import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Имя пользователя",
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.black,
              ),
            ),
            TextFormField(
              decoration: const InputDecoration(
                hintText: '@username',
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
              "Отображаемое имя",
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.black,
              ),
            ),
            TextFormField(
              decoration: const InputDecoration(
                hintText: 'Иван Иванов',
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
              "EMail",
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.black,
              ),
            ),
            TextFormField(
              decoration: const InputDecoration(
                hintText: 'example@mail.ru',
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
              "Номер телефона",
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.black,
              ),
            ),
            TextFormField(
              decoration: const InputDecoration(
                hintText: '89058123124',
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
              "Пароль",
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.black,
              ),
            ),
            TextFormField(
              decoration: const InputDecoration(
                hintText: '',
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
              "Домашний адрес",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
              ),
            ),
            Text(
              "ул.Колотушкина 37, кв 12",
              style: TextStyle(
                color: Colors.black54,
                fontSize: 16,
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                "Язык >",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                "Удалить учётную запись >",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
