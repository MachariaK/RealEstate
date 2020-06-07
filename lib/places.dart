import 'package:flutter/material.dart';
import 'properties.dart';
import 'elements.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Places extends StatefulWidget {
  @override
  _PlacesState createState() => _PlacesState();
}

class _PlacesState extends State<Places> {
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
            child: Text('featured Property',
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