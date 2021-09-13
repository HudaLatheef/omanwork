import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:omanwork/pages/Cart.dart';
import 'package:omanwork/pages/Categories.dart';
import 'package:omanwork/pages/MyFavouriteList.dart';
import 'package:omanwork/pages/Products.dart';
import 'package:omanwork/pages/ProductsList.dart';

import 'Customdrawer.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          color: Colors.black,
          icon: Icon(Icons.menu),
          onPressed: () => Scaffold.of(context).openDrawer(),
                tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
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
                  Icons.location_on,
                  color: Colors.black,
                ),
              ),
               // ignore: missing_required_param
               IconButton(
                 onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Cart()),
                            );
                          },
                icon: Icon(
                  Icons.shopping_cart_outlined,
                  color: Colors.black,
                ),
              ),
            ],
          )
        ],
      ),
       drawer: CustomDrawer(),
      body: SingleChildScrollView(
        child: Column(
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
                    hintText: 'What are you looking for? ',
                    hintStyle: TextStyle(
                        fontSize: 16,
                        color: Colors.black45,
                        fontWeight: FontWeight.w600),
                    contentPadding: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(08.0),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.yellow,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
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
                            padding: const EdgeInsets.only(left: 8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Home Delivery',
                                  style: TextStyle(fontSize: 12),
                                ),
                                Text(
                                  'To Muscut, Al Khoudh',
                                  style: TextStyle(fontSize: 12),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            color: Colors.green,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Change',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ))
                    ],
                  ),
                ),
              ),
            ),
            Container(
              child: CarouselSlider(
                items: [
                  //1st Image of Slider
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      image: DecorationImage(
                        image: AssetImage("assets/b5.jpg"),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),

                  //2nd Image of Slider
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      image: DecorationImage(
                        image: AssetImage("assets/b2.jpg"),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),

                  //3rd Image of Slider
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      image: DecorationImage(
                          image: AssetImage("assets/b3.jpg"), fit: BoxFit.fill),
                    ),
                  ),

                  //4th Image of Slider
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      image: DecorationImage(
                        image: AssetImage("assets/b4.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                  //5th Image of Slider
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      image: DecorationImage(
                        image: AssetImage("assets/b6.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],

                //Slider Container properties
                options: CarouselOptions(
                  height: 180.0,
                  enlargeCenterPage: true,
                  autoPlay: true,
                  aspectRatio: 21 / 9,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enableInfiniteScroll: true,
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  viewportFraction: 1.0,
                ),
              ),
            ),
            Container(
              color: Colors.grey[200],
              child: Column(
                children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10, top: 10),
                        child: Text(
                          'Deal of the Week',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                      )),
                  Container(
                    height: size.height * 0.35,
                    color: Colors.grey[200],
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      children: [
                        Product("assets/idcoffee.jpg",
                            'iD Filter Coffee Decoction 150 ml (Cup)', '3.75'),
                        Product("assets/aashirvaad.jpg",
                            'Aashirvaad Whole Wheat Atta 1kg', '1.92'),
                        Product(
                            "assets/littlehearts.jpg",
                            'Britannia Classic Little Hearts Biscuits 75g',
                            '0.75'),
                        Product(
                            "assets/salt.jpg", 'Tata Rock Salt 1 kg', '4.95'),
                        Product("assets/sundropoil.jpg",
                            'Sundrop GoldLite Blended Oil 1L', '10.95'),
                        Product("assets/yippee.jpg",
                            'Sunfeast Yippee noodles 280g', '3.62'),
                      ],
                    ),
                  ),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding:
                            const EdgeInsets.only(left: 10, top: 10, right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Popular Categories',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                            GestureDetector(
                              onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Categories()));
                            },
                                                          child: Text(
                                'View All',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15),
                              ),
                            )
                          ],
                        ),
                      )),
                  Column(
                    children: [
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => MyFavouriteList()));
                            },
                            child: Category(Colors.blue[50], 'GROCERY',
                                'assets/Grocerys.png'),
                          ),
                          Category(
                              Colors.green[50], 'FRESH FOOD', 'assets/11.png'),
                          Category(Colors.deepOrange[50], 'GADGETS',
                              'assets/Grocerys.png'),
                        ],
                      ),
                      Row(
                        children: [
                          Category(Colors.purple[50], 'ELECTRONICS',
                              'assets/Electronic.png'),
                          Category(Colors.lime[50], 'HOME APPLIANCE',
                              'assets/Grocerys.png'),
                          Category(Colors.indigo[50], 'BEAUTY CARE',
                              'assets/beauty.png'),
                        ],
                      ),
                    ],
                  ),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 10, top: 10, bottom: 10),
                        child: Text(
                          'Supermarket',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                      )),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ProductList()));
                      },
                      child: Container(
                        height: size.height * 0.25,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/gro.jpg"),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 10, top: 10, bottom: 10),
                        child: Text(
                          'Groceries',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                      )),
                  Container(
                    height: size.height * 0.35,
                    color: Colors.grey[200],
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      children: [
                        Product("assets/kellogg.jpg",
                            'Kelloggs Corn Flakes With Real Honey 300g', '6.5'),
                        Product("assets/true.jpg",
                            'True Elements Baked Granola 350g', '1.92'),
                        Product("assets/soya.jpg",
                            'Fortune Soya Wadi / Chunks 200 g', '2.09'),
                        Product("assets/soup.jpg",
                            'Knorr Classic Thick Tomato Soup 53 g', '4.95'),
                        Product("assets/pickle.jpg",
                            'Double Horse Kaduku Mango Pickle 400 g', '10.95'),
                        Product("assets/maida.jpg", 'Maida 500 g', '3.62'),
                      ],
                    ),
                  ),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 10, top: 10, bottom: 10),
                        child: Text(
                          'Fresh food',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                      )),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Container(
                      height: size.height * 0.25,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/grocery3.jpg"),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 10, top: 10, bottom: 10),
                        child: Text(
                          'Fresh food',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                      )),
                  Container(
                    height: size.height * 0.35,
                    color: Colors.grey[200],
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      children: [
                        Product("assets/mango.jpg",
                            'Mango Totapuri 4 pcs(Approx 1200g-1400g)', '4.95'),
                        Product("assets/cauliflower.jpg",
                            'Cauliflower per Pc(Approx 600g-1000g)', '1.92'),
                        Product("assets/mushroom.jpg",
                            'Button Mushroom 200 g (Pack)', '2.09'),
                        Product(
                            "assets/ginger.jpg", 'Ginger Indian 200 g', '0.52'),
                        Product("assets/spinach.jpg",
                            'Baby Spinach (Approx 80 g - 200 g)', '3.54'),
                        Product("assets/dates.jpg",
                            'Dates Imported (Approx 400 g - 500 g)', '7.8'),
                      ],
                    ),
                  ),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 10, top: 10, bottom: 10),
                        child: Text(
                          'Personal Care',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                      )),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Container(
                      height: size.height * 0.25,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/PersonalCare.png"),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding:
                            const EdgeInsets.only(left: 10, top: 10, bottom: 0),
                        child: Text(
                          'Personal Care',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                      )),
                  Container(
                    height: size.height * 0.35,
                    color: Colors.grey[200],
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      children: [
                        Product(
                            "assets/dove.jpg",
                            'Dove Nutritive Solutions Intense Repair Shampoo9 650ml',
                            '2.32'),
                        Product(
                            "assets/palmolive.jpg",
                            'Palmolive Aroma Morning Tonic Shower Gel 250ml',
                            '5.30'),
                        Product("assets/nivea.jpg",
                            'Nivea Gentle Care Musk Talc 400 g', '7.88'),
                        Product("assets/listerine.jpg",
                            'Listerine Cool Mint Mouthwash 500 ml', '10.52'),
                        Product(
                            "assets/head.jpg",
                            'Head & Shoulders Anti-Dandruff Shampoo 180 ml',
                            '7.54'),
                        Product("assets/gillette.jpg",
                            'Gillette Guard Razor & Cartridge 6pcs', '1.5'),
                      ],
                    ),
                  ),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 10, top: 10, bottom: 10),
                        child: Text(
                          'Home Care',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                      )),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Container(
                      height: size.height * 0.25,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/homecare.jpg"),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 10, top: 10, bottom: 10),
                        child: Text(
                          'Home Care',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                      )),
                  Container(
                    height: size.height * 0.35,
                    color: Colors.grey[200],
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      children: [
                        Product(
                            "assets/lizol.jpg",
                            'Lizol Citrus Disinfectant Surface Cleaner 975 ml',
                            '7.00'),
                        Product(
                            "assets/tide.jpg",
                            'Tide Naturals Lemon & Chandan Detergent Powder 800 g',
                            '2.05'),
                        Product("assets/freshomz.jpg",
                            'Freshomz Pure Naphthalene Balls 100 g', '2.21.88'),
                        Product(
                            "assets/vim.jpg",
                            'Vim Lemon Concentrated Dishwash Gel 155 ml',
                            '2.00'),
                        Product(
                            "assets/odonil.jpg",
                            'Odonil Air Freshener Block Assorted 75 g (Buy 3 Get 1 Free)',
                            '9.23'),
                        Product("assets/pril.jpg",
                            'Pril Perfect Lime Dishwash Liquid 750 ml', '6.54'),
                      ],
                    ),
                  ),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 10, top: 10, bottom: 10),
                        child: Text(
                          'Baby Care',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                      )),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Container(
                      height: size.height * 0.25,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/baby.png"),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding:
                            const EdgeInsets.only(left: 10, top: 10, bottom: 0),
                        child: Text(
                          'Baby Care',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                      )),
                  Container(
                    height: size.height * 0.35,
                    color: Colors.grey[200],
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      children: [
                        Product("assets/himalaya.jpg",
                            'Himalaya Baby Powder 200 g', '06.12'),
                        Product(
                            "assets/pampers.jpg",
                            'Pampers Baby Dry Pants (M) 50 count (7 - 12 kg)',
                            '25.21'),
                        Product(
                            "assets/amul.jpg",
                            'Amulspray Infant Milk Food Tin Pack 500 g',
                            '10.00'),
                        Product("assets/johnson.jpg",
                            'Johnsons Baby Shampoo 100 ml', '4.91'),
                        Product(
                            "assets/johnsons.jpg",
                            'Head & Shoulders Anti-Dandruff Shampoo 180 ml',
                            '7.54'),
                        Product(
                            "assets/johnsonss.jpg",
                            'Johnsons Baby Soap 100 g (Buy 3 Get 1 Free)',
                            '9.21'),
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

class Product extends StatelessWidget {
  final String imagePath, title, price;

  Product(
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
            width: size.width * 0.38,
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
                      height: size.height * 0.12,
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

class Category extends StatelessWidget {
  final Color backgroundColor;
  final String title, imagePath;

  Category(
    this.backgroundColor,
    this.title,
    this.imagePath,
  );

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(left: 10, top: 10),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
        ),
        height: size.height * 0.16,
        width: size.width * 0.30,
        child: ColoredBox(
          color: backgroundColor,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 18),
                child: Text(
                  title,
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 13),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: size.height * 0.09,
                    width: size.width * 0.3,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(imagePath),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          // color
        ),
      ),
    );
  }
}
