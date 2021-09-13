import 'package:flutter/material.dart';
import 'package:omanwork/pages/ProductsList.dart';

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            color: Colors.black,
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () => Navigator.of(context).pop("MyHomePage"),
          ),
          // ignore: missing_required_param
          title: Text(
            'Categories',
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 14, right: 10, top: 10),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // ignore: missing_required_param
                      Row(
                        children: [
                          // ignore: missing_required_param
                          IconButton(
                            iconSize: 10.0,
                            icon: Image.asset("assets/Grocerys.png"),
                          ),
                          Text(
                            "GROCERY",
                            style: TextStyle(fontSize: 20.0),
                          ),
                        ],
                      ),

                      IconButton(
                          icon: Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.green[400],
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Grocery()),
                            );
                          })
                    ]),
              ),
              Divider(
                color: Colors.grey,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 14, right: 10, top: 10),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          // ignore: missing_required_param
                          IconButton(
                              iconSize: 10.0,
                              icon: Image.asset("assets/11.png")),
                          Text(
                            "FRESH FOOD",
                            style: TextStyle(fontSize: 20.0),
                          ),
                        ],
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.green[400],
                        ),
                        onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => FreshFoods()),
                            );
                          })
                      
                    ]),
              ),
              Divider(
                color: Colors.grey,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 14, right: 10, top: 10),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          // ignore: missing_required_param
                          IconButton(
                              iconSize: 10.0,
                              icon: Image.asset("assets/Grocerys.png")),
                          Text(
                            "PERSONAL CARE",
                            style: TextStyle(fontSize: 20.0),
                          ),
                        ],
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.green[400],
                        ),
                       onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => FreshFoods()),
                            );}
                      )
                    ]),
              ),
              Divider(
                color: Colors.grey,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 14, right: 10, top: 10),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          // ignore: missing_required_param
                          IconButton(
                              iconSize: 10.0,
                              icon: Image.asset("assets/Electronic.png")),
                          Text(
                            "HOME CARE",
                            style: TextStyle(fontSize: 20.0),
                          ),
                        ],
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.green[400],
                        ),
                       onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => FreshFoods()),
                            );}
                      )
                    ]),
              ),
              Divider(
                color: Colors.grey,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 14, right: 10, top: 10),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          // ignore: missing_required_param
                          IconButton(
                              iconSize: 10.0,
                              icon: Image.asset("assets/beauty.png")),
                          Text(
                            "BABY CARE",
                            style: TextStyle(fontSize: 20.0),
                          ),
                        ],
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.green[400],
                        ),
                        onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => FreshFoods()),
                            );}
                      )
                    ]),
              ),
              Divider(
                color: Colors.grey,
              ),
            ],
          ),
        ));
  }
}

class Grocery extends StatefulWidget {
  @override
  _GroceryState createState() => _GroceryState();
}

class _GroceryState extends State<Grocery> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          color: Colors.black,
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () => Navigator.of(context).pop("Categories"),
        ),
        // ignore: missing_required_param
        title: Text(
          'Groceries',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: <Widget>[
                ExpansionTile(
                  // ignore: missing_required_param
                  leading: IconButton(
                    iconSize: 10.0,
                    icon: Image.asset("assets/Grocerys.png"),
                  ),
                  title: Text(
                    "Food Cupboard",
                    style:
                        TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500),
                  ),
                  children: <Widget>[
                    Tile('Breafast and spreads'),
                    Tile('Cold Beverages'),
                    Tile('Hot Beverages'),
                    Tile('World Foods'),
                    Tile('Frozen Food'),
                    Tile('Canned Food'),
                    Tile('Baking and Sweeteners'),
                    Tile('Dressing and Table Sauces'),
                    Tile('Cooking Ingredients'),
                  ],
                ),
                Divider(
                  color: Colors.grey,height: 0,
                ),
                ExpansionTile(
                  // ignore: missing_required_param
                  leading: IconButton(
                      iconSize: 10.0, icon: Image.asset("assets/11.png")),
                  title: Text(
                    " Baby Food",
                    style:
                        TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500),
                  ),
                  children: <Widget>[
                    Tile('Baby Drinks'),
                    Tile('Baby Food'),
                  ],
                ),
                Divider(
                  color: Colors.grey,height: 0,
                ),
                ExpansionTile(
                  // ignore: missing_required_param
                  leading: IconButton(
                      iconSize: 10.0, icon: Image.asset("assets/beauty.png")),
                  title: Text(
                    "grocery deals",
                    style:
                        TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500),
                  ),
                  children: <Widget>[
                    Tile('Chips and Snacks Deals'),
                    Tile('Fresh Food Deals'),
                  ],
                ),
                Divider(
                  color: Colors.grey,height: 0,
                ),
                
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class FreshFoods extends StatefulWidget {
  @override
  _FreshFoodsState createState() => _FreshFoodsState();
}

