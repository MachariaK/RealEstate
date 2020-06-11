import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'properties.dart';
import 'elements.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  bool isLoggedIn=false;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Merchant Properties',
      debugShowCheckedModeBanner: false,
      color: Colors.pink,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        primarySwatch: Colors.pink,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(),
    );
  }
}
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Merchant Properties Limited'),
        centerTitle: true,
        backgroundColor: Colors.pink,
      ),
      drawer: Drawer(
       child:  DrawerElements()
      ),
      body:SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: <Widget>[
            ClipPath(
              clipper: MyClipper(),
              child:Container(
              padding: EdgeInsets.only(top: 30,left: 20,right: 20),
              height: 300,
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors:[
                    Colors.pink,
                    Colors.black,
                  ]
                )
              ),
              child: Column(
                children: <Widget>[
                  SizedBox(height: 1),
                  Expanded(child: Stack(
                    children: <Widget>[
                      SvgPicture.asset('assets/intro.svg',
                      width: 300,
                      fit: BoxFit.fitWidth,
                      alignment: Alignment.topCenter,
                    ),
                    Positioned(
                      top: 20,
                      left: 100,
                      right: 30,
                      child: Text(
                        'Merchant Properties Limited',
                        style: TextStyle(color: Colors.white,fontSize:40,fontWeight: FontWeight.bold)
                      )
                    )
                    ]
                  ))
                ]
              )
            )
            ),
            Text(
              'Choose your Prefered Property Location',
              style: TextStyle(
                color: Colors.pink,
                fontWeight: FontWeight.bold,
                fontSize:20
              )
            ),
            SizedBox(width: 10,),
            Container(     
              height: 40,
              margin: EdgeInsets.symmetric(horizontal: 10),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.pink)
              ),
              child: Row(
                children: <Widget>[
                 SvgPicture.asset('assets/location.svg',
                 width: 25,
                 alignment: Alignment.centerLeft,
                 fit: BoxFit.fitHeight,
                 ),
                 SizedBox(width:20),
                 Expanded(
                   child: DropdownButton(
                     elevation: 10,
                     value: "Nairobi",
                     isExpanded: true,
                     underline: SizedBox(),
                    //  icon: SvgPicture.asset(
                    //    'assets/caret.svg',
                    //    width:15,
                    //    alignment: Alignment.center,
                    //  ),
                     items: [
                       'Nairobi',
                       'Nakuru',
                       'Eldoret',
                       'Nyamira',
                       'Uasin Gishu'
                     ].map<DropdownMenuItem<String>>((String value){
                       return DropdownMenuItem<String>(
                         value: value,
                         child: Text(value,
                         style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold)
                         ),
                       );
                     }).toList()
                     , onChanged: (value){},
                     )
                 )
              ],
              )
            ),
             Divider(
              color: Colors.black,
            ),
            new Padding(padding: const EdgeInsets.all(10),
            child: Text('featured Listing',
             style: TextStyle(
                color: Colors.pink,
                fontWeight: FontWeight.bold,
                fontSize:20
              )
            )
            ),
            Divider(
              color: Colors.black,
            ),
            //we start the property listing 
            Properties()
          ]
        ),
      )
    );
  }
}

class  MyClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size){
    var path = Path();
    path.lineTo(0, size.height-80);
    path.quadraticBezierTo(
      size.width / 2, size.height,  size.width, size.height-80
      );
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }
  @override
  bool shouldReclip(CustomClipper<Path> oldClipper){
    return false;
  }
}