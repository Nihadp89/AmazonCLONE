import 'package:flutter/material.dart';
import 'package:flutter_application_2/par2.dart';
import 'package:flutter_application_2/part3.dart';
import 'package:flutter_application_2/part4.dart';

void main() {
  runApp(k());
}

var colornavigationbar = Colors.black;

class k extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: s(),
    );
  }
}

class s extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MainApp();
  }
}

class MainApp extends State<s> {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          toolbarHeight: 80,
          backgroundColor: Color.fromARGB(131, 96, 251, 246),
          title: TextField(
            decoration: InputDecoration(
              prefixIcon: const Icon(
                Icons.search,
                color: Colors.black,
              ),
              suffixIcon: IconButton(
                icon: const Icon(Icons.qr_code_scanner_sharp),
                color: Colors.grey,
                onPressed: () {},
              ),
              filled: true,
              fillColor: Colors.grey[200],
              hintText: 'Search Amazon.in',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
                borderSide: const BorderSide(
                  color: Colors.grey,
                ),
              ),
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: colornavigationbar,
                ),
                label: 'FIRST'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                  color: colornavigationbar,
                ),
                label: 'SECOND'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.gif_rounded,
                  color: colornavigationbar,
                ),
                label: 'THIRD'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.shopping_cart,
                  color: colornavigationbar,
                ),
                label: 'FOURTH'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.menu,
                  color: colornavigationbar,
                ),
                label: 'FIFTH')
          ],
        ),
        body: ListView(
          children: [
            Container(
              color: const Color.fromARGB(226, 135, 228, 231),
              width: 100,
              height: 40,
            ),
            Container(
              color: const Color.fromARGB(225, 255, 255, 255),
              width: MediaQuery.of(context).size.width,
              height: 70,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  /*Text('FIRST DA'),
                  Text('FIRST DA'),
                  Text('FIRST DA'),
                  Text('FIRST DA'),
                  Text('FIRST DA'),
                  Text('FIRST DA'),
                  Text('FIRST DA'),
                  Text('FIRST DA'),
                  Text('FIRST DA'),
                  Text('FIRST DA'),
                  Text('FIRST DA'),
                  Text('FIRST DA'),
                  */
                  f(Icons.abc, Colors.amber, 1),
                  f(Icons.abc, Colors.blue, 2),
                  shane(text: 'hi', Icon: Icons.abc, onTap:(){
                    setState(() {
                      print('jijj');
                    });
                  })
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  f(a, c, [b]) {
    return GestureDetector(
        onTap: () {
          if (b == 1) {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => h()));
          } else if (b == 2) {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => y()));
          }
          
        },
        child: Container(
          color: c,
          child: Icon(a),
        ));
  }
}
