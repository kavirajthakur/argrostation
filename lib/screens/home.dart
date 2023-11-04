import 'package:argrostation/screens/phone.dart';
import 'package:argrostation/screens/profile.dart';
import 'package:flutter/material.dart';
import 'category_page.dart';
class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: Colors.white,
          ),
          onPressed: () {
            // Add your menu functionality here
          },
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 40),
            child: SizedBox(
              height: 70,
              width: 150,
              child: Image.asset('assets/logo.png'),
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyPhone()),
              );
            },
            child: Text(
              'Log out',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              SizedBox(
                height: 170,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 10),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [Image.asset(
                      'assets/grid2.jpg',
                      fit: BoxFit.cover,
                    ),
                      SizedBox(width: 10,),
                      Image.asset('assets/grid2.jpg'),
                      SizedBox(width: 10,),
                      Image.asset('assets/grid1.jpg'),
                      SizedBox(width: 10,),
                      Image.asset('assets/grid2.jpg'),

                  ]
                  ),
                ),
              ),
              Padding(
                padding:
                const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Stack(
                      children: [
                        InkWell(
                          onTap: () {

                          },
                          child: Container(
                            decoration: BoxDecoration(
                                boxShadow: const [
                                  BoxShadow(
                                    color: Colors.grey,
                                    offset: Offset(0, 1),
                                    // Shadow position, adjust as needed
                                    blurRadius:
                                    5, // Shadow blur radius, adjust as needed
                                  ),
                                ],
                                border:
                                Border.all(width: 3, color: Colors.white)),
                            child: Image.asset(
                              'assets/img2.jpg',
                              height: 200,
                              width: 150,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Positioned.fill(
                            child: Column(
                              children: [
                                const Spacer(),
                                Container(
                                  height: 30,
                                  decoration: BoxDecoration(
                                      color: Colors.black.withOpacity(0.5)),
                                  child: Center(
                                      child: Text(
                                        'Todays Deal',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                  ),
                                ),
                              ],
                            ))
                      ],
                    ),
                    const Spacer(),
                    Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(boxShadow: const [
                            BoxShadow(
                              color: Colors.grey,
                              offset: Offset(0, 1),
                              // Shadow position, adjust as needed
                              blurRadius:
                              5, // Shadow blur radius, adjust as needed
                            ),
                          ], border: Border.all(width: 3, color: Colors.white)),
                          child: Image.asset(
                            'assets/img3.jpg',
                            height: 200,
                            width: 150,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Positioned.fill(
                          child: Column(
                            children: [
                              const Spacer(),
                              Container(
                                height: 30,
                                decoration: BoxDecoration(
                                    color: Colors.black.withOpacity(0.5)),
                                child: Center(
                                    child: Text(
                                      'Drape Sarees without',
                                      style: TextStyle(color: Colors.white),
                                    )),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(boxShadow: const [
                            BoxShadow(
                              color: Colors.grey,
                              offset: Offset(0, 1),
                              // Shadow position, adjust as needed
                              blurRadius:
                              5, // Shadow blur radius, adjust as needed
                            ),
                          ], border: Border.all(width: 3, color: Colors.white)),
                          child: Image.asset(
                            'assets/img3.jpg',
                            height: 200,
                            width: 150,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Positioned.fill(
                            child: Column(
                              children: [
                                const Spacer(),
                                Container(
                                  height: 30,
                                  decoration: BoxDecoration(
                                      color: Colors.black.withOpacity(0.5)),
                                  child: Center(
                                      child: Text(
                                        'Todays Deal',
                                        style: TextStyle(color: Colors.white),
                                      )),
                                ),
                              ],
                            ))
                      ],
                    ),
                    Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(boxShadow: const [
                            BoxShadow(
                              color: Colors.grey,
                              offset: Offset(0, 1),
                              // Shadow position, adjust as needed
                              blurRadius:
                              5, // Shadow blur radius, adjust as needed
                            ),
                          ], border: Border.all(width: 3, color: Colors.white)),
                          child: Image.asset(
                            'assets/img4.jpg',
                            height: 200,
                            width: 150,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Positioned.fill(
                          child: Column(
                            children: [
                              const Spacer(),
                              Container(
                                height: 30,
                                decoration: BoxDecoration(
                                    color: Colors.black.withOpacity(0.5)),
                                child:Center(
                                    child: Text(
                                      'Drape Sarees without',
                                      style: TextStyle(color: Colors.white),
                                    )),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(boxShadow: const [
                            BoxShadow(
                              color: Colors.grey,
                              offset: Offset(0, 1),
                              // Shadow position, adjust as needed
                              blurRadius:
                              5, // Shadow blur radius, adjust as needed
                            ),
                          ], border: Border.all(width: 3, color: Colors.white)),
                          child: Image.asset(
                            'assets/img5.jpg',
                            height: 200,
                            width: 150,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Positioned.fill(
                            child: Column(
                              children: [
                                const Spacer(),
                                Container(
                                  height: 30,
                                  decoration: BoxDecoration(
                                      color: Colors.black.withOpacity(0.5)),
                                  child: Center(
                                      child: Text(
                                        'Todays Deal',
                                        style: TextStyle(color: Colors.white),
                                      )),
                                ),
                              ],
                            ))
                      ],
                    ),
                    const Spacer(),
                    Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(boxShadow: const [
                            BoxShadow(
                              color: Colors.grey,
                              offset: Offset(0, 1),
                              // Shadow position, adjust as needed
                              blurRadius:
                              5, // Shadow blur radius, adjust as needed
                            ),
                          ], border: Border.all(width: 3, color: Colors.white)),
                          child: Image.asset(
                            'assets/img6.jpg',
                            height: 200,
                            width: 150,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Positioned.fill(
                          child: Column(
                            children: [
                              const Spacer(),
                              Container(
                                height: 30,
                                decoration: BoxDecoration(
                                    color: Colors.black.withOpacity(0.5)),
                                child:Center(
                                    child: Text(
                                      'Drape Sarees without',
                                      style: TextStyle(color: Colors.white),
                                    )),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.orange.shade50,
        currentIndex: _currentIndex,
        onTap: (int index) {
          // Handle tab switching here
          setState(() {
            _currentIndex = index;
          });
        },
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.white,
        items: [
          BottomNavigationBarItem(
            icon: IconButton(
              icon: Icon(Icons.home),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomeScreen()),
                );
              },
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              icon: Icon(Icons.category),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CategoryScreen()),
                );
              },
            ),
            label: 'categories',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              icon: Icon(Icons.add_shopping_cart),
              onPressed: () {
                // Handle favorite button press
              },
            ),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              icon: Icon(Icons.person),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Profile()),
                );
              },
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
