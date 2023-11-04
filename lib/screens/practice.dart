import 'package:flutter/material.dart';
class Practice extends StatefulWidget {
  const Practice({Key? key}) : super(key: key);

  @override
  State<Practice> createState() => _PracticeState();
}

class _PracticeState extends State<Practice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Row(
          children: [
            Column(
              children: [
                Row(
                  children: [
                    Padding(padding: padding)
                  ],
                )
              ],
            ),
            Column(),
            Row(),
            Center(),
            SingleChildScrollView(),
            
            Center(
              child: Column(
                
              ),
            )
            ,
            
          ],
        ),
      ),
      
    );
  }
}
