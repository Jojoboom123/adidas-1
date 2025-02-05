import 'package:flutter/material.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            "SHOP",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          actions: <Widget>[
            Container(
              margin: EdgeInsets.only(right: 20),
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.person_outline_rounded,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
        body: Column(
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
                  Padding(
                    padding: EdgeInsets.all(15),
                    child: Icon(Icons.search_rounded),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10),
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
                  child: Text(
                    "WOMEN",
                    style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "MEN",
                    style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "KIDS",
                    style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ),
              ],
            ),
            Image.asset("Images/sample.png"),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(color: Colors.black.withOpacity(0.5),),
                      ),
                    ),
                    child: ListTile(
                      minVerticalPadding: 0,
                      leading: Image.asset("Images/shoes_icon.png",width: 35,height: 35,),
                      title: Padding(padding: EdgeInsets.only(left: 10),child: Text("SHOES"),),
                      trailing: Icon(Icons.arrow_forward_ios_rounded),
                      
                    ),
                  ),
                   Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(color: Colors.black.withOpacity(0.5),),
                      ),
                    ),
                    child: ListTile(
                      minVerticalPadding: 0,
                      leading: Image.asset("Images/cloth.png",width: 35,height: 35,),
                      title: Padding(padding: EdgeInsets.only(left: 10),child: Text("CLOTH"),),
                      trailing: Icon(Icons.arrow_forward_ios_rounded),
                      
                    ),
                  ),
                   Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(color: Colors.black.withOpacity(0.5),),
                      ),
                    ),
                    child: ListTile(
                      minVerticalPadding: 0,
                      leading: Image.asset("Images/accessories.png",width: 35,height: 35,),
                      title: Padding(padding: EdgeInsets.only(left: 10),child: Text("ACCESSORIES"),),
                      trailing: Icon(Icons.arrow_forward_ios_rounded),                      
                    ),
                  ),
                ],
              ),
              ),
               
            ),
            
          ],
        ),
      ),
    );
  }
}
