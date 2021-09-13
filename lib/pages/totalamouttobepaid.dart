

import 'package:flutter/material.dart';
import 'package:omanwork/pages/Cart.dart';

import 'MyHomePage.dart';
 class Total extends StatefulWidget {
   @override
   _TotalState createState() => _TotalState();
 }
 
 class _TotalState extends State<Total> {
   @override
   Widget build(BuildContext context) {
     Size size = MediaQuery.of(context).size;
     return Scaffold(
       appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          color: Colors.black,
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Cart()),
            );
          },
        ),
        title: Text(
          'Cart',
          style: TextStyle(color: Colors.green[400]),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            color: Colors.black,
            icon: Icon(Icons.home),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyHomePage()),
              );
            },
          )
        ],
      ),
       body: SingleChildScrollView(
         child: Column(
           children: [
             Container(
               height: size.height*0.06,
               color: Colors.green[600],
               child: Align(alignment: Alignment.center,
                 child: Text('ORDER SUMMARY',style: TextStyle(color: Colors.white,fontSize: 17),)),
             ),
             Padding(
               padding: const EdgeInsets.only(left: 20,right: 20,top: 15, bottom: 15),
               child: Column(
                 children: [
                   Align(
                     alignment: Alignment.centerLeft,
                     child: Text('GRAND TOTAL', style:TextStyle(color: Colors.grey[800],fontSize: 18),)),
                   Padding(
                     padding: const EdgeInsets.only(top: 7),
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         Text('Subtotal', style: TextStyle(color: Colors.grey, fontSize: 16),),
                         Text('OMR 17.55', style: TextStyle(color: Colors.grey),),
                       ],
                     ),
                   ),
                   Padding(
                     padding: const EdgeInsets.only(top: 7),
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         Text('Delivery', style: TextStyle(color: Colors.grey, fontSize: 16),),
                         Text('OMR 1.555', style: TextStyle(color: Colors.grey),),
                       ],
                     ),
                   ),

                 ],
               ),
             ), 
             Divider(color: Colors.grey,height: 1,),
             Padding(
               padding: const EdgeInsets.only(left: 20,right: 20,top: 15, bottom: 15),
               child: Column(
                 children: [
                   Padding(
                     padding: const EdgeInsets.only(top: 0),
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         Text('Total Payable', style: TextStyle(color: Colors.grey, fontSize: 16),),
                         Text('OMR 19.055', style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),),
                       ],
                     ),
                   ),

                 ],
               ),
             ),
           ],
         ),

       ),
     );
   }
 }