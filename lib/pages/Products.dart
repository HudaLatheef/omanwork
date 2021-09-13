import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:omanwork/pages/Features.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  int _current = 0;
  List imgList = [
    'assets/littlehearts.jpg',
    'assets/little1.jpg',
    'assets/little2.jpg',
    'assets/little3.jpg',
  ];
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
              // ignore: missing_required_param
              IconButton(
                icon: Icon(
                  Icons.home,
                  color: Colors.black,
                ),
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
            Stack(
              children: [
                Container(
                  color: Colors.white,
                  child: Column(
                    children: [
                      CarouselSlider(
                        items: [
                          //1st Image of Slider
                          Padding(
                            padding: const EdgeInsets.all(50.0),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                image: DecorationImage(
                                  image: AssetImage("assets/littlehearts.jpg"),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ),

                          //2nd Image of Slider
                          Padding(
                            padding: const EdgeInsets.all(50.0),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                image: DecorationImage(
                                  image: AssetImage("assets/little1.jpg"),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ),

                          //3rd Image of Slider
                          Padding(
                            padding: const EdgeInsets.all(50.0),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                image: DecorationImage(
                                    image: AssetImage("assets/little2.jpg"),
                                    fit: BoxFit.fill),
                              ),
                            ),
                          ),

                          //4th Image of Slider
                          Padding(
                            padding: const EdgeInsets.all(50.0),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                image: DecorationImage(
                                  image: AssetImage("assets/little3.jpg"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),

                          //5th Image of Slider
                        ],

                        //Slider Container properties
                        options: CarouselOptions(
                            height: size.height * 0.48,
                            enlargeCenterPage: true,
                            autoPlay: false,
                            aspectRatio: 21 / 9,
                            autoPlayCurve: Curves.fastOutSlowIn,
                            enableInfiniteScroll: false,
                            autoPlayAnimationDuration:
                                Duration(milliseconds: 800),
                            viewportFraction: 1.0,
                            onPageChanged: (index, reason) {
                              setState(() {
                                _current = index;
                              });
                            }),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: imgList.map(
                          (image) {
                            int index = imgList.indexOf(image);
                            return Container(
                              width: 8.0,
                              height: 8.0,
                              margin: EdgeInsets.symmetric(
                                  vertical: 10.0, horizontal: 6.0),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: _current == index
                                      ? Color.fromRGBO(0, 0, 0, 0.9)
                                      : Color.fromRGBO(0, 0, 0, 0.4)),
                            );
                          },
                        ).toList(), // this was the part the I had to add
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 20,
                  left: 20,
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
            Divider(
              height: 10,
              thickness: 4,
              color: Colors.grey[400],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Britannia Classic Little Hearts Biscuits 75g',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text('Delivered As per slot Selection')),
                )
              ],
            ),
            Divider(
              height: 10,
              thickness: 4,
              color: Colors.grey[400],
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Summary',
                        style: TextStyle(color: Colors.green[600]),
                      )),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 20, right: 10, top: 10, bottom: 10),
                    child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text('•Little Hearts Biscuits')),
                  ),
                ],
              ),
            ),
            Divider(
              height: 10,
              thickness: 4,
              color: Colors.grey[400],
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Features',
                        style: TextStyle(color: Colors.green[600]),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Features()));
                        },
                                              child: Row(
                          children: [
                            Text(
                              'see all',
                              style: TextStyle(color: Colors.green[600]),
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.green[600],
                              size: 15,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(
                  color: Colors.grey,
                  indent: 10,
                  endIndent: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Text('Brand'),
                      Padding(
                        padding: const EdgeInsets.only(left: 200),
                        child: Text('Britanina'),
                      )
                    ],
                  ),
                ),
                Divider(
                  height: 10,
                  thickness: 4,
                  color: Colors.grey[400],
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.check_circle_rounded,
                            color: Colors.grey,
                            size: 15,
                          ),
                          Text(
                            '  Available For Click & Collect',
                            style: TextStyle(color: Colors.green[600]),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                Divider(
                  height: 10,
                  thickness: 4,
                  color: Colors.grey[400],
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Container(
                        height: size.height * 0.05,
                        width: size.width * 0.90,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            border: Border.all(
                              color: Colors.green[600],
                              width: 2,
                            )),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 9),
                          child: Text(
                            'WRITE A REVIEW',
                            style: TextStyle(
                              color: Colors.green[600],
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                    Divider(
                      height: 10,
                      thickness: 4,
                      color: Colors.grey[400],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.screen_share_sharp,
                                color: Colors.green,
                              ),
                              Text(
                                '  Share',
                                style: TextStyle(
                                  color: Colors.green[600],
                                ),
                              )
                            ],
                          ),
                          Icon(Icons.arrow_forward_ios,color: Colors.green[600],)
                        ],
                      ),
                    ),
                    Divider(
                      height: 10,
                      thickness: 8,
                      color: Colors.grey[400],
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.grey[300],
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'OMR 0.750',
                style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),
              ),
              Container(
                height: size.height * 0.05,
                width: size.width * 0.30,
                decoration: BoxDecoration(
                  color: Colors.white,
                    borderRadius: BorderRadius.circular(4),
                    border: Border.all(
                      color: Colors.green[600],
                      width: 2,
                    )),
                child: Padding(
                  padding: const EdgeInsets.only(top: 9),
                  child: Text(
                    'ADD',
                    style: TextStyle(
                      color: Colors.green[600],
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
