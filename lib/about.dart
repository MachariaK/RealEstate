import 'package:flutter/material.dart';

class About extends StatefulWidget {
  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Us')
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Colors.black,
            Colors.pink,
          ])
        ),
        child: Column(children: <Widget>[
          ListTile(
            leading:  CircleAvatar(
                backgroundColor: Colors.pink,
                maxRadius: 40,
                child: Icon(Icons.lightbulb_outline,size: 40.0,color: Colors.white), 
              ),
            title: ListTile(
              title: Text('Property Sales',
              style: TextStyle(
                fontSize: 20,
                decoration: TextDecoration.underline,
                fontWeight: FontWeight.bold,
                color: Colors.white
              )
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text('We offer Industry leading and acqusition services since we have enough years of experience in handling both the buyer and the seller. We thoroughly educate our clients prior to buying and selling ',
                style: TextStyle(
                  color:Colors.white
                )
                ),
              )
              )
          ),
          Divider(height: 50,),
          ListTile(
            leading:  CircleAvatar(
                backgroundColor: Colors.pink,
                maxRadius: 40,
                child: Icon(Icons.home,size: 40.0,color: Colors.white), 
              ),
            title: ListTile(
              title: Text('Property Management',
              style: TextStyle(
                fontSize: 20,
                decoration: TextDecoration.underline,
                fontWeight: FontWeight.bold,
                color: Colors.white
              )
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text('Property Management is our core competence. We have highly skilled managers who are always ready to serve and help meet the needs of our clients.',
                style: TextStyle(
                  color:Colors.white
                )),
              )
              )
          ),
          Divider(height: 50),
          ListTile(
            leading:  CircleAvatar(
                backgroundColor: Colors.pink,
                maxRadius: 40,
                child: Icon(Icons.dashboard,size: 40.0,color: Colors.white), 
              ),
            title: ListTile(
              title: Text('Property Renting',
              style: TextStyle(
                fontSize: 20,
                decoration: TextDecoration.underline,
                fontWeight: FontWeight.bold,
                color: Colors.white
              )
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text('We Have a complete and a well managed property listing service that suits variety of clients.We offer the best property letting services across Africa',
                style: TextStyle(
                  color:Colors.white
                )),
              )
              )
          ),
        ],)
      )
    );
  }
}