import 'package:flutter/material.dart';

import 'package:omanwork/pages/Products.dart';

class ProductList extends StatefulWidget {
  @override
  _ProductListState createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          color: Colors.black,
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () => Navigator.of(context).pop("MyHomePage"),
        ),
        // ignore: missing_required_param
        title: Align(
          alignment: Alignment.topCenter,
          // ignore: missing_required_param
          child: IconButton(
            iconSize: 100.0,
            icon: Image.asset(
              "assets/lululogo.png",
            ),
          ),
        ),
        actions: [
          Row(
            children: [
              IconButton(
                color: Colors.black,
                icon: Icon(Icons.home),
                onPressed: () => Navigator.of(context).pop("MyHomePage"),
              ),
              // ignore: missing_required_param
              IconButton(
                icon: Icon(
                  Icons.location_on,
                  color: Colors.black,
                ),
              ),
            ],
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: size.height * 0.9,
              child: ListView(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                          color: Colors.grey,
                          width: 2,
                        ),
                      ),
                      child: new TextField(
                        decoration: InputDecoration(
                          suffixIcon: Padding(
                            padding: const EdgeInsets.only(
                                right: 4.0, top: 0, bottom: 0, left: 2.0),
                            child: SizedBox(
                              width: 64.0,
                              // ignore: deprecated_member_use
                              child: FlatButton(
                                  onPressed: () {},
                                  child: Center(
                                    child: Icon(
                                      Icons.search,
                                      size: 30,
                                      color: Colors.black,
                                    ),
                                  )),
                            ),
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          hintText: 'search ',
                          hintStyle: TextStyle(
                              fontSize: 16,
                              color: Colors.black45,
                              fontWeight: FontWeight.w600),
                          contentPadding:
                              EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(08.0),
                          ),
                        ),
                      ),
                    ),
                  ),
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
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Productt("assets/yippee.jpg",
                              'Sunfeast Yippee noodles 280g', '3.62'),
                          Productt(
                              "assets/idcoffee.jpg",
                              'iD Filter Coffee Decoction 150 ml (Cup)',
                              '3.75'),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Productt("assets/aashirvaad.jpg",
                              'Aashirvaad Whole Wheat Atta 1kg', '1.92'),
                          Productt(
                              "assets/littlehearts.jpg",
                              'Britannia Classic Little Hearts Biscuits 75g',
                              '0.75'),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Productt(
                              "assets/salt.jpg", 'Tata Rock Salt 1 kg', '4.95'),
                          Productt("assets/sundropoil.jpg",
                              'Sundrop GoldLite Blended Oil 1L', '10.95'),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Productt("assets/kellogg.jpg",
                            'Kelloggs Corn Flakes With Real Honey 300g', '6.5'),
                          Productt(
                              "assets/soya.jpg",
                            'Fortune Soya Wadi / Chunks 200 g',
                            '2.09'),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Productt(
                            "assets/soup.jpg", 'Knorr Classic Thick Tomato Soup 53 g', '4.95'),
                          Productt("assets/pickle.jpg",
                            'Double Horse Kaduku Mango Pickle 400 g', '10.95'),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Productt("assets/maida.jpg",
                            'Maida 500 g', '3.62'),
                          Productt("assets/mango.jpg",
                            'Mango Totapuri 4 pcs(Approx 1200g-1400g)', '4.95'),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Productt("assets/cauliflower.jpg",
                            'Cauliflower per Pc(Approx 600g-1000g)', '1.92'),
                          Productt(
                              "assets/pampers.jpg",
                              'Pampers Baby Dry Pants (M) 50 count (7 - 12 kg)',
                              '25.21'),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Productt("assets/himalaya.jpg",
                              'Himalaya Baby Powder 200 g', '06.12'),
                          Productt(
                              "assets/pampers.jpg",
                              'Pampers Baby Dry Pants (M) 50 count (7 - 12 kg)',
                              '25.21'),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Productt("assets/himalaya.jpg",
                              'Himalaya Baby Powder 200 g', '06.12'),
                          Productt(
                              "assets/pampers.jpg",
                              'Pampers Baby Dry Pants (M) 50 count (7 - 12 kg)',
                              '25.21'),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Productt("assets/himalaya.jpg",
                              'Himalaya Baby Powder 200 g', '06.12'),
                          Productt(
                              "assets/pampers.jpg",
                              'Pampers Baby Dry Pants (M) 50 count (7 - 12 kg)',
                              '25.21'),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Productt("assets/himalaya.jpg",
                              'Himalaya Baby Powder 200 g', '06.12'),
                          Productt(
                              "assets/pampers.jpg",
                              'Pampers Baby Dry Pants (M) 50 count (7 - 12 kg)',
                              '25.21'),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Productt("assets/himalaya.jpg",
                              'Himalaya Baby Powder 200 g', '06.12'),
                          Productt(
                              "assets/pampers.jpg",
                              'Pampers Baby Dry Pants (M) 50 count (7 - 12 kg)',
                              '25.21'),
                        ],
                      ),
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

class Productt extends StatelessWidget {
  final String imagePath, title, price;

  Productt(
    this.imagePath,
    this.title,
    this.price,
  );

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(left: 8, top: 8, bottom: 8),
      child: Stack(
        children: [
          Container(
            width: size.width * 0.45,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(2),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      left: 25, right: 25, top: 25, bottom: 8),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Products()));
                    },
                    child: Container(
                      height: size.height * 0.15,
                      width: size.width * 0.8,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(imagePath),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: size.height * 0.07,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      '$title',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Text(
                    'OMR $price',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          border: Border.all(
                            color: Colors.grey,
                            width: 2,
                          )),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 20, right: 20, top: 6, bottom: 6),
                        child: Text('ADD'),
                      )),
                )
              ],
            ),
          ),
          Positioned(
            top: 7,
            left: 7,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                border: Border.all(color: Colors.grey[300]),
              ),
              child: Padding(
                padding: const EdgeInsets.all(3.0),
                child: Icon(
                  Icons.favorite_border,
                  size: 15,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
