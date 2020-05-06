import 'package:duck_fil_a_ui/models/menu.dart';
import 'package:flutter/material.dart';

class MealDetail extends StatelessWidget {
  static const routeName = '/mealDetalScreen';
  final Meal meal;
  MealDetail(this.meal);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Material(
        color: Theme.of(context).accentColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: size.width,
              width: size.width,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Stack(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      color: Theme.of(context).accentColor,
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(30.0),
                    child: Stack(children: <Widget>[
                      Positioned(
                        bottom: -60.0,
                        right: -160.0,
                        child: Hero(
                          tag: meal.imagePath,
                                                  child: Image(
                            height: size.width,
                            fit: BoxFit.contain,
                            image: AssetImage(meal.imagePath),
                          ),
                        ),
                      ),
                    ]),
                  ),
                  SafeArea(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(left: 8.0),
                          child: IconButton(
                            icon: Icon(Icons.arrow_back),
                            color: Theme.of(context).accentColor,
                            iconSize: 30.0,
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                        ),
                        Text(
                          meal.name,
                          style: TextStyle(
                            color: Theme.of(context).accentColor,
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 8.0),
                          child: IconButton(
                            icon: Icon(Icons.shopping_basket),
                            color: Theme.of(context).accentColor,
                            iconSize: 30.0,
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: size.width,
                    child: Padding(
                      padding: EdgeInsets.only(left: 32.0, top: 120.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            meal.name,
                            style: TextStyle(
                                fontSize: 18.0,
                                color: Colors.green,
                                fontWeight: FontWeight.w600),
                          ),
                          SizedBox(height: 80.0),
                          Row(
                            children: <Widget>[
                              Icon(
                                Icons.show_chart,
                                color: Colors.redAccent,
                              ),
                              SizedBox(width: 20.0),
                              Text(
                                '${meal.calories} calories',
                                style: TextStyle(
                                    fontSize: 16.0,
                                    color: Theme.of(context).accentColor,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                          SizedBox(height: 12.0),
                          Row(
                            children: <Widget>[
                              Icon(
                                Icons.star,
                                color: Colors.yellowAccent,
                              ),
                              SizedBox(width: 20.0),
                              Text(
                                '${meal.ratting}',
                                style: TextStyle(
                                    fontSize: 16.0,
                                    color: Theme.of(context).accentColor,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                          SizedBox(height: 12.0),
                          Row(
                            children: <Widget>[
                              Icon(
                                Icons.attach_money,
                                color: Colors.green,
                              ),
                              SizedBox(width: 20.0),
                              Text(
                                '\$${meal.price}',
                                style: TextStyle(
                                    fontSize: 16.0,
                                    color: Theme.of(context).accentColor,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 32.0, top: 32.0),
              child: Text(
                'Includes',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Container(
              height: size.width,
              child: ListView.builder(
                itemCount: meal.includes.length,
                itemBuilder: (context, ind) {
                  return Padding(
                    padding: EdgeInsets.only(left: 32.0, bottom: 25.0),
                    child: Container(
                      child: Row(
                        children: <Widget>[
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Stack(
                              children: <Widget>[
                                Container(
                                  height: 60.0,
                                  width: 60.0,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                  ),
                                ),
                                Positioned(
                                    left: -10.0,
                                    top: -10.0,
                                    child: Image.asset(
                                      meal.includes[ind].imagePath,
                                      height: 80.0,
                                      width: 80.0,
                                    )),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 25.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  meal.includes[ind].name,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16.0,
                                  ),
                                ),
                                SizedBox(height: 5.0),
                                Text(
                                  '${meal.includes[ind].calories} calories',
                                  style: TextStyle(
                                    color: Colors.white60,
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            )
           
          ],
        ),
      ),
    );
  }
}
