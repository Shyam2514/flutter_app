import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:ticket_app/API_CRUD/update_delete.dart';
import 'package:ticket_app/hotel_api.dart';

class Update extends StatefulWidget {

  Update(this.map);
  Map? map;

  @override
  State<Update> createState() => _UpdateState();
}

class _UpdateState extends State<Update> {

  var formkey = GlobalKey<FormState>();

  var nameController = TextEditingController();
  var CityController = TextEditingController();
  var priceController = TextEditingController();
  var avatarController = TextEditingController();

  @override

  void initState() {
    super.initState();
    nameController.text = widget.map == null ? '' : widget.map!['name'];
    CityController.text = widget.map == null ? '' : widget.map!['city'];
    priceController.text = widget.map == null ? '' : widget.map!['price'];
    avatarController.text = widget.map == null ? '' : widget.map!['avatar'];
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Information",style: TextStyle(color: Colors.black),),
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
                decoration: InputDecoration(hintText: "Enter photo link"),
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
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: ElevatedButton(
                        onPressed: () {
                          if (formkey.currentState!.validate()) {
                            if (widget.map != null) {
                              updatetUser(widget.map!['id']).then(
                                  (value) => Navigator.of(context).push(MaterialPageRoute(builder: (context) => ApiDemo(),)));
                            }
                          }
                        },
                        child: Text("update")),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                        onPressed: () {
                          showDeleteAlert(widget.map!['id']);
                        },
                        child: Text("Delete",style: TextStyle(color: Colors.white,fontSize: 15))),
                  ),

                ],
              ),
            ),

          ],
        ),
      ),
    );
  }

  //update_operation

  Future<dynamic> updatetUser(id) async {
    Map map = {};
    map["name"] = nameController.text;
    map["city"] = CityController.text;
    map["price"] = priceController.text;
    map["avatar"] = avatarController.text;

    var response1 = await http.put(
        Uri.parse("https://63edd3115e9f1583bdb6c3e2.mockapi.io/MyApi/$id"),
        body: map);
    print(response1.body);
  }

  //delete_operation

  void showDeleteAlert(id) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("Are you sure"),
          content: Text("it will be delete parmanetaly"),
          actions: [
            TextButton(
                onPressed: () async {
                  http.Response res = await deleteUser(id);
                  if (res.statusCode == 200) {
                    setState(() {});
                  }
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => ApiDemo(),));
                },
                child: Text("yes")),
            TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text("no"))
          ],
        );
      },
    );
  }

  Future<dynamic> deleteUser(id) async {
    var response1 = await http.delete(
        Uri.parse("https://63edd3115e9f1583bdb6c3e2.mockapi.io/MyApi/$id"));
    print(response1.body);
    return response1;
  }

  Future<dynamic> callApi() async {
    http.Response res = await http
        .get(Uri.parse('https://63edd3115e9f1583bdb6c3e2.mockapi.io/MyApi'));
    return jsonDecode(res.body.toString());
  }
}

