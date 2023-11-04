import 'package:flutter/material.dart';

import 'Itempage.dart';

class PopularItem extends StatefulWidget {
  final int numberOfItems;
  final List<String> imagePaths;

  PopularItem({Key? key, required this.numberOfItems, required this.imagePaths})
      : super(key: key);

  @override
  State<PopularItem> createState() => _PopularItemState();
}

class _PopularItemState extends State<PopularItem> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 500,
          child: GridView.count(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 2,
            childAspectRatio: 0.8,
            shrinkWrap: true,
            children: [
              for (int i = 0; i < widget.numberOfItems; i++)
                buildGridItem(i),
            ],
          ),
        ),
        Container(
          height: 100,
          color: Color(0xFF00A368), // Green color
          child: Center(
            child: Text(
              'Additional Content',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget buildGridItem(int index) {
    if (index < widget.imagePaths.length) {
      String imagePath = widget.imagePaths[index];

      return Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        margin: EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 8,
            ),
          ],
        ),
        child: Column(
          children: [
            InkWell(
              onTap: () {},
              child: Container(
                width: 80,
                height: 80,
                margin: EdgeInsets.all(10),
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Seeds',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF555555),
                    ),
                  ),
                ),
                SizedBox(
                  height: 2,
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '4Kg',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF555555),
                    ),
                  ),
                ),
                SizedBox(height: 2),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '\$20',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF00A368),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        height: 50,
                        width: 60,
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Color(0xFF00A368),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: IconButton(
                          color: Colors.white, onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => Itempage(),
                            ),
                          );

                        }, icon:  Icon(
                            Icons.add_shopping_cart,size: 25,
                        ),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      );
    } else {
      return Container();
    }
  }
}