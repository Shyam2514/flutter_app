import 'package:flutter/material.dart';
import 'package:ticket_app/details.dart';
import 'package:ticket_app/homepage.dart';


class SingleTrip extends StatefulWidget {
  const SingleTrip({Key? key}) : super(key: key);

  @override
  State<SingleTrip> createState() => _SingleTripState();
}

class _SingleTripState extends State<SingleTrip> {
  bool _hasBeenPressed = true;
  bool _hasPressed = false;
  int selectedIndex = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: Colors.lightBlue,
          centerTitle: true,
          title: Text("Flight",style: TextStyle(color: Colors.black),),
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black,size: 30),
        leading: IconButton(onPressed: () {
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back_ios_new,size: 25,),),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(child: Image.asset("assets/plane.jpg",fit: BoxFit.fill,),height: 225,),
              Container(margin: EdgeInsets.only(left: 25,right: 25),
                child: Column(
                  children: [
                  Row(
                    children: [
                      SizedBox(
                        height:20,
                        width: 88,
                        child: ElevatedButton(
                          onPressed:()=> {
                            setState((){
                              _hasBeenPressed = !_hasBeenPressed ;
                              if(_hasBeenPressed == true){
                                _hasPressed=false;
                              }
                            })
                          },
                          style: ElevatedButton.styleFrom(elevation:0, backgroundColor: _hasBeenPressed ? Colors.blue : Colors.white60),
                          child: Text("Single trip",style: TextStyle(fontSize: 10,color: Color.fromARGB(255, 227, 227, 227)),),),
                      ),
                      SizedBox(width: 10,),
                      SizedBox(
                        height:20,
                        width: 88,
                        child: ElevatedButton(
                          onPressed: () =>{
                            setState(() {
                              _hasPressed = !_hasPressed ;
                              if(_hasPressed == true){
                                _hasBeenPressed=false;
                              }
                            })
                          },
                          style: ElevatedButton.styleFrom(elevation:0,backgroundColor: _hasPressed ? Colors.blue : Colors.white60,),
                          child: Text("Round trip",style: TextStyle(fontSize: 10,color: Color.fromARGB(255, 227, 227, 227)),),),
                      ),

                    ],
                  ),
                  Column(
                    children: [
                      Card(margin: EdgeInsets.only(top: 20),
                        child: TextField(decoration: InputDecoration(
                          border: OutlineInputBorder(borderSide: BorderSide.none),
                            prefixIcon: Column(
                              children: [
                                Text("from",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 15),),
                                Container(margin:EdgeInsets.only(bottom: 10),child: Icon(Icons.flight_takeoff,color: Colors.black,size: 25,))
                              ],
                            ),
                        ),),
                      ),
                      Card(margin: EdgeInsets.only(top: 10),
                        child: TextField(
                          decoration: InputDecoration(
                            border: UnderlineInputBorder(borderSide: BorderSide.none),
                          prefixIcon: Column(
                            children: [
                              Text("to",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 15),),
                              Container(margin:EdgeInsets.only(bottom: 10),child: Icon(Icons.flight_land,color: Colors.black,size: 25,))
                            ],
                          ),
                        ),),
                      ),
                      Container(margin: EdgeInsets.only(top: 10,bottom: 20),
                        child: TextField(decoration: InputDecoration(
                          border: OutlineInputBorder(borderSide: BorderSide.none),
                          prefixIcon: Column(
                            children: [
                              Text("Date",style: TextStyle(fontWeight: FontWeight.w600),),
                              Icon(Icons.calendar_month_rounded,color: Colors.black,size: 25,)
                            ],
                          ),
                        ),),
                      ),

                      Container(margin: EdgeInsets.only(bottom: 20),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(backgroundColor: Colors.white38,fixedSize:Size(double.maxFinite, 50),
                              shape:RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(15)))

                            ),
                            onPressed: () {

                        }, child: Text("promo code",style: TextStyle(color: Colors.black,fontSize: 18),)),
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(backgroundColor: Colors.blue,fixedSize:Size(double.maxFinite, 50),
                              shape:RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(15)))

                          ),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Detail(),));
                          }, child: Text("Search Flight",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w300),))
                    ],
                  ),
                ],),
              ),
            ],
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
          showSelectedLabels: false,
          showUnselectedLabels: false,
          currentIndex: selectedIndex,
          onTap: changeIndex,
          items:[
            BottomNavigationBarItem(
              icon: IconButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => First(),));
              }, icon: Icon(Icons.home_filled),),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.card_travel),
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
