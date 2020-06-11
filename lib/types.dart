import 'package:flutter/material.dart';
import 'elements.dart';

class Types extends StatefulWidget {
  @override
  _TypesState createState() => _TypesState();
}

class _TypesState extends State<Types> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    appBar: AppBar(
        title: Text('Properties Types'),
        centerTitle: true,
        backgroundColor: Colors.pink,
      ),
      drawer: Drawer(
       child:  DrawerElements()
      ),
      body: GridView.count(crossAxisCount: 2,
      children: <Widget>[
        _getElement('assets/apartment.jpg','Apartments'),
        _getElement('assets/office.jpg','Office'),
        _getElement('assets/rentals.jpg','Rentals'),
        _getElement('assets/land.jpg','Land'),
        _getElement('assets/resort.jpg','Resorts'),
        _getElement('assets/residential.jpg','Residentials'),
        _getElement('assets/hotel.jpg','Hotels'),
        _getElement('assets/club.jpg','Clubs'),
      ],
      )
   );
  }
}
class _getElement extends StatelessWidget {
  final String path;
  final String title;
  _getElement(this.path,this.title);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:(){
        print(title);
      },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                alignment: Alignment.center,
        width: 250,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [
                Colors.black,
                Colors.pink
              ]
          )
        ),
        child:ListTile(
          title: Image.asset(path,
          width: 200,
          height: 140,
          fit: BoxFit.cover),
          subtitle:Padding(
            padding: const EdgeInsets.only(left:25.0),
            child: Text(title,
            style: TextStyle(backgroundColor: Colors.pink,
            color: Colors.white,
            fontFamily: 'Times New Roman',
            fontSize: 20
            )
            ),
          )
        )
      ),
            ),
    );
  }
}