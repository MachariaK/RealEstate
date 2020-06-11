import 'package:flutter/material.dart';

class Contact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact Us'),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 28.0),
            child: Icon(Icons.email),
          )
        ],
      ),
      body: SingleChildScrollView(
              child: Padding(
          padding: const EdgeInsets.all(0.0),
          child: Column(
            children: <Widget>[
              Container(
                height: 200,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors:[
                      Colors.pink,
                      Colors.black
                    ]
                  ),
                ),
                child: Center(
                  child:ListView(
                    children:<Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left:80.0),
                        child: ListTile(
                          title: Text('info@mechantservices.co.ke',style:TextStyle(
                            fontFamily:'Times New Roman',fontWeight: FontWeight.bold,
                            color: Colors.white
                            )),
                          leading: Icon(Icons.email,color: Colors.white),
                          dense: true,
                        ),
                      ),
                      Divider(color: Colors.pink,),
                      Padding(
                        padding: const EdgeInsets.only(left:80.0),
                        child: ListTile(
                          title: Text('0704922042',style:TextStyle(
                            fontFamily:'Times New Roman',fontWeight: FontWeight.bold,
                            color: Colors.white
                            )),
                          leading: Icon(Icons.phone,color: Colors.white),
                          dense: true,
                        ),
                      ),
                      Divider(color: Colors.pink),
                      Padding(
                        padding: const EdgeInsets.only(left:80.0),
                        child: ListTile(
                          title: Text('Mbagathi street of Jogoo road',style:TextStyle(
                            fontFamily:'Times New Roman',fontWeight: FontWeight.bold,
                            color: Colors.white
                            )),
                          leading: Icon(Icons.location_on,color: Colors.white),
                          dense: true,
                        ),
                      ),
                    ]
                  )
                  )
              ),
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors:[
                      Colors.green,
                      Colors.pink
                    ]
                  )
                ),
                height: 400,
                child:Center(
                  child: ListView(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(left:100,top:40),
                           child: Text('Send Us A Direct Message\n',style:TextStyle(
                          color: Colors.white
                        )),
                      ),
                       Padding(
                        padding: const EdgeInsets.only(left:20.0),
                        child: ListTile(
                          title:TextField(
                            decoration: InputDecoration(
                              labelText: 'Enter your Phone Number',
                              labelStyle:TextStyle(
                                color:Colors.white
                              )
                            ),
                          ),
                          dense: true,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left:20.0),
                        child: ListTile(
                          title:TextField(
                            decoration: InputDecoration(
                              labelText: 'Enter your Phone Number',
                              labelStyle:TextStyle(
                                color:Colors.white
                              )
                            ),
                          ),
                          dense: true,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left:20.0),
                        child: ListTile(
                          title:TextField(
                            decoration: InputDecoration(
                              labelText: 'Enter your Phone Number',
                              labelStyle:TextStyle(
                                color:Colors.white
                              )
                            ),
                          ),
                          dense: true,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left:20.0),
                        child: MaterialButton(
                              color: Colors.pink,
                              textColor: Colors.white,
                              splashColor: Colors.deepPurpleAccent,
                              onPressed: ()=>{
                                print('Button Clicked')
                              },
                              child:Text(
                                'Send'
                              )
                            )
                      ),
                    ],
                  )
                )
              ),
            ],
          ),
        ),
      ),
    );
  }
}