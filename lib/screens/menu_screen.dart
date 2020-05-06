import 'package:duck_fil_a_ui/models/menu.dart';
import 'package:duck_fil_a_ui/screens/meal_detail.dart';
import 'package:duck_fil_a_ui/widgets/circle_tab_indicator.dart';
import 'package:flutter/material.dart';

class MenuScreen extends StatelessWidget {
  static const Color accentColor = Color(0xFF8C4A7B);

  final List<Tab> myTabs = <Tab>[
    for (int i = 0; i < tabMenu.length; i++)
      Tab(
        child: Text(
          tabMenu[i].name,
          style: TextStyle(
            color: accentColor,
          ),
        ),
      ),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabMenu.length,
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: accentColor,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home), title: SizedBox.shrink()),
              BottomNavigationBarItem(
                  icon: Icon(Icons.featured_play_list),
                  title: SizedBox.shrink()),
              BottomNavigationBarItem(
                  icon: Icon(Icons.favorite), title: SizedBox.shrink()),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), title: SizedBox.shrink()),
            ]),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: Padding(
            padding: EdgeInsets.only(left: 16.0),
            child: IconButton(
              icon: Icon(Icons.search),
              color: Theme.of(context).accentColor,
              iconSize: 30.0,
              onPressed: () {},
            ),
          ),
          actions: <Widget>[
            Padding(
              padding: EdgeInsets.only(right: 16.0),
              child: IconButton(
                icon: Icon(Icons.shopping_basket),
                color: Theme.of(context).accentColor,
                iconSize: 30.0,
                onPressed: () {},
              ),
            ),
          ],
          bottom: TabBar(
            unselectedLabelStyle: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.normal,
            ),
            labelStyle: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
            indicator: CircleTabIndicator(color: accentColor, radius: 3),
            tabs: myTabs,
          ),
        ),
        body: Stack(
          children: <Widget>[
            Container(
              color: accentColor,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30.0),
                  bottomRight: Radius.circular(30.0),
                ),
                color: Colors.white,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 30.0),
              child: TabBarView(
                physics: NeverScrollableScrollPhysics(),
                children: [
                  for (int i = 0; i < tabMenu.length; i++)
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      child: PageView.builder(
                        controller: PageController(
                          viewportFraction: 0.68,
                        ),
                        itemCount: tabMenu.length,
                        itemBuilder: (context, ind) {
                          Meal meal = tabMenu[i].meals[ind];
                          return InkWell(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => MealDetail(meal),
                                ),
                              );
                            },
                            child: Column(
                              children: <Widget>[
                                Hero(
                                  tag: meal.imagePath,
                                                                  child: Image(
                                    height: 450.0,
                                    fit: BoxFit.contain,
                                    image: AssetImage(meal.imagePath),
                                  ),
                                ),
                                Align(
                                    alignment: Alignment.center,
                                    child: Text(
                                      meal.name,
                                      style: TextStyle(
                                        color: accentColor,
                                      ),
                                    )),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    color: Colors.redAccent,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 32.0, vertical: 8.0),
                    child: Text(
                      'View',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
