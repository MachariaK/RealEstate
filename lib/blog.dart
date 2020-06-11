import 'package:flutter/material.dart';
import 'dart:ui';
import 'posts.dart';

class Blog extends StatefulWidget {
  @override
  _BlogState createState() => _BlogState();
}

class _BlogState extends State<Blog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Our Blog'),
        actions: <Widget>[
          InkWell(
            onTap:(){},
            child: Padding(
              padding: const EdgeInsets.only(right:28.0),
              child: Icon(Icons.email),
            ),
          )
        ],
      ),
      body:SingleChildScrollView(
              child: Column(
          children: <Widget>[
            ClipPath(
                clipper: MyClipper(),
                child:Container(
               child: Column(
                  children: <Widget>[
                    Expanded(child: Stack(
                      children: <Widget>[
                        Image.asset('assets/office.jpg',
                        height: 300,
                        fit: BoxFit.cover
                        ),
                      Positioned(
                        top: 70,
                        left: 140,
                        right: 30,
                        child: Text(
                          'Blogs',
                          style: TextStyle(color: Colors.white,fontSize:40,
                          fontWeight: FontWeight.bold,
                          backgroundColor: Colors.black.withOpacity(.3)
                          )
                        )
                      ),
                      Positioned(
                         top: 120,
                        left: 40,
                        right: 60,
                        child: Text('Subscription Based Video Streaming Website',
                        style:TextStyle(color: Colors.white,
                        fontWeight: FontWeight.bold,
                        backgroundColor: Colors.black.withOpacity(.3)
                        )
                        )
                        )
                      ]
                    ))
                  ]
                ),
                height: 250,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomRight,
                    end: Alignment.topLeft,
                    colors:[
                      Colors.pink,
                      Colors.black,
                    ]
                  )
                ),
              )
              ),
              SizedBox(height: 20,
              child:Text('Latest Posts',
              style:TextStyle(
                fontSize:20,
                fontWeight: FontWeight.bold,
                color: Colors.pink,
                decoration: TextDecoration.underline
              )
              )
              ),
              Posts(),
          ],
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