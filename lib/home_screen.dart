import 'package:adidas/buildGridItem.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border(
              top: BorderSide(color: Colors.black.withOpacity(0.2)),
              bottom: BorderSide(color: Colors.black.withOpacity(0.2)),
            ),
          ),
          child: Row(
            children: [
              const Padding(
                padding: EdgeInsets.all(15),
                child: Icon(Icons.search_rounded),
              ),
              Container(
                margin: const EdgeInsets.only(left: 10),
                child: Text(
                  "Find products",
                  style: TextStyle(color: Colors.black.withOpacity(0.5)),
                ),
              ),
            ],
          ),
        ),
        Row(
          children: [
            TextButton(
              onPressed: () {},
              child: const Text(
                "WOMEN",
                style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: const Text(
                "MEN",
                style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: const Text(
                "KIDS",
                style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
          ],
        ),
        Expanded(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Image.asset("assets/Images/promotions.jpg"),
                Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Colors.black.withOpacity(0.5),
                      ),
                    ),
                  ),
                  child: ListTile(
                    minVerticalPadding: 0,
                    leading: Image.asset(
                      "assets/Images/shoes.png",
                      width: 35,
                      height: 35,
                    ),
                    title: const Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Text("SHOES"),
                    ),
                    trailing: const Icon(Icons.arrow_forward_ios_rounded),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Colors.black.withOpacity(0.5),
                      ),
                    ),
                  ),
                  child: ListTile(
                    minVerticalPadding: 0,
                    leading: Image.asset(
                      "assets/Images/polo-shirt.png",
                      width: 35,
                      height: 35,
                    ),
                    title: const Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Text("CLOTH"),
                    ),
                    trailing: const Icon(Icons.arrow_forward_ios_rounded),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Colors.black.withOpacity(0.5),
                      ),
                    ),
                  ),
                  child: ListTile(
                    minVerticalPadding: 0,
                    leading: Image.asset(
                      "assets/Images/hat.png",
                      width: 35,
                      height: 35,
                    ),
                    title: const Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Text("ACCESSORIES"),
                    ),
                    trailing: const Icon(Icons.arrow_forward_ios_rounded),
                  ),
                ),
                // GridView.count(
                //   padding: EdgeInsets.all(5),
                //   crossAxisCount: 2,
                //   children: List.generate(4, (index) {
                //     return Container(
                //       height: 50,
                //       decoration: BoxDecoration(
                //         color: Colors.grey[200],
                //         borderRadius: BorderRadius.circular(8),
                //       ),
                //       child: const Center(child: Text('Grid Item 1')),
                //     );
                //   }),
                // ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: GridView.count(
                    childAspectRatio:
                        2, //ใช้กำหนดความสูงของแต่ละ Widget ใน Gridview
                    shrinkWrap: true,
                    crossAxisCount: 2,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    children: [
                      _buildGridItem(Icons.percent, 'SALE'),
                      _buildGridItem(Icons.directions_run, 'SPORT'),
                      _buildGridItem(
                          Icons.local_fire_department, 'NEW & TRENDING'),
                      _buildGridItem(Icons.card_giftcard, 'GIFT CARDS'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildGridItem(IconData icon, String label) {
    return Container(
      height: 20,
      decoration: BoxDecoration(
        border: Border.all(width: 0.5),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 30),
          const SizedBox(height: 2),
          Text(
            label,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 12,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
