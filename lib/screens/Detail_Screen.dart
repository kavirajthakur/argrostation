import 'package:argrostation/screens/upipayment.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFCFCFC),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image(image: AssetImage('assets/splash.png')),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Trendy Trench Set',
                  style: TextStyle(
                      fontSize: 30,
                      fontFamily: 'BigFont',
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 13,
                ),
                Text(
                  'Mango',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 13,
                ),
                Text(
                  'Our product are made using sustainable fibers or prosess that reduce their environmental impact',
                  style: TextStyle(fontSize: 17),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 22.0, right: 22),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    // Add your favorite button action here
                  },
                  child: Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(80),
                      color: Colors.white,
                      border: Border.all(color: Colors.grey),
                    ),
                    child: Icon(Icons.favorite, color: Colors.orange),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => UPI()));
                  },
                  child: Container(
                    height: 60,
                    width: 250,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(80),
                        color: Color(0xff161616)),
                    child: Center(
                      child: Text(
                        'Buy',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
