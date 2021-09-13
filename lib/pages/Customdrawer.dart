import 'package:flutter/material.dart';
import 'package:omanwork/pages/Categories.dart';
import 'package:omanwork/pages/MyFavouriteList.dart';
import 'package:omanwork/pages/others.dart';

import 'MyHomePage.dart';

class CustomDrawer extends StatefulWidget {
  @override
  _CustomDrawerState createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween ,
        children: [
          Column(children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 40,left: 10,right: 10,bottom: 30),
              child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3),
                    border: Border.all(
                      color: Colors.green,
                      width: 2,
                    ),
                  ),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            "ALL CATEGORIES",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.green,
                            ),
                          ),
                        ),
                        IconButton(
                            icon: Icon(Icons.arrow_forward_ios),
                            color: Colors.green,
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Categories()),
                              );
                            }),
                      ])),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15,bottom: 15),
              child: Column(
                children: [
                  Container(
                      child: Row(children: [
                    Icon(Icons.home_filled),
                    SizedBox(width: 10),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(

                              // ignore: missing_required_param
                              builder: (context) => MyHomePage()),
                        );
                      },
                      child: Text(
                        "Home",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                        ),
                      ),
                    )
                  ])),
                ],
              ),
              
            ),
            Divider(color: Colors.grey,indent: 12,endIndent: 12,height: 1,),
            
            Padding(
              padding: const EdgeInsets.only(left: 15,bottom: 15),
              child: Container(
                  child: Row(children: [
                Icon(Icons.shopping_bag),
                SizedBox(width: 10),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(

                          // ignore: missing_required_param
                          builder: (context) => MyHomePage()),
                    );
                  },
                  child: Text(
                    "My Orders",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.normal,
                      color: Colors.black,
                    ),
                  ),
                )
              ])),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15,bottom: 15),
              child: Container(
                  child: Row(children: [
                Icon(Icons.favorite),
                SizedBox(width: 10),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(

                          // ignore: missing_required_param
                          builder: (context) => MyFavouriteList()),
                    );
                  },
                  child: Text(
                    "My Favourite List",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.normal,
                      color: Colors.black,
                    ),
                  ),
                )
              ])),
            ),
            Divider(color: Colors.grey,indent: 12,endIndent: 12,height: 1,),
            
            Padding(
              padding: const EdgeInsets.only(left: 15,bottom: 15),
              child: Container(
                  child: Row(children: [
                Icon(Icons.help_rounded),
                SizedBox(width: 10),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(

                          // ignore: missing_required_param
                          builder: (context) => MyHomePage()),
                    );
                  },
                  child: Text(
                    "Help",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.normal,
                      color: Colors.black,
                    ),
                  ),
                )
              ])),
            ),
            
            Padding(
              padding: const EdgeInsets.only(left: 15,bottom: 15),
              child: Container(
                  child: Row(children: [
                Icon(Icons.feedback_rounded),
                SizedBox(width: 10),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(

                          // ignore: missing_required_param
                          builder: (context) => Others()),
                    );
                  },
                  child: Text(
                    "Others",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.normal,
                      color: Colors.black,
                    ),
                  ),
                )
              ])),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15,bottom: 15),
              child: Container(
                  child: Row(
                children: [
                  Icon(Icons.thumb_up),
                  SizedBox(width: 10),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(

                            // ignore: missing_required_param
                            builder: (context) => MyHomePage()),
                      );
                    },
                    child: Text(
                      "Feedback",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                      ),
                    ),
                  )
                ],
              )),
            ),
          ]),
          Column(
            children: [
              Padding(
              padding: const EdgeInsets.only(bottom: 2),
              child: Container(
                padding: EdgeInsets.only( right: 20),
                
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black26, blurRadius: 6, offset: Offset(0, 2)),
                    ]),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(color: Colors.green),
                      child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Icon(Icons.person_rounded,color: Colors.white,),
                    )),// ignore: missing_required_param
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(

                              // ignore: missing_required_param
                              builder: (context) => MyHomePage()),
                        );
                      },
                      child: Text(
                        "My Account",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.green,
                      size: 25,
                    )
                  ],
                ),
              ),
            )
            ],
          )
        ],
      ),
    );
  }
}
