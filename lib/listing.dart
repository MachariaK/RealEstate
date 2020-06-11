import 'package:flutter/material.dart';
import 'elements.dart';

class Listing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('All Properties Listing'),
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
      body:GridView.count(crossAxisCount: 2,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.all(5),
          child: _listItem(1,'assets/apartment.jpg','Apartment','500000','samuel mwangi','Nairobi-Kileleshwa')
        ),
        Padding(
          padding: EdgeInsets.all(5),
          child: _listItem(1,'assets/hotel.jpg','Apartment','500000','samuel mwangi','Nairobi-Kileleshwa')
        ),
        Padding(
          padding: EdgeInsets.all(5),
          child: _listItem(2,'assets/resort.jpg','Apartment','500000','samuel mwangi','Nairobi-Kileleshwa')
        ),
        Padding(
          padding: EdgeInsets.all(5),
          child: _listItem(1,'assets/land.jpg','Apartment','500000','samuel mwangi','Nairobi-Kileleshwa')
        ),
        Padding(
          padding: EdgeInsets.all(5),
          child: _listItem(1,'assets/home.jpg','Apartment','500000','samuel mwangi','Nairobi-Kileleshwa')
        ),
        Padding(
          padding: EdgeInsets.all(5),
          child: _listItem(1,'assets/office.jpg','Apartment','500000','samuel mwangi','Nairobi-Kileleshwa')
        ),
        Padding(
          padding: EdgeInsets.all(5),
          child: _listItem(1,'assets/rentals.jpg','Apartment','500000','samuel mwangi','Nairobi-Kileleshwa')
        ),
        Padding(
          padding: EdgeInsets.all(5),
          child: _listItem(1,'assets/residential.jpg','Apartment','500000','samuel mwangi','Nairobi-Kileleshwa')
        ),
        Padding(
          padding: EdgeInsets.all(5),
          child: _listItem(1,'assets/office.jpg','Apartment','500000','samuel mwangi','Nairobi-Kileleshwa')
        ),
        Padding(
          padding: EdgeInsets.all(5),
          child: _listItem(1,'assets/home1.jpg','Apartment','500000','samuel mwangi','Nairobi-Kileleshwa')
        ),
      ],
      )
    );
  }
}
class _listItem extends StatelessWidget {
  final int id;
  final String category;
  final String location;
  final String path;
  final String price;
  final String seller;

  _listItem(this.id,this.path,this.category,this.price,this.seller,this.location);
  @override
  Widget build(BuildContext context) {
   return InkWell(
     onTap:(){
       print(id);
     },
        child: Container(
       decoration: BoxDecoration(
         gradient: LinearGradient(colors: [
           Colors.pink,
           Colors.black
         ])
       ),
       child:Column(
         children:<Widget>[
           Image.asset(path),
           Text(category,style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold)),
           Text(location,style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold)),
           Text('\$'+price,style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold)),
         ]
       )
     ),
   );
  }
}