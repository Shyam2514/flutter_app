import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:ticket_app/API_CRUD/user_insert.dart';
import 'package:ticket_app/hotel_api.dart';

class Insert extends StatefulWidget {
  Insert(this.map);
  Map? map;
  @override
  State<Insert> createState() => _InsertState();
}

class _InsertState extends State<Insert> {
  var formkey = GlobalKey<FormState>();

  var nameController = TextEditingController();
  var CityController = TextEditingController();
  var priceController = TextEditingController();
  var avatarController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Information",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios_new,
              size: 25,
              color: Colors.black,
            )),
        backgroundColor: Colors.white,
      ),
      body: Form(
        key: formkey,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(hintText: "Enter hotel name"),
                validator: (value) {
                  if (value != null && value.isEmpty) {
                    return "enter hotel name";
                  }
                },
                controller: nameController,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(hintText: "Enter city name"),
                validator: (value) {
                  if (value != null && value.isEmpty) {
                    return "enter city name";
                  }
                },
                controller: CityController,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(hintText: "Enter price"),
                validator: (value) {
                  if (value != null && value.isEmpty) {
                    return "enter price";
                  }
                },
                controller: priceController,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(hintText: "Enter city name"),
                validator: (value) {
                  if (value != null && value.isEmpty) {
                    return "upload photo link";
                  }
                },
                controller: avatarController,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                  onPressed: () {
                    if (formkey.currentState!.validate()) {
                      insertUser().then((value) => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ApiDemo(),
                          )));
                    }
                  },
                  child: Text("Submit")),
            ),
          ],
        ),
      ),
    );
  }

  Future<dynamic> insertUser() async {
    Map map = {};
    map["name"] = nameController.text;
    map["city"] = CityController.text;
    map["price"] = priceController.text;
    map["avatar"] = avatarController.text;

    var response1 = await http.post(
        Uri.parse("https://63edd3115e9f1583bdb6c3e2.mockapi.io/MyApi"),
        body: map);
    print(response1.body);
    return response1;
  }
}
