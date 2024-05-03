import 'package:flutter/material.dart';
import 'package:flutter_gradient_app_bar/flutter_gradient_app_bar.dart';
import 'package:fan_carousel_image_slider/fan_carousel_image_slider.dart';

void main() {
  runApp(Amazoncloneapp());
}

var backgroundColors = Color.fromARGB(255, 0, 76, 130);
var navigationscolor = Colors.white;
var h = ['hi', 'di'];
var carrevsellimages = [
  "https://images.unsplash.com/photo-1557700836-25f2464e845d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=627&q=80",
  "https://images.unsplash.com/photo-1669462277329-f32f928a4a79?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80",
  "https://images.unsplash.com/photo-1542840410-3092f99611a3?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80",
];

class Amazoncloneapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: StateForamazon(),
    );
  }
}

class StateForamazon extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MainApp();
  }
}

class MainApp extends State<StateForamazon> {
  var selcterindex = 0;
  onItemtapped(index) {
    setState(() {
      selcterindex = index;
    });
  }

  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
              backgroundColor: backgroundColors,
              title: TextField(
                  decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Colors.blue, width: 2.0), // Set border color
                ),
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.black,
                  size: 30,
                ),
                suffixIcon: IconButton(
                  icon: Icon(
                    Icons.qr_code_scanner_sharp,
                    size: 30,
                  ),
                  color: Colors.black,
                  onPressed: () {},
                ),
                filled: true,
                fillColor: Colors.white,
                hintText: 'Search Amazonclone.in',
                hintStyle: TextStyle(fontStyle: FontStyle.italic),
              ))),
          body: Container(
              color: Colors.white,
              child: ListView(children: [
                Container(
                  width: 100,
                  height: 40,
                  color: backgroundColors,
                ),
                Container(
                  color: backgroundColors,
                  width: MediaQuery.of(context).size.width,
                  height: 70,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      ImagedReuseStateBar(
                          imagepath: 'assets/image1.png',
                          name: 'Phone',
                          onTap: () {
                            print('HLSLL');
                          }),
                      ImagedReuseStateBar(
                          imagepath: 'assets/image2.jpeg',
                          name: 'Fresh',
                          onTap: () {
                            print('hello');
                          }),
                      ImagedReuseStateBar(
                          imagepath: 'assets/image3.jpeg',
                          name: 'Home',
                          onTap: () {
                            print('hello');
                          }),
                      ImagedReuseStateBar(
                          imagepath: 'assets/image4.jpeg',
                          name: 'Fashion',
                          onTap: () {
                            print('hello');
                          }),
                      ImagedReuseStateBar(
                          imagepath: 'assets/image5.webp',
                          name: 'Mini tv',
                          onTap: () {
                            print('HLSLL');
                          }),
                      ImagedReuseStateBar(
                          imagepath: 'assets/image6.jpg',
                          name: 'Electronics',
                          onTap: () {
                            print('hello');
                          }),
                      ImagedReuseStateBar(
                          imagepath: 'assets/image7.webp',
                          name: 'Deals',
                          onTap: () {
                            print('hello');
                          }),
                      ImagedReuseStateBar(
                          imagepath: 'assets/image8.webp',
                          name: 'Makeup',
                          onTap: () {
                            print('HLSLL');
                          }),
                      ImagedReuseStateBar(
                          imagepath: 'assets/image9.jpg',
                          name: 'Books',
                          onTap: () {
                            print('hello');
                          }),
                      ImagedReuseStateBar(
                          imagepath: 'assets/image10.png',
                          name: 'Appliances',
                          onTap: () {
                            print('hello');
                          }),
                      ImagedReuseStateBar(
                          imagepath: 'assets/image11.webp',
                          name: 'Essentials',
                          onTap: () {
                            print('HLSLL');
                          }),
                    ],
                  ),
                ),
                FanCarouselImageSlider(
                  currentItemShadow: [BoxShadow(color: Colors.transparent)],
                  imagesLink: carrevsellimages,
                  imageFitMode: BoxFit.cover,
                  isAssets: false,
                  sliderHeight: 400,
                  sliderWidth: 3000,
                ),
                Container(
                  height: 150,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      CardResueFunction(imageforcard: carrevsellimages[0]),
                      CardResueFunction(imageforcard: carrevsellimages[1]),
                      CardResueFunction(imageforcard: carrevsellimages[2]),
                      //CardResueFunction(),
                      //CardResueFunction(),
                    ],
                  ),
                ),
                Container(
                  color: Colors.blue,
                  height: 400,
                ),
                Container(
                  color: const Color.fromARGB(255, 79, 243, 33),
                  height: 400,
                ),
              ])),
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: backgroundColors,
            currentIndex: selcterindex,
            selectedItemColor: Colors.amber[800],
            onTap: onItemtapped,
            items: [
              BottomNavigationBarItem(
                  backgroundColor: backgroundColors,
                  icon: Icon(
                    Icons.home,
                    color: navigationscolor,
                  ),
                  label: ''),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.person,
                    color: navigationscolor,
                  ),
                  label: ''),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.square,
                    color: navigationscolor,
                  ),
                  label: ''),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.shopping_cart,
                    color: navigationscolor,
                  ),
                  label: ''),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.menu,
                    color: navigationscolor,
                  ),
                  label: ''),
            ],
          ),
        ));
  }
}

ImagedReuseStateBar({imagepath, onTap, name}) {
  return GestureDetector(
      onTap: onTap,
      child: Column(children: [
        Image.asset(
          imagepath,
          width: 70,
          height: 50,
          scale: 1,
        ),
        Text(name)
      ]));
}

CardResueFunction({required imageforcard}) {
  return Card(
      child: Stack(fit: StackFit.loose, children: [
    Image.network(
      imageforcard,
    ),
    Container(
      width: 130,
      height: 10,
      child: ListTile(),
    )
  ]));
}
