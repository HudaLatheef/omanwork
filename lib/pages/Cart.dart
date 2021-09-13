import 'package:flutter/material.dart';
import 'package:omanwork/pages/MyHomePage.dart';
import 'package:omanwork/pages/Products.dart';
import 'package:omanwork/pages/totalamouttobepaid.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  int _n = 0;

  void add() {
    setState(() {
      _n++;
    });
  }

  void minus() {
    setState(() {
      if (_n != 0) _n--;
    });
  }

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
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
              MaterialPageRoute(builder: (context) => MyHomePage()),
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
              decoration: BoxDecoration(
                color: Colors.yellow,
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 12, right: 12, top: 5, bottom: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          color: Colors.black,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Home Delivery to Muscut, Al Khoudh',
                                style: TextStyle(fontSize: 12),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Column(
              children: [
                CartItem(
                    "assets/lizol.jpg",
                    'Lizol Citrus Disinfectant Surface Cleaner 975 ml',
                    'OMR 7.00'),
                CartItem(
                    "assets/tide.jpg",
                    'Tide Naturals Lemon & Chandan Detergent Powder 800 g',
                    'OMR 2.05'),
                CartItem("assets/freshomz.jpg",
                    'Freshomz Pure Naphthalene Balls 100 g', 'OMR 2.21'),
                CartItem("assets/vim.jpg",
                    'Vim Lemon Concentrated Dishwash Gel 155 ml', 'OMR 2.00'),
                CartItem(
                    "assets/odonil.jpg",
                    'Odonil Air Freshener Block Assorted 75 g (Buy 3 Get 1 Free)',
                    'OMR 9.23'),
                CartItem("assets/pril.jpg", 'Pril Perfect L750 ml', 'OMR 6.54'),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        color: Colors.grey[300],
        height: size.height * 0.10,
        child: Column(
          children: [
            Divider(
              color: Colors.grey,
              thickness: 5,
              height: 0,
            ),
            Padding(
              padding:
                  const EdgeInsets.only(top: 0, bottom: 0, right: 12, left: 12),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Total()));
                            },
                            child: Row(
                              children: [
                                Text(
                                  'TOTAL',
                                  style: TextStyle(color: Colors.green[800]),
                                ),
                                // ignore: missing_required_param
                                IconButton(
                                  color: Colors.black,
                                  icon: Icon(
                                    Icons.arrow_drop_up,
                                    color: Colors.green[400],
                                  ),
                                  
                                ),
                              ],
                            ),
                          ),
                          Text(
                            'OMR 19.055',
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                      Container(
                          decoration: BoxDecoration(
                            color: Colors.green[600],
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 10, bottom: 10, left: 12, right: 12),
                            child: Text(
                              'Checkout',
                              style: TextStyle(color: Colors.white),
                            ),
                          ))
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CartItem extends StatefulWidget {
  final String imagePath, title, price;

  CartItem(
    this.imagePath,
    this.title,
    this.price,
  );

  @override
  _CartItemState createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  int _n = 0;

  void add() {
    setState(() {
      _n++;
    });
  }

  void minus() {
    setState(() {
      if (_n != 0) _n--;
    });
  }

  @override
  // ignore: missing_return
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Dismissible(
      key: UniqueKey(),
      direction: DismissDirection.endToStart,
      background: Container(),
      secondaryBackground: Container(
        alignment: Alignment.centerRight,
        color: Color(0xffD63027),
        child: Padding(
          padding: const EdgeInsets.only(right: 20.0),
          child: Text(
            'Delete',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      onDismissed: (DismissDirection direction) {
        // ignore: unused_local_variable
        String actoin = direction == DismissDirection.endToStart
            ? "Delete"
            :
            // ignore: deprecated_member_use
            Scaffold.of(context).showSnackBar(SnackBar(
                content: Text('Item deleted'),
              ));
      },
      child: Column(
        children: [
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Products()));
                },
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    height: size.height * 0.07,
                    width: size.width * 0.18,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(widget.imagePath),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Products()));
                      },
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          widget.title,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            widget.price,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Row(
                            children: [
                              MaterialButton(
                                minWidth: 0,
                                onPressed: minus,
                                child: Container(
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 6, right: 6, top: 3, bottom: 3),
                                      child: new Icon(Icons.remove,
                                          color: Colors.black, size: 18),
                                    ),
                                    decoration: BoxDecoration(
                                        border: Border.all(color: Colors.grey),
                                        shape: BoxShape.rectangle,
                                        color: Colors.white)),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.grey),
                                    shape: BoxShape.rectangle,
                                    color: Colors.white),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10, right: 10, top: 2, bottom: 2),
                                  child: new Text('$_n',
                                      style: new TextStyle(fontSize: 15.0)),
                                ),
                              ),
                              MaterialButton(
                                minWidth: 0,
                                onPressed: add,
                                child: Container(
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 6, right: 6, top: 3, bottom: 3),
                                      child: new Icon(Icons.add,
                                          color: Colors.black, size: 18),
                                    ),
                                    decoration: BoxDecoration(
                                        border: Border.all(color: Colors.grey),
                                        shape: BoxShape.rectangle,
                                        color: Colors.white)),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          Divider(
            color: Colors.grey,
          ),
        ],
      ),
    );
  }
}
