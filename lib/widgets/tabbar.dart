// import 'dart:js';
import 'package:flutter/material.dart';
import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:offrode/models/offrode.dart';
// import 'package:offrode/widgets/item_widget.dart';

class MyBrandTab extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new MyBrandTabState();
}

class MyBrandTabState extends State<MyBrandTab> {
  @override
  Widget build(BuildContext context) {
    @override
    void initState() {
      super.initState();
      loadData();
    }

     loadData() async {
      await Future.delayed(Duration(seconds: 2));
      final offrodeJson =
          await rootBundle.loadString("assets/files/offrode.json");
      final decodedData = jsonDecode(offrodeJson);
      var productsData = decodedData["products"];
      OffrodeModel.items = List.from(productsData)
          .map<Item>((item) => Item.fromMap(item))
          .toList();
      setState(() {});
    }

    return DefaultTabController(
      initialIndex: 1,
      length: 5,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(92.0),
          child: AppBar(
            backgroundColor: Colors.black12,
            toolbarHeight: kMinInteractiveDimension,
            bottom: new PreferredSize(
              preferredSize: new Size(200.0, 200.0),
              child: new Container(
                child: TabBar(
                  isScrollable: true,
                  labelColor: Colors.redAccent,
                  unselectedLabelColor: Colors.white,
                  indicatorSize: TabBarIndicatorSize.label,
                  indicator: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(width: 4.0, color: Colors.orange[900]),
                    ),
                  ),
                  indicatorColor: Colors.orange[900],
                  tabs: <Widget>[
                    SizedBox(
                      height: 90,
                      child: Tab(
                        icon: new Image.asset(
                          'assets/images/shell.png',
                          width: 88,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 90,
                      child: Tab(
                        icon: new Image.asset(
                          'assets/images/havoline.png',
                          width: 88,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 90,
                      child: Tab(
                        icon: new Image.asset(
                          'assets/images/total.png',
                          width: 88,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 90,
                      child: Tab(
                        icon: new Image.asset(
                          'assets/images/zik.png',
                          width: 88,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 90,
                      child: Tab(
                        icon: new Image.asset(
                          'assets/images/shell.png',
                          width: 88,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Center(
              child: (OffrodeModel.items != null &&
                      OffrodeModel.items.isNotEmpty)
                  ? GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 16,
                        crossAxisSpacing: 16,
                      ),
                      itemBuilder: (context, index) {
                        final item = CatalogModel.items[index];
                        return Card(
                            clipBehavior: Clip.antiAlias,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            child: GridTile(
                              header: Container(
                                child: Text(
                                  item.name,
                                  style: TextStyle(color: Colors.white),
                                ),
                                padding: const EdgeInsets.all(12),
                                decoration: BoxDecoration(
                                  color: Colors.deepPurple,
                                ),
                              ),
                              child: Image.network(
                                item.image,
                              ),
                              footer: Container(
                                child: Text(
                                  item.price.toString(),
                                  style: TextStyle(color: Colors.white),
                                ),
                                padding: const EdgeInsets.all(12),
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                ),
                              ),
                            ));
                      },
                      itemCount: CatalogModel.items.length,
                    )
                  : Center(
                      child: CircularProgressIndicator(),
                    ),
            ),
            Center(
              child: Text('It\'s rainy here'),
            ),
            Center(
              child: Text('It\'s sunny here'),
            ),
            Center(
              child: Text('It\'s rainy here'),
            ),
            Center(
              child: Text('It\'s sunny here'),
            ),
          ],
        ),
      ),
    );
  }
}
