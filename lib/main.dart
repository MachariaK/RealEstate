import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'properties.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  bool isLoggedIn=false;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mwangi Properties',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        primarySwatch: Colors.red,
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
        child: ListView(
          children: <Widget>[
        new UserAccountsDrawerHeader(
              accountName: Text('samuel mwangi'), accountEmail: Text('samuelmwangi729@gmail.com'),
             currentAccountPicture:
            GestureDetector(
              child: CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(Icons.person,size: 70.0,color: Colors.pink), 
              )
            ),
            decoration: 
            BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors:[
                  Colors.pink,
                  Colors.black,
                ]
              )
            ),
        ),
        new InkWell(
          onTap:(){},
          child: Center(
            child: ListTile(
                  title: Text('Home',style:TextStyle(fontFamily:'Times New Roman',fontWeight: FontWeight.bold,fontSize:15)),
                  leading: Icon(Icons.home,color: Colors.pink),
                  dense: true,
                ),
          ),
        ),
        Divider(
          height: 10,
          color: Colors.black
        ),
         new InkWell(
          onTap:(){},
          child: Center(
            child: ListTile(
                  title: Text('Locations',style:TextStyle(fontFamily:'Times New Roman',fontWeight: FontWeight.bold,fontSize:15)),
                  leading: Icon(Icons.home,color: Colors.pink),
                  dense: true,
                ),
          ),
        ),
        Divider(
          height: 10,
          color: Colors.pink
        ),
         new InkWell(
          onTap:(){},
          child: Center(
            child: ListTile(
                  title: Text('Categories',style:TextStyle(fontFamily:'Times New Roman',fontWeight: FontWeight.bold,fontSize:15)),
                  leading: Icon(Icons.home,color: Colors.pink),
                  dense: true,
                ),
          ),
        ),
        Divider(
          height: 10,
          color: Colors.pink
        ),
         new InkWell(
          onTap:(){},
          child: Center(
            child: ListTile(
                  title: Text('All Properties',style:TextStyle(fontFamily:'Times New Roman',fontWeight: FontWeight.bold,fontSize:15)),
                  leading: Icon(Icons.home,color: Colors.pink),
                  dense: true,
                ),
          ),
        ),
         Divider(
          height: 10,
          color: Colors.pink
        ),
        Divider( ),
         new InkWell(
          onTap:(){},
          child: Center(
            child: ListTile(
                  title: Text('About Us',style:TextStyle(fontFamily:'Times New Roman',fontWeight: FontWeight.bold,fontSize:15)),
                  leading: Icon(Icons.help,color: Colors.blue),
                  dense: true,
                ),
          ),
        ),
        Divider(),
         new InkWell(
          onTap:(){},
          child: Padding(
            padding: EdgeInsets.only(top:110,left:100),
            child: ListTile(
                  title: Text('Version 1.0',style:TextStyle(fontFamily:'Times New Roman',fontWeight: FontWeight.bold,color:Colors.pink)),
                  dense: true,
                ),
          ),
        ),

          ]
        ),
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
            SizedBox(height: 20),
            
            new Padding(padding: const EdgeInsets.all(10),
            child: Text('Newly Completed Houses',
             style: TextStyle(
                color: Colors.pink,
                fontWeight: FontWeight.bold,
                fontSize:20
              )
            )
            ),
            Divider(
              color: Colors.red,
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