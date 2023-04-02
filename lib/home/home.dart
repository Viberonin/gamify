import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:gamify/primary/game_list_cons.dart';
import 'package:gamify/primary/game_list_pc.dart';
import 'package:intl/intl.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

List<Widget> pages = [
  HomePage(),
];

String getGreeting() {
  var hour = DateTime.now().hour;
  String greeting;
  if(hour < 11) {
    greeting = 'Good morning';
  }
  else if(hour < 17) {
    greeting = 'Good afternoon';
  }
  else {
    greeting = 'Good evening';
  }
  return greeting;
}

class _HomePageState extends State<HomePage> with AutomaticKeepAliveClientMixin{
  @override
  bool get wantKeepAlive => true;

  int _selectedIndex = 0;

  static const List<BottomNavigationBarItem> _bottomNavBarItems = [
    BottomNavigationBarItem(icon: Icon(CupertinoIcons.home), label: 'Home',),
    BottomNavigationBarItem(icon: Icon(CupertinoIcons.square_list), label: 'Lists',),
    BottomNavigationBarItem(icon: Icon(CupertinoIcons.book), label: 'Details',),
    BottomNavigationBarItem(icon: Icon(CupertinoIcons.profile_circled), label: 'Profile',),
  ];

  final List<Widget> _pages = pages;

  List<String> _carouselImages = [
    'assets/images/codbo3.jpg',
    'assets/images/gtav.jpg',
    'assets/images/pubg.jpg',
    'assets/images/spidey.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF19507E),
      body: SafeArea(
        child: Column(
          children: [
            // Carousel image
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height / 4,
              child: CarouselSlider(
                options: CarouselOptions(
                  enableInfiniteScroll: true,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 3),
                  enlargeCenterPage: false,
                  aspectRatio: 16/10,
                  viewportFraction: 1.1,
                ),
                items: _carouselImages.map((image) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(horizontal: 1.0),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(image),
                            fit: BoxFit.cover,
                          ),
                        ),
                      );
                    },
                  );
                }).toList(),
              ),
            ),
            SizedBox(height: 20.0),
            // Game category cards
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Text(
                      '${getGreeting()}, User.',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Gotham Bold",
                      ),
                    ),
                      SizedBox(height: 5.0),
                      Text(
                        'What game are you looking for today?            ',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                          fontFamily: "Gotham Bold",
                        ),
                      ),
                    ],
                  ),
                    CircleAvatar(
                      radius: 35,
                      backgroundImage: AssetImage('assets/images/pp1.jpg'),
                    ),
                ],
              ),
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Explore Our Catalog',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontFamily: "Gotham Bold",
                  ),
                ),
              ],
            ),
            SizedBox(height: 45.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(35.0)
                  ),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => GameListCons()),
                      );
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(35.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width / 2.5,
                        height: MediaQuery.of(context).size.height / 2.5,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/console.jpg'),
                            colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.5), BlendMode.darken),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.gamepad, size: 50, color: Colors.white,),
                            SizedBox(height: 10.0),
                            Text('CONSOLE', style: TextStyle(color: Colors.white,fontSize: 20,
                              fontFamily: "Gotham Bold",),),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(35.0)
                  ),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => GameListPc()),
                      );
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(35.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width / 2.5,
                        height: MediaQuery.of(context).size.height / 2.5,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/pc.png'),
                            colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.5), BlendMode.darken),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(Icons.computer, size: 50, color: Colors.white),
                            SizedBox(height: 10.0),
                            Text('PC',style: TextStyle(color: Colors.white,fontSize: 20,
                              fontFamily: "Gotham Bold",),),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: CupertinoTabBar(
        backgroundColor: Colors.yellow,
        items: _bottomNavBarItems,
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}