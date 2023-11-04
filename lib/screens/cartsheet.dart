import 'package:flutter/material.dart';
import 'Homi.dart';

class CartSheet extends StatefulWidget {
  const CartSheet({Key? key}) : super(key: key);

  @override
  State<CartSheet> createState() => _CartSheetState();
}

class _CartSheetState extends State<CartSheet> {
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
          'CATEGORES',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            buildProductContainer('assets/img1.jpg', 'Seeds'),
            buildProductContainer('assets/img4.jpg', 'Machines'),
            buildProductContainer('assets/img5.jpg', 'Tools'),
            buildProductContainer('assets/img7.jpg', 'Pesticides'),
            buildProductContainer('assets/img10.jpg', 'Machines'),
          ],
        ),
      ),
    );
  }

  Widget buildProductContainer(String imagePath, String productName) {
    return Container(
      padding: EdgeInsets.all(10),
      height: 200,
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 8,
          ),
        ],
      ),
      child: Row(
        children: [
          Column(
            children: [
              TextButton(
                
                onPressed: () {
                  // Add your button click logic here
                },
                child: Container(
                  height: 30,
                  width:100,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(16)
                  ),
                  child: Padding(

                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      'Show more:->',
                      style: TextStyle(
                        color: Colors.orangeAccent,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text(
                productName,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: Image.asset(
              imagePath,
              width: 150,
            ),
          ),
        ],
      ),
    );
  }
}
