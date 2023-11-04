import 'package:argrostation/screens/home.dart';
import 'package:argrostation/screens/profile.dart';
import 'package:flutter/material.dart';
import 'Homi.dart';
import 'Itempage.dart';
import 'category_container.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  int _selectedTabIndex = 0;
  void _onTabTapped(int index) {
    setState(() {
      _selectedTabIndex = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Home()),
            );
          },
        ),
        title: const Text(
          'CATEGORY',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CategoryContainer(
                    image: 'assets/img1.jpg',
                    name: 'Detailed names',
                    amount: 'Rs 3100',
                  ),
                  CategoryContainer(
                    image: 'assets/img9.jpg',
                    name: 'Detailed names',
                    amount: 'Rs 3100',
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CategoryContainer(
                    image: 'assets/img10.jpg',
                    name: 'Detailed names',
                    amount: 'Rs 3100',
                  ),
                  CategoryContainer(
                    image: 'assets/img7.jpg',
                    name: 'Detailed names',
                    amount: 'Rs 3100',
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CategoryContainer(
                    image: 'assets/img5.jpg',
                    name: 'Detailed names',
                    amount: 'Rs 3100',
                  ),
                  CategoryContainer(
                    image: 'assets/img1.jpg',
                    name: 'Detailed names',
                    amount: 'Rs 3100',
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        // backgroundColor:  Color(0xFF00A368),
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.black54,
        currentIndex: _selectedTabIndex,
        onTap: _onTabTapped,

        items: [
          BottomNavigationBarItem(
            icon: IconButton(
              icon: Icon(Icons.home),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => Home(),
                  ),
                );

              },
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              icon: Icon(Icons.category),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => CategoryScreen(),
                  ),
                );
              },
            ),
            label: 'Category',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              icon: Icon(Icons.shopping_cart),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => Itempage(),
                  ),
                );
              },
            ),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              icon: Icon(Icons.person),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => Profile(),
                  ),
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