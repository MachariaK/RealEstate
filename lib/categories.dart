import 'package:flutter/material.dart';
import 'elements.dart';
class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
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
      body: _Categories()
    );
  }
}
class _Categories extends StatefulWidget {
  @override
  __CategoriesState createState() => __CategoriesState();
}

class __CategoriesState extends State<_Categories> {
  @override
  Widget build(BuildContext context) {
    return Properties();
  }
}
class Properties extends StatefulWidget {
  @override
  _PropertiesState createState() => _PropertiesState();
}

class _PropertiesState extends State<Properties> {
  @override
  Widget build(BuildContext context) {
    return Container(
       height: 300,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            image_location: 'assets/1.jpg',
            image_caption: 'One Bedroom',
          ),
          Category(
            image_location: 'assets/2.jpg',
            image_caption: 'Two Bedroom',
          ),
          Category(
            image_location: 'assets/3.jpg',
            image_caption: 'Three Bedrooms',
          ),
          Category(
            image_location: 'assets/4.jpg',
            image_caption: 'Four Bedrooms',
          ),
          Category(
            image_location: 'assets/5.jpg',
            image_caption: 'Over Four Bedrooms',
          ),
        ]
      )
    );
  }
}
class Category extends StatelessWidget {
  final String image_location;
  final String image_caption;
  Category({
    this.image_location,
    this.image_caption
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right:1),
      child:InkWell(
        onTap: (){
          print('tapped');
        },
        child: Container(
          width: 350.0,
            child: ListTile(
              title: Image.asset(image_location,
              width: 300.0,
              height: 250.0,
              ),
              subtitle: Card(
                margin: EdgeInsets.only(top:0),
               color: Colors.pink,
                child:Padding(
                  padding: const EdgeInsets.only(left:125.0,top: 10,bottom: 10),
                  child: Text(
                    image_caption,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)
                  ),
                ),
              ),
          ),
        ),
      )
    );
  }
}