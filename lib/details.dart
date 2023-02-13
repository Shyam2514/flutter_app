import 'package:flutter/material.dart';
import 'package:ticket_app/homepage.dart';
import 'package:ticket_app/single_trip.dart';

class Detail extends StatefulWidget {
  const Detail({Key? key}) : super(key: key);

  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  int selectedIndex = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.black,size: 30),
          centerTitle: true,
          title: Text("Details",style: TextStyle(color: Colors.black,fontSize: 25),),
          elevation: 0,
          leading: IconButton(onPressed: () {
            Navigator.pop(context);
          },icon: Container(child: Icon(Icons.arrow_back_ios_new,size: 25,),)),
        ),
        body:
            SafeArea(
              child: SingleChildScrollView(

                child: Column(
                  children: [
                    Card(
                      elevation: 0,
                      child: Column(
                        children: [
                          Text("SIN - NRT, 08/09/21",style: TextStyle(fontSize: 20),)
                        ],
                      ),
                    ),
                    Card(
                      elevation: 20,
                      margin: EdgeInsets.fromLTRB(20,20,20,0),
                      color: Colors.white,
                      child: Column(
                      children: [
                      Row(
                        children: [
                          Container(
                            child: Column(
                              children: [
                                Text("SIN",style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold),),
                                Text("singapore",style: TextStyle(fontSize: 9),),
                              ],
                            ),
                          margin: EdgeInsets.fromLTRB(20, 20, 20, 10),),
                          Container(margin: EdgeInsets.only(left: 30,right: 30,top: 0),
                            child: Column(
                              children: [
                                Icon(Icons.flight_takeoff,size: 30,),
                                Text("8 hours 20 minutes",style: TextStyle(fontSize: 9),)
                              ],
                            ),
                          ),
                          Container(margin: EdgeInsets.fromLTRB(20, 20, 20, 10),
                            child: Column(crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text("NRT",style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold),),
                                Text("tokyo",style: TextStyle(fontSize: 10),),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Container(margin: EdgeInsets.only(top: 5,left: 20,right: 20),
                        child: Row(
                          children: [
                            Container(margin:EdgeInsets.only(right: 61,bottom: 10),
                                child: Text("08:20 AM",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.cyan),)),
                            Container(margin: EdgeInsets.only(top: 0,bottom: 10),
                                child: Text("04:30 PM",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.cyan),))
                          ],
                        ),
                      ),
                      Container(margin: EdgeInsets.only(right: 20,left: 20,top: 5,bottom: 10),
                        child: Row(
                          children: [
                            Icon(Icons.card_travel_outlined),
                            Container(margin:EdgeInsets.only(left: 8,right: 15),
                                child: Icon(Icons.restaurant)),
                            Text("checked baggage/meals",style: TextStyle(fontSize: 9),)
                          ],
                        ),
                      ),
                      Container(margin: EdgeInsets.only(left: 20,top: 10,bottom: 20,right: 20),
                        child: Row(
                          children: [
                            Text("\$ 350",style: TextStyle(fontSize: 28,color: Colors.redAccent),),
                            Container(
                                margin:EdgeInsets.only(left: 125),
                                child: Text("Lorem Airlins",style: TextStyle(fontWeight: FontWeight.bold),))
                          ],
                        ),
                      )
                      ],
                    ),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                    ),
                    Card(
                      elevation: 20,
                      margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
                      color: Colors.blue,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                child: Column(
                                  children: [
                                    Text("SIN",style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold),),
                                    Text("singapore",style: TextStyle(fontSize: 9),),
                                  ],
                                ),
                                margin: EdgeInsets.fromLTRB(20, 20, 20, 10),),
                              Container(margin: EdgeInsets.only(left: 30,right: 30,top: 0),
                                child: Column(
                                  children: [
                                    Icon(Icons.flight_takeoff,size: 30,),
                                    Text("8 hours 20 minutes",style: TextStyle(fontSize: 9),)
                                  ],
                                ),
                              ),
                              Container(margin: EdgeInsets.fromLTRB(20, 20, 20, 10),
                                child: Column(crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text("NRT",style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold),),
                                    Text("tokyo",style: TextStyle(fontSize: 10),),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Container(margin: EdgeInsets.only(top: 5,left: 20,right: 20),
                            child: Row(
                              children: [
                                Container(margin:EdgeInsets.only(right: 61,bottom: 10),
                                    child: Text("08:20 AM",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.cyanAccent),)),
                                Container(margin: EdgeInsets.only(top: 0,bottom: 10),
                                    child: Text("04:30 PM",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.cyanAccent),))
                              ],
                            ),
                          ),
                          Container(margin: EdgeInsets.only(right: 20,left: 20,top: 5,bottom: 10),
                            child: Row(
                              children: [
                                Icon(Icons.card_travel_outlined),
                                Container(margin:EdgeInsets.only(left: 8,right: 15),
                                    child: Icon(Icons.restaurant)),
                                Text("checked baggage/meals",style: TextStyle(fontSize: 9),)
                              ],
                            ),
                          ),
                          Container(margin: EdgeInsets.only(left: 20,top: 10,bottom: 20,right: 20),
                            child: Row(
                              children: [
                                Text("\$ 425",style: TextStyle(fontSize: 28,color: Colors.yellow),),
                                Container(
                                    margin:EdgeInsets.only(left: 125),
                                    child: Text("Lorem Airlins",style: TextStyle(fontWeight: FontWeight.bold),))
                              ],
                            ),
                          )
                        ],
                      ),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                    ),
                    Card(
                      elevation: 5,
                      margin: EdgeInsets.fromLTRB(20,20,20,0),
                      color: Colors.white,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                child: Column(
                                  children: [
                                    Text("SIN",style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold),),
                                    Text("singapore",style: TextStyle(fontSize: 9),),
                                  ],
                                ),
                                margin: EdgeInsets.fromLTRB(20, 20, 20, 10),),
                              Container(margin: EdgeInsets.only(left: 30,right: 30,top: 0),
                                child: Column(
                                  children: [
                                    Icon(Icons.flight_takeoff,size: 30,),
                                    Text("8 hours 20 minutes",style: TextStyle(fontSize: 9),)
                                  ],
                                ),
                              ),
                              Container(margin: EdgeInsets.fromLTRB(20, 20, 20, 10),
                                child: Column(crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text("NRT",style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold),),
                                    Text("tokyo",style: TextStyle(fontSize: 10),),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Container(margin: EdgeInsets.only(top: 5,left: 20,right: 20),
                            child: Row(
                              children: [
                                Container(margin:EdgeInsets.only(right: 61,bottom: 10),
                                    child: Text("08:20 AM",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.cyan),)),
                                Container(margin: EdgeInsets.only(top: 0,bottom: 10),
                                    child: Text("04:30 PM",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.cyan),))
                              ],
                            ),
                          ),
                          Container(margin: EdgeInsets.only(right: 20,left: 20,top: 5,bottom: 10),
                            child: Row(
                              children: [
                                Icon(Icons.card_travel_outlined),
                                Container(margin:EdgeInsets.only(left: 8,right: 15),
                                    child: Icon(Icons.restaurant)),
                                Text("checked baggage/meals",style: TextStyle(fontSize: 9),)
                              ],
                            ),
                          ),
                          Container(margin: EdgeInsets.only(left: 20,top: 10,bottom: 20,right: 20),
                            child: Row(
                              children: [
                                Text("\$ 350",style: TextStyle(fontSize: 28,color: Colors.redAccent),),
                                Container(
                                    margin:EdgeInsets.only(left: 125),
                                    child: Text("Lorem Airlins",style: TextStyle(fontWeight: FontWeight.bold),))
                              ],
                            ),
                          )
                        ],
                      ),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                    ),
                    Card(
                      elevation: 20,
                      margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
                      color: Colors.blue,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                child: Column(
                                  children: [
                                    Text("SIN",style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold),),
                                    Text("singapore",style: TextStyle(fontSize: 9),),
                                  ],
                                ),
                                margin: EdgeInsets.fromLTRB(20, 20, 20, 10),),
                              Container(margin: EdgeInsets.only(left: 30,right: 30,top: 0),
                                child: Column(
                                  children: [
                                    Icon(Icons.flight_takeoff,size: 30,),
                                    Text("8 hours 20 minutes",style: TextStyle(fontSize: 9),)
                                  ],
                                ),
                              ),
                              Container(margin: EdgeInsets.fromLTRB(20, 20, 20, 10),
                                child: Column(crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text("NRT",style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold),),
                                    Text("tokyo",style: TextStyle(fontSize: 10),),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Container(margin: EdgeInsets.only(top: 5,left: 20,right: 20),
                            child: Row(
                              children: [
                                Container(margin:EdgeInsets.only(right: 61,bottom: 10),
                                    child: Text("08:20 AM",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.cyan),)),
                                Container(margin: EdgeInsets.only(top: 0,bottom: 10),
                                    child: Text("04:30 PM",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.cyan),))
                              ],
                            ),
                          ),
                          Container(margin: EdgeInsets.only(right: 20,left: 20,top: 5,bottom: 10),
                            child: Row(
                              children: [
                                Icon(Icons.card_travel_outlined),
                                Container(margin:EdgeInsets.only(left: 8,right: 15),
                                    child: Icon(Icons.restaurant)),
                                Text("checked baggage/meals",style: TextStyle(fontSize: 9),)
                              ],
                            ),
                          ),
                          Container(margin: EdgeInsets.only(left: 20,top: 10,bottom: 20,right: 20),
                            child: Row(
                              children: [
                                Text("\$ 350",style: TextStyle(fontSize: 28,color: Colors.redAccent),),
                                Container(
                                    margin:EdgeInsets.only(left: 125),
                                    child: Text("Lorem Airlins",style: TextStyle(fontWeight: FontWeight.bold),))
                              ],
                            ),
                          )
                        ],
                      ),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                    ),
                  ],
                ),

              ),
            ),

        endDrawer: Drawer(
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text('Drawer Header'),
              ),
              ListTile(
                leading: Icon(
                  Icons.home,
                ),
                title: const Text('Page 1'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.train,
                ),
                title: const Text('Page 2'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          elevation: 0,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          currentIndex: selectedIndex,
          onTap: changeIndex,
          items:[
            BottomNavigationBarItem(
              icon: IconButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => First(),));
              }, icon: Icon(Icons.home_filled)),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: IconButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => SingleTrip(),));
              }, icon: Icon(Icons.wallet_travel),),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: '',

            ),
          ],
        ),
      ),
    );
  }
  void changeIndex(int Index){
    setState(() {
      selectedIndex = Index;
    });
  }
}
