// import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:offrode/models/catalog.dart';
import 'package:offrode/widgets/drawer.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:offrode/widgets/main_banner.dart';
// import 'package:offrode/widgets/item_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final int days = 30;

  final String name = "Shakeel";

  get child => null;

  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 2));
    final catalogJson =
        await rootBundle.loadString("assets/files/catalog.json");
    final decodedData = jsonDecode(catalogJson);
    var productsData = decodedData["products"];
    CatalogModel.items = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item))
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
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
      body: mainBanner(),
      drawer: MyDrawer(),
    );
  }
}

// search input
 
