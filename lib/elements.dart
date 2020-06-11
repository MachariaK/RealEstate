import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'about.dart';
import 'categories.dart';
import 'main.dart';
import 'listing.dart';
import 'types.dart';
import 'blog.dart';
import 'contact.dart';
class DrawerElements extends StatelessWidget {
  int i=0;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
          children: <Widget>[
        new UserAccountsDrawerHeader(
              accountName: Padding(
                padding: const EdgeInsets.only(left:40),
                child: Text('Merchant Properties Limited',
                style: TextStyle(
                  fontSize: 20,
                ),
                ),
              ), accountEmail: Padding(
                padding: EdgeInsets.only(left:30),
                child:Text('\t\tYour All Stop Properties Managment Patner')
              ),
             currentAccountPicture:
            GestureDetector(
              child:Padding(padding: EdgeInsets.only(left:100),
              child: CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(Icons.person,size: 70.0,color: Colors.pink), 
              )
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
          onTap:(){
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return MyApp();
            }));
          },
          child: Center(
            child: ListTile(
                  title: Text('Home',style:TextStyle(fontFamily:'Times New Roman',fontWeight: FontWeight.bold)),
                  leading: Icon(Icons.home,color: Colors.pink),
                  dense: true,
                ),
          ),
        ),
        // Divider(
        //   height: 1,
        //   color: Colors.black
        // ),
        //  new InkWell(
        //   onTap:(){
        //     Navigator.push(context, MaterialPageRoute(builder: (context){
        //       return Places();
        //     }));
        //   },
        //   child: Center(
        //     child: ListTile(
        //           title: Text('Locations/Places',style:TextStyle(fontFamily:'Times New Roman',fontWeight: FontWeight.bold)),
        //           leading:  SvgPicture.asset('assets/location.svg',
        //          width: 25,
        //          alignment: Alignment.centerLeft,
        //          fit: BoxFit.fitHeight,
        //          ),
        //           dense: true,
        //         ),
        //   ),
        // ),
       Divider(
          height: 1,
          color: Colors.pink
        ),
         new InkWell(
          onTap:(){
            Navigator.of(context).push(MaterialPageRoute(builder: (context){
              return Categories();
            },));
          },
          child: Center(
            child: ListTile(
                  title: Text('Rentals',style:TextStyle(fontFamily:'Times New Roman',fontWeight: FontWeight.bold)),
                  leading: Icon(Icons.list,color: Colors.pink),
                  dense: true,
                ),
          ),
        ),
        Divider(
          height: 1,
          color: Colors.pink
        ),
         new InkWell(
          onTap:(){
            Navigator.of(context).push(MaterialPageRoute(builder: (context){
              return Types();
            }));
          },
          child: Center(
            child: ListTile(
                  title: Text('Property(s) Type',style:TextStyle(fontFamily:'Times New Roman',fontWeight: FontWeight.bold)),
                  leading:  SvgPicture.asset('assets/house.svg',
                 width: 25,
                 alignment: Alignment.centerLeft,
                 fit: BoxFit.fitHeight,
                 ),
                  dense: true,
                ),
          ),
        ),
         Divider(
          height: 1,
          color: Colors.pink
        ),
         new InkWell(
          onTap:(){
            Navigator.of(context).push(MaterialPageRoute(builder: (context){
              return Listing();
            }));
          },
          child: Center(
            child: ListTile(
                  title: Text('Listing',style:TextStyle(fontFamily:'Times New Roman',fontWeight: FontWeight.bold)),
                  leading: Icon(Icons.menu, color: Colors.pink),
                  dense: true,
                ),
          ),
        ),
        Divider(
          height: 1,
          color: Colors.pink
        ),
         new InkWell(
          onTap:(){
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>  Blog()));
          },
          child: Center(
            child: ListTile(
                  title: Text('Blog',style:TextStyle(fontFamily:'Times New Roman',fontWeight: FontWeight.bold)),
                   leading:  SvgPicture.asset('assets/location1.svg',
                 width: 25,
                 alignment: Alignment.centerLeft,
                 fit: BoxFit.fitHeight,
                 ),
                  dense: true,
                ),
          ),
        ),
       Divider(
          height: 1,
          color: Colors.pink
        ),
         new InkWell(
          onTap:(){
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Contact()));
          },
          child: Center(
            child: ListTile(
                  title: Text('Contact Us',style:TextStyle(fontFamily:'Times New Roman',fontWeight: FontWeight.bold)),
                  leading: Icon(Icons.phone,color: Colors.pink),
                  dense: true,
                ),
          ),
        ),
        Divider(
          height: 1,
          color: Colors.pink
        ),
        Divider(),
         new InkWell(
          onTap:(){
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>About()));
          },
          child: Center(
            child: ListTile(
                  title: Text('About Us',style:TextStyle(fontFamily:'Times New Roman',fontWeight: FontWeight.bold)),
                  leading: Icon(Icons.help,color: Colors.pink),
                  dense: true,
                ),
          ),
        ),
        Divider(),
         new InkWell(
          onTap:(){},
          child: Padding(
            padding: EdgeInsets.only(top:10,left:100),
            child: ListTile(
                  title: Text('Version 1.0',style:TextStyle(fontFamily:'Times New Roman',fontWeight: FontWeight.bold,color:Colors.pink)),
                  dense: true,
                ),
          ),
        ),

          ]
        ),
    );
  }
}