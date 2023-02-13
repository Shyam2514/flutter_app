import 'package:flutter/material.dart';
import 'package:ticket_app/coming.dart';
import 'package:ticket_app/single_trip.dart';


class First extends StatefulWidget {
  const First({Key? key}) : super(key: key);

  @override
  State<First> createState() => _FirstState();
}

class _FirstState extends State<First> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
          debugShowCheckedModeBanner: false,
        home: Scaffold(resizeToAvoidBottomInset: false,
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(60),
              child: Container(margin: EdgeInsets.only(top: 5,right: 5),
                child: AppBar(
                  iconTheme: IconThemeData(color: Colors.black,size: 40,),backgroundColor: Color.fromARGB(250, 250, 250, 250),elevation: 0,
                   leading: Column(
                    children: [
                  Container(
                      margin: EdgeInsets.only(top: 5,left: 15),
                      child: CircleAvatar(backgroundColor: Colors.blueAccent,radius: 25,)
                      ),
                ],
            ),
          ),
              ),
          ),

          body: Column(
            children: [
              Column(children: [
                SizedBox(
                    width: double.infinity,
                    child: Container(child: Text("Hi, Jessica doe", style: TextStyle(fontSize: 36,fontWeight: FontWeight.bold),),
                      margin: EdgeInsets.only(left: 20,top: 25),
                    )
                ),
                SizedBox(
                  width: double.infinity,
                  child: Container(child: Text("where will you go?",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400),),
                    margin: EdgeInsets.only(top:10,left: 20,bottom: 30),
                  ),
                ),
                Container(margin: EdgeInsets.only(left: 10,right: 10),
                  child: TextField(enabled: true,
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color.fromARGB(200, 165, 170, 170),
                      label: Text("Search location",style: TextStyle(color: Colors.black),),

                        prefixIcon: Icon(Icons.location_on_outlined,size: 32,color: Colors.black,),
                        focusColor: Colors.grey,
                        border: OutlineInputBorder(borderSide: BorderSide.none,borderRadius: BorderRadius.all(Radius.circular(15))),

                    ),
                  ),
                ),
              ],),
              Column(children: [
                SizedBox(
                    width: double.infinity,
                    child: Container(child: Text("Categories",style: TextStyle(fontWeight: FontWeight.w900,fontSize: 20)),
                      margin: EdgeInsets.only(top: 30,left: 20,bottom: 30),)
                ),

                Row(
                  children: [
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(left: 15,right: 10),
                        child: ElevatedButton(onPressed: () {
                          setState(() {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => SingleTrip()));
                          });
                        }, child: Icon(Icons.flight_takeoff_outlined,size: 45,color: Color.fromARGB(255, 254, 255, 254)),
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.teal,
                                fixedSize: Size.fromHeight(70),
                              padding: EdgeInsets.all(10),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0)
                              ),
                            )
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(left: 10,right: 10),
                        child: ElevatedButton(onPressed: () {
                          setState(() {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Coming()));
                          });
                        }, child: Icon(Icons.home_work_outlined,size: 45,color: Color.fromARGB(255, 254, 255, 254)),
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.pink,
                                padding: EdgeInsets.all(10),
                                fixedSize: Size.fromHeight(70),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0)
                              ),
                            )
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(left: 10,right: 10),
                        child: ElevatedButton(onPressed: () {
                          setState(() {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Coming()));
                          });
                        }, child: Icon(Icons.camera_alt_outlined,size: 45,color: Color.fromARGB(255, 254, 255, 254)),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              fixedSize: Size.fromHeight(70),
                              padding: EdgeInsets.all(10),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0)
                              ),
                            )
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(left: 10,right: 10),
                        child: ElevatedButton(onPressed: () {
                          setState(() {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Coming()));
                          });
                        }, child: Icon(Icons.train_outlined,size: 45,color: Color.fromARGB(255, 254, 255, 254)),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blueAccent,
                              fixedSize: Size.fromHeight(70),padding: EdgeInsets.all(10),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0)
                              ),
                            )),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(child: Container(child: Text("Flight"),alignment: Alignment.center,margin: EdgeInsets.only(top: 7),)),
                    Expanded(child: Container(child: Text("Hotel"),alignment: Alignment.center,margin: EdgeInsets.only(top: 7),)),
                    Expanded(child: Container(child: Text("Explorer"),alignment: Alignment.center,margin: EdgeInsets.only(top: 7),)),
                    Expanded(child: Container(child: Text("Train"),alignment: Alignment.center,margin: EdgeInsets.only(top: 7),)),
                  ],
                ),
                SizedBox(
                  width: double.infinity,
                  child: Container(child: Text("Best offer",style: TextStyle(fontWeight: FontWeight.w900,fontSize: 20)),
                    margin: EdgeInsets.only(left: 20,top: 40,bottom: 25),),
                ),
              ],),
              Container(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Column(
                    children: [
                      SafeArea(
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(margin: EdgeInsets.only(left: 20),
                                child: Stack(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(15), // Image border
                                      child: SizedBox.fromSize(
                                        size: Size.fromRadius(83), // Image radius
                                        child: Image.network('https://media.istockphoto.com/id/1195458582/photo/aerial-view-of-misty-mountains-at-sunrise.jpg?b=1&s=170667a&w=0&k=20&c=lpAmjnJf-B8JVOwC1bsANg8V-TFxgonnMo4034s0B7U=', fit: BoxFit.cover),
                                      ),
                                    ),
                                    Column(crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(child: Text("Tokyo",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),margin: EdgeInsets.only(top: 12,left: 10),),
                                        Container(child: Text('Round trip',style: TextStyle(fontSize: 8,fontWeight: FontWeight.bold),),margin: EdgeInsets.only(left: 15,top: 4),),
                                        Container(margin: EdgeInsets.only(top: 80,left:10),
                                          child: SizedBox(
                                            width: 65,
                                            height: 20,
                                            child: ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.white60,),onPressed: () {

                                            }, child: Text("Learn more",style: TextStyle(fontSize: 6,color: Colors.black),),),
                                          ),
                                        )
                                      ],
                                    ),

                                  ],
                                ),
                              ),

                              Container(margin: EdgeInsets.only(left: 20),
                                child: Stack(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(15), // Image border
                                      child: SizedBox.fromSize(
                                        size: Size.fromRadius(83), // Image radius
                                        child: Image.network('https://st.focusedcollection.com/8860618/i/650/focused_263256156-stock-photo-sunrise-shining-big-ben-london.jpg',fit: BoxFit.cover),
                                      ),
                                    ),
                                    Column(crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(child: Text("London",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),margin: EdgeInsets.only(top: 12,left: 10),),
                                        Container(child: Text('Round trip',style: TextStyle(fontSize: 8,fontWeight: FontWeight.bold),),margin: EdgeInsets.only(left: 15,top: 4),),
                                        Container(margin: EdgeInsets.only(top: 80,left:10),
                                          child: SizedBox(
                                            width: 65,
                                            height: 20,
                                            child: ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.white60,),onPressed: () {

                                            }, child: Text("Learn more",style: TextStyle(fontSize: 6,color: Colors.black),),),
                                          ),
                                        )
                                      ],
                                    ),

                                  ],
                                ),
                              ),

                              Container(margin: EdgeInsets.only(left: 20),
                                child: Stack(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(15), // Image border
                                      child: SizedBox.fromSize(
                                        size: Size.fromRadius(83), // Image radius
                                        child: Image.network('https://media.istockphoto.com/id/1195458582/photo/aerial-view-of-misty-mountains-at-sunrise.jpg?b=1&s=170667a&w=0&k=20&c=lpAmjnJf-B8JVOwC1bsANg8V-TFxgonnMo4034s0B7U=', fit: BoxFit.cover),
                                      ),
                                    ),
                                    Column(crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(child: Text("Tokyo",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),margin: EdgeInsets.only(top: 12,left: 10),),
                                        Container(child: Text('Round trip',style: TextStyle(fontSize: 8,fontWeight: FontWeight.bold),),margin: EdgeInsets.only(left: 15,top: 4),),
                                        Container(margin: EdgeInsets.only(top: 80,left:10),
                                          child: SizedBox(
                                            width: 65,
                                            height: 20,
                                            child: ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.white60,),onPressed: () {

                                            }, child: Text("Learn more",style: TextStyle(fontSize: 6,color: Colors.black),),),
                                          ),
                                        )
                                      ],
                                    ),

                                  ],
                                ),
                              ),

                              Container(margin: EdgeInsets.only(left: 20),
                                child: Stack(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(15), // Image border
                                      child: SizedBox.fromSize(
                                        size: Size.fromRadius(83), // Image radius
                                        child: Image.network('https://media.istockphoto.com/id/1195458582/photo/aerial-view-of-misty-mountains-at-sunrise.jpg?b=1&s=170667a&w=0&k=20&c=lpAmjnJf-B8JVOwC1bsANg8V-TFxgonnMo4034s0B7U=', fit: BoxFit.cover),
                                      ),
                                    ),
                                    Column(crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(child: Text("Tokyo",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),margin: EdgeInsets.only(top: 12,left: 10),),
                                        Container(child: Text('Round trip',style: TextStyle(fontSize: 8,fontWeight: FontWeight.bold),),margin: EdgeInsets.only(left: 15,top: 4),),
                                        Container(margin: EdgeInsets.only(top: 80,left:10),
                                          child: SizedBox(
                                            width: 65,
                                            height: 20,
                                            child: ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.white60,),onPressed: () {

                                            }, child: Text("Learn more",style: TextStyle(fontSize: 6,color: Colors.black),),),
                                          ),
                                        )
                                      ],
                                    ),

                                  ],
                                ),
                              ),


                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
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
                    Navigator.push(context, MaterialPageRoute(builder: (context) => First(),));
                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.train,
                  ),
                  title: const Text('Page 2'),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Coming(),));
                  },
                ),
              ],
            ),
          ),
//bottom navigation bar
          bottomNavigationBar: BottomNavigationBar(
            elevation: 0,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            currentIndex: selectedIndex,
            onTap: changeIndex,
            items:[
              BottomNavigationBarItem(
                icon: Icon(Icons.home_filled,size: 25,),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: IconButton(onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => SingleTrip(),));
                }, icon: Icon(Icons.wallet_travel,size: 25,),),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person,size: 25,),
                label: '',

              ),
            ],

          ),
        )
    );
  }
  void changeIndex(int Index){
    setState(() {
      selectedIndex = Index;
    });
  }
}
