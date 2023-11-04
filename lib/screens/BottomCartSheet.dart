import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Homi.dart';
class BottomSheetCart extends StatefulWidget {
  const BottomSheetCart({Key? key}) : super(key: key);

  @override
  State<BottomSheetCart> createState() => _BottomSheetCartState();
}

class _BottomSheetCartState extends State<BottomSheetCart> {
  // Define a list of counters for each item
  List<int> itemCounters = List.filled(8, 1);

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
          'Cart',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: List.generate(8, (index) {
              return Container(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                decoration: BoxDecoration(
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
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Image.asset(
                        'assets/img1.jpg',
                        height: 80,
                        width: 80,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(bottom: 20),
                          child: Text(
                            'Item Title',
                            style: TextStyle(
                              color: Color(0xFF00a368),
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 8),
                          child: Text(
                            "\$20",
                            style: TextStyle(
                              color: Color(0xFF00a368),
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Icon(
                            Icons.disabled_by_default,
                            color: Color(0xFF00A368),
                            size: 28,
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.all(2),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 2,
                                      blurRadius: 8,
                                    ),
                                  ],
                                ),
                                child: GestureDetector(
                                  onTap: () {
                                    // Decrease the counter
                                    if (itemCounters[index] > 1) {
                                      setState(() {
                                        itemCounters[index]--;
                                      });
                                    }
                                  },
                                  child: Icon(CupertinoIcons.minus),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 10),
                                child: Text(
                                  itemCounters[index].toString(), // Display the counter
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(2),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 2,
                                      blurRadius: 8,
                                    ),
                                  ],
                                ),
                                child: GestureDetector(
                                  onTap: () {
                                    // Increase the counter
                                    setState(() {
                                      itemCounters[index]++;
                                    });
                                  },
                                  child: Icon(CupertinoIcons.plus),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            }),
          ),
        ),
      ),
    );
  }
}
