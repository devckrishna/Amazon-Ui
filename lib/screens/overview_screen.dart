import 'package:amazon_ui/models/product_model.dart';
import 'package:amazon_ui/screens/cart_screen.dart';
import 'package:amazon_ui/widgets/product_crousel.dart';
import 'package:flutter/material.dart';

class OverviewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: InkWell(
            onTap: () => print("menu tapped"),
            child: Padding(
              padding: EdgeInsets.only(left: 15),
              child: Icon(
                Icons.menu,
                size: 30.0,
                color: Colors.black,
              ),
            )),
        title: Image(
          image: AssetImage("assets/images/amazon_logo.jpg"),
          height: 30.0,
        ),
        centerTitle: true,
        actions: <Widget>[
          Stack(
            children: [
              InkWell(
                onTap: () => Navigator.push(
                    context, MaterialPageRoute(builder: (_) => CartScreen())),
                child: Padding(
                  padding: EdgeInsets.only(top: 12.0, right: 20.0),
                  child: Icon(
                    Icons.shopping_cart,
                    size: 30.0,
                    color: Colors.black,
                  ),
                ),
              ),
              Positioned(
                bottom: 8.0,
                right: 16.0,
                child: Container(
                  height: 20.0,
                  width: 20.0,
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Center(
                    child: Text(
                      '5',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.all(5),
            child: Icon(
              Icons.search,
              size: 30.0,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: ListView(
        children: <Widget>[
          Stack(
            children: [
              Image(image: AssetImage('assets/images/samsung_gear_vr.jpg')),
              Positioned(
                  left: 20.0,
                  bottom: 30.0,
                  right: 20.0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'POPULAR',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        'The future of',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        'virtual reality',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 26.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 15.0),
                      Container(
                        padding: EdgeInsets.all(10.0),
                        height: 70.0,
                        width: double.infinity,
                        color: Colors.white,
                        child: Row(
                          children: [
                            Image(
                              image: AssetImage('assets/images/gear_vr.jpg'),
                              height: 50.0,
                            ),
                            SizedBox(width: 10.0),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'Samsung Gear VR',
                                  style: TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  'FOR GAMERS',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                            // SizedBox(width:10),
                            Expanded(
                                child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  width: 60.0,
                                  child: FlatButton(
                                      padding: EdgeInsets.all(10),
                                      color: Colors.orange,
                                      onPressed: () {},
                                      child: Icon(Icons.arrow_forward,
                                          size: 30, color: Colors.white)),
                                )
                              ],
                            ))
                          ],
                        ),
                      )
                    ],
                  ))
            ],
          ),
          SizedBox(height: 15),
          ProductCrousel(
            title: "Prime Day Deals",
            products: products,
          ),
          ProductCrousel(
            title: "Books",
            products: books,
          )
        ],
      ),
    );
  }
}
