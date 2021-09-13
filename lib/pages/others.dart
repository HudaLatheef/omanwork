import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:omanwork/pages/Cart.dart';

class Others extends StatefulWidget {
  @override
  _OthersState createState() => _OthersState();
}

class _OthersState extends State<Others> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Others', style: TextStyle(color: Colors.green),),centerTitle: true,
        actions: [
          IconButton(icon: Icon(Icons.close, color: Colors.green,), onPressed: () => Navigator.of(context).pop("MyHomePage"),)
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                  Text('About Us', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),),
                  IconButton(
                   onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => AboutUs()),
                              );
                            },
                  icon: Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: Colors.green,
                  ),
                ),
                ],
              ),
            ),
            Divider(color: Colors.grey,height: 1,),
             Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                  Text('Contact Us', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),),
                  IconButton(
                   onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Cart()),
                              );
                            },
                  icon: Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: Colors.green,
                  ),
                ),
                ],
              ),
            ),
            Divider(color: Colors.grey,height: 1,),
             Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                  Text('Terms & Conditions', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),),
                  IconButton(
                   onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Cart()),
                              );
                            },
                  icon: Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: Colors.green,
                  ),
                ),
                ],
              ),
            ),
            Divider(color: Colors.grey,height: 1,),
             Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                  Text('Return Policy', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),),
                  IconButton(
                   onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Cart()),
                              );
                            },
                  icon: Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: Colors.green,
                  ),
                ),
                ],
              ),
            ),
            Divider(color: Colors.grey,height: 1,),
             Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                  Text('Privacy Policy', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),),
                  IconButton(
                   onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Cart()),
                              );
                            },
                  icon: Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: Colors.green,
                  ),
                ),
                ],
              ),
            ),
            Divider(color: Colors.grey,height: 1,),
          ],
        ),
      ),
    );
  }
}

class AboutUs extends StatefulWidget {
  @override
  _AboutUsState createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         leading: IconButton(icon: Icon(Icons.arrow_back_ios, color: Colors.green,), onPressed: () => Navigator.of(context).pop("MyHomePage"),) ,
        backgroundColor: Colors.white,
        title: Text('AboutUs', style: TextStyle(color: Colors.green),),centerTitle: true,
       
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('About Us', style: TextStyle(fontWeight: FontWeight.w700,fontSize: 18),),
              Padding(
                padding: const EdgeInsets.only(top: 14),
                child: Text('Oman Hypermarket, the retail division of the multidimensional and multinational Oman Group International has always been known as a trend setter of the retail industry in the region. Today, LuLu symbolizes quality retailing with 210 stores and is immensely popular with the discerning shoppers across the Gulf region.', style: TextStyle(fontSize: 16),),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 14),
                child: Text('With its pleasant and novel variation from the usual supermarkets, LuLu offers an ultra-modern shopping ambience by integrating all conceivable needs of the consumers under one roof. LuLu Hypermarkets have extensively laid out counters, sprawling parking spaces, play areas for children, food court, money exchange and bank counters besides a panoply of international and regional brands aptly justifying its tagline, LuLu, where the world comes to shops', style: TextStyle(fontSize: 16),),
              )
            ],
          ),
        ),
      ),
    );
  }
}