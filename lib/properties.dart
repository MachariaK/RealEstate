import 'package:flutter/material.dart';
class Properties extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            image_location: 'assets/home.jpg',
            image_caption: 'The Bungalow Just Completed',
          ),
          Category(
            image_location: 'assets/home1.jpg',
            image_caption: 'New Home Under Construstion in Menengai',
          ),
          Category(
            image_location: 'assets/home2.jpg',
            image_caption: 'New Home Under Construstion in Menengai',
          ),
          Category(
            image_location: 'assets/home3.jpg',
            image_caption: 'New Home Under Construstion in Menengai',
          ),
          Category(
            image_location: 'assets/home4.jpg',
            image_caption: 'New Home Under Construstion in Menengai',
          ),
          Category(
            image_location: 'assets/home5.jpg',
            image_caption: 'New Home Under Construstion in Menengai',
          ),
          Category(
            image_location: 'assets/home6.jpg',
            image_caption: 'New Home Under Construstion in Menengai',
          ),
          Category(
            image_location: 'assets/home7.jpg',
            image_caption: 'New Home Under Construstion in Menengai',
          )
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
                  padding: const EdgeInsets.only(left:30.0,top: 10,bottom: 10),
                  child: Text(image_caption,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
                )
              ),
          ),
        ),
      )
    );
  }
}