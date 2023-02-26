import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:ticket_app/API_CRUD/update_delete.dart';
import 'package:ticket_app/API_CRUD/user_insert.dart';
import 'package:ticket_app/homepage.dart';

//ApiCall on Hotel Button

class ApiDemo extends StatefulWidget {
  @override
  State<ApiDemo> createState() => _ApiDemoState();
}

class _ApiDemoState extends State<ApiDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => First(),));
            },
            icon: Icon(
              Icons.arrow_back_ios_new,
              size: 25,
              color: Colors.black,
            )),
        title: Text(
          'Hotels',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        actions: [Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(child: Icon(Icons.add,color: Colors.black,size: 25,),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) {
                  return Insert(null);
                },
              )).then((value) => (value) {
                if (value == true) {
                  setState(() {});
                }
              });
            },
          ),
        )],
      ),
      body: FutureBuilder<dynamic>(
          builder: (context, snapshot) {
            if (snapshot.data != null && snapshot.hasData) {
              return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) {
                              return Update(snapshot.data![index]);
                            },
                          )).then((value) => (value) {
                            if (value == true) {
                              setState(() {});
                            }
                          });
                        },
                        child: Card(
                          color: Colors.cyan,
                          margin: EdgeInsets.only(
                              top: 10, bottom: 5, right: 10, left: 10),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(children: [
                                Container(
                                  margin: EdgeInsets.only(bottom: 10),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        topRight: Radius.circular(20)),
                                    child: Image.network(
                                      snapshot.data![index]['avatar'],
                                      height: 200,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                              ], crossAxisAlignment: CrossAxisAlignment.stretch),
                              Container(
                                margin: EdgeInsets.only(bottom: 15),
                                child: Row(
                                  children: [
                                    Expanded(
                                      flex: 3,
                                      child: Container(
                                        margin: EdgeInsets.only(left: 15),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                                snapshot.data![index]['name']
                                                    .toString(),
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.w500)),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.location_on_outlined,
                                                  size: 18,
                                                ),
                                                Text(snapshot.data![index]
                                                    ['city']),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        margin: EdgeInsets.only(right: 15),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Column(
                                              children: [
                                                Text(
                                                  snapshot.data![index]['price'],
                                                  style: TextStyle(
                                                      fontSize: 20,
                                                      color: Colors.black),
                                                ),
                                              ],
                                            ),
                                            Text(
                                              "/night",
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                            ],
                          ),
                        ),
                      ),
                    ],
                  );
                },
              );
            } else {
              return Center(child: CircularProgressIndicator());
            }
          },
          future: callApi()),
    );
  }

  Future<dynamic> callApi() async {
    http.Response res = await http
        .get(Uri.parse('https://63edd3115e9f1583bdb6c3e2.mockapi.io/MyApi'));
    return jsonDecode(res.body.toString());
  }

}

