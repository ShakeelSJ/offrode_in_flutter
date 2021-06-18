import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';

class mainBanner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Stack(
      children: [
        Container(
          height: 300.0,
          decoration: BoxDecoration(
            color: const Color(0xff000000),
            image: new DecorationImage(
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.7), BlendMode.dstATop),
              image: AssetImage('assets/images/home_bannner.jpg'),
            ),
          ),
        ),
        Positioned(
          top: 20.0,
          left: 25,
          height: 50,
          width: 180,
          child: Container(
            child: Container(
              height: 150.0,
              width: 250.0,
              color: Colors.transparent,
              child: Container(
                  decoration: BoxDecoration(
                      color: Colors.orange[900],
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.zero,
                        topRight: Radius.circular(100.0),
                        bottomLeft: Radius.zero,
                        bottomRight: Radius.zero,
                      )),
                  child: new Center(
                    child: new Text(
                      "Oil Change Adviser",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  )),
            ),
          ),
        ),
        Positioned(
          top: 70.0,
          left: 25,
          height: 211,
          width: 360,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(3.0),
                bottomRight: Radius.circular(3.0),
                bottomLeft: Radius.circular(3.0),
              ),
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: GridView(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 15,
                    childAspectRatio: 3,
                  ),
                  children: [
                    Container(
                      child: (DropdownSearch<String>(
                          mode: Mode.MENU,
                          showSelectedItem: true,
                          items: ["BMW", "AUDI", "HONDA", 'DAIHATSU'],
                          label: "Make",
                          hint: "country in menu mode",
                          onChanged: print,
                          selectedItem: "Make")),
                    ),
                    Container(
                      child: (DropdownSearch<String>(
                          mode: Mode.MENU,
                          showSelectedItem: true,
                          items: [
                            "3 Series",
                            "4 Series",
                            "2 Series",
                            '1 Series'
                          ],
                          label: "Model",
                          hint: "country in menu mode",
                          onChanged: print,
                          selectedItem: "Model")),
                    ),
                    Container(
                      child: (DropdownSearch<String>(
                          mode: Mode.MENU,
                          showSelectedItem: true,
                          items: ["2013", "2001", "2010", '2020'],
                          label: "Year",
                          hint: "country in menu mode",
                          onChanged: print,
                          selectedItem: "Year")),
                    ),
                    Container(
                      child: (DropdownSearch<String>(
                          mode: Mode.MENU,
                          showSelectedItem: true,
                          items: ["1600cc", "1700cc", "1800cc", '1900cc'],
                          label: "Engine",
                          hint: "country in menu mode",
                          onChanged: print,
                          selectedItem: "Engine")),
                    ),
                    Container(
                      child: (DropdownSearch<String>(
                          mode: Mode.MENU,
                          showSelectedItem: true,
                          items: [
                            "0 to 50000",
                            "4000 to 50000",
                            "10000 to 50000",
                            '0 to 100000',
                          ],
                          label: "Mileage",
                          hint: "country in menu mode",
                          onChanged: print,
                          selectedItem: "Mileage")),
                    ),
                    Container(
                      child: (DropdownSearch<String>(
                          mode: Mode.MENU,
                          showSelectedItem: true,
                          items: [
                            "Petrol",
                          ],
                          label: "Fuel  ",
                          hint: "country in menu mode",
                          onChanged: print,
                          selectedItem: "Fuel")),
                    ),
                  ]),
            ),
          ),
        ),
      ],
    );
  }
}
