// import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'dart:convert';
// import 'package:offrode/models/catalog.dart';
import 'package:offrode/widgets/drawer.dart';
// import 'package:dropdown_search/dropdown_search.dart';
import 'package:offrode/widgets/main_banner.dart';
import 'package:offrode/widgets/tabbar.dart';

// import 'package:offrode/widgets/item_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Image.asset('assets/images/logo.png',
            height: 50.0, width: 50.0, fit: BoxFit.cover),
        actions: <Widget>[
          Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {},
                child: Icon(
                  CupertinoIcons.person_alt,
                  size: 26.0,
                ),
              )),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            child: mainBanner(),
          ),
          //  content
          Container(
              child: Center(
            child: Column(
              children: [
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20, bottom: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'About'.toUpperCase(),
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 32,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'offrode'.toUpperCase(),
                          style: TextStyle(
                              color: Colors.orange[900],
                              fontSize: 32,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Center(
                      child: Text(
                        'OffRode is a reliable brand, that provides oil changing services, at your door-step. Dealing in only cars at the moment, it not only offers oil changing services but also automated with digital reminders of when the next oil changing service is due. We, as a brand, also take responsibility of providing you and advising you regarding the best brand of oil that is most efficient for your car.',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 17),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 200.0,
                  decoration: BoxDecoration(
                    image: new DecorationImage(
                      fit: BoxFit.contain,
                      image: AssetImage('assets/images/contentbanner.png'),
                    ),
                  ),
                ),
              ],
            ),
          )),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
                child: Wrap(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'choose your'.toUpperCase(),
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.orange[900]),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Favourite oil brand'.toUpperCase(),
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                Container(
                  height: height / 2,
                  child: MyBrandTab(),
                )
              ],
            )),
          )
        ]),
      ),
      drawer: MyDrawer(),
    );
  }
}

// search input