class _FreshFoodsState extends State<FreshFoods> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          color: Colors.black,
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () => Navigator.of(context).pop("Categories"),
        ),
        // ignore: missing_required_param
        title: Text(
          'Fresh Foods',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: <Widget>[
                ExpansionTile(
                  // ignore: missing_required_param
                  leading: IconButton(
                    iconSize: 10.0,
                    icon: Image.asset("assets/Grocerys.png"),
                  ),
                  title: Text(
                    "Dairy Eggs & Cheese",
                    style:
                        TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500),
                  ),
                  children: <Widget>[
                    Tile('Frwsh Dairy'),
                    Tile('Butter & Margarine '),
                    Tile('Hot Beverages'),
                    Tile('Cheese'),
                    Tile('Eggs'),
                  ],
                ),
                Divider(
                  color: Colors.grey,height: 0,
                ),
                ExpansionTile(
                  // ignore: missing_required_param
                  leading: IconButton(
                      iconSize: 10.0, icon: Image.asset("assets/11.png")),
                  title: Text(
                    " Bakery",
                    style:
                        TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500),
                  ),
                  children: <Widget>[
                    Tile('Cakes'),
                    Tile('Breads'),
                    Tile('Bread Rolls'),
                    Tile('Arabic Breads & Flat Rolls'),
                    Tile('Doughnut & Muffinss'),
                    Tile('croissants & Pastries '),
                    Tile('Savouries'),
                    Tile('Sweets'),
                  ],
                ),
                Divider(
                  color: Colors.grey,height: 0,
                ),
                ExpansionTile(
                  // ignore: missing_required_param
                  leading: IconButton(
                      iconSize: 10.0, icon: Image.asset("assets/beauty.png")),
                  title: Text(
                    "Fresh Juice & Salads",
                    style:
                        TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500),
                  ),
                  children: <Widget>[
                    Tile('Fresh Juice'),
                    Tile('Salads & Pizzas '),
                    Tile('Sandwiches & Burgers  '),
                  ],
                ),
                Divider(
                  color: Colors.grey,height: 0,
                ),
                ExpansionTile(
                  // ignore: missing_required_param
                  leading: IconButton(
                      iconSize: 10.0, icon: Image.asset("assets/11.png")),
                  title: Text(
                    "Fruits & Vegetables",
                    style:
                        TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500),
                  ),
                  children: <Widget>[
                    Tile('Fruits'),
                    Tile('Vegetables'),
                    Tile('Salad Vegetables'),
                    Tile('Fruits Cuts'),
                  ],
                ),
                Divider(
                  color: Colors.grey,height: 0,
                ),
                ExpansionTile(
                  // ignore: missing_required_param
                  leading: IconButton(
                      iconSize: 10.0, icon: Image.asset("assets/11.png")),
                  title: Text(
                    "Fresh Meat & Sea Food",
                    style:
                        TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500),
                  ),
                  children: <Widget>[
                    Tile('Fresh Beef & Veal'),
                    Tile('Fresh Lamb & Mutton'),
                    Tile('Fresh Fish'),
                  ],
                ),
                Divider(
                  color: Colors.grey,height: 0,
                ),
                ExpansionTile(
                  // ignore: missing_required_param
                  leading: IconButton(
                      iconSize: 10.0, icon: Image.asset("assets/11.png")),
                  title: Text(
                    "Fresh Chicken & Poultry ",
                    style:
                        TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500),
                  ),
                  children: <Widget>[
                    Tile('Fresh Chicken'),
                    Tile('Fresh Quail '),
                  ],
                ),
                Divider(
                  color: Colors.grey,height: 0,
                ),
                ExpansionTile(
                  // ignore: missing_required_param
                  leading: IconButton(
                      iconSize: 10.0, icon: Image.asset("assets/11.png")),
                  title: Text(
                    "Delecateseen ",
                    style:
                        TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500),
                  ),
                  children: <Widget>[
                    Tile('Cooked Meats'),
                    Tile('Olive & Pickles'),
                    Tile('Pasta & Tortillas'),
                  ],
                ),
                Divider(
                  color: Colors.grey,height: 0,
                ),
                ExpansionTile(
                  // ignore: missing_required_param
                  leading: IconButton(
                      iconSize: 10.0, icon: Image.asset("assets/11.png")),
                  title: Text(
                    "Ready Meals",
                    style:
                        TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500),
                  ),
                  children: <Widget>[
                    Tile('Bakes & Grills'),
                    Tile('Indian Meals'),
                  ],
                ),
                Divider(
                  color: Colors.grey,height: 0, 
                ),
                
              ],
            ),
          ],
        ),
      ),
    );
  }
  }
  
class PersonalCare extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}


class Tile extends StatelessWidget {
  final String text;

  Tile(
    this.text,
  );

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 30),
          child: ListTile(
            horizontalTitleGap: -10,
             onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => ProductList()));
          },
            leading: Icon(
              Icons.arrow_forward_ios,
              color: Colors.green[400],
              size: 17,
            ),
            title: Text(text),
          ),
        ),
        Divider(
          color: Colors.grey,
          height: 0.1,
          indent: 25,
          endIndent: 25,
        ),
      ],
    );
  }
}
