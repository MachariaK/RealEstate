import 'package:flutter/material.dart';
class Posts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            image_location: 'assets/office.jpg',
            image_caption: 'The Most expensive House in Town',
          ),
          Category(
            image_location: 'assets/home.jpg',
            image_caption: 'Tips On How To Purchase a Home',
          ),
          Category(
            image_location: 'assets/apartment.jpg',
            image_caption: 'How To Save Money While residing in a Apartment ',
          ),
          Category(
            image_location: 'assets/resort.jpg',
            image_caption: 'Where To Go For  a Holiday',
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