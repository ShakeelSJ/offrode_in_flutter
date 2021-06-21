// import 'package:dropdown_search/dropdown_search.dart';
import 'package:find_dropdown/find_dropdown.dart';
import 'package:flutter/material.dart';

class mainBanner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return new Column(
      children: [
        Container(
          height: 320.0,
          width: width,
          decoration: BoxDecoration(
            color: const Color(0xff000000),
            image: new DecorationImage(
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.7), BlendMode.dstATop),
              image: AssetImage('assets/images/home_bannner.jpg'),
            ),
          ),
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(32, 8, 0, 0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    height: 40.0,
                    width: 170.0,
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
                                fontSize: 14,
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        )),
                  ),
                ),
              ),
              Container(
                height: 218,
                width: width / 1.2,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(0),
                      topRight: Radius.circular(3.0),
                      bottomRight: Radius.circular(3.0),
                      bottomLeft: Radius.circular(3.0),
                    ),
                    color: Colors.white),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 17, 0, 0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            width: width / 3,
                            child: FindDropdown(
                              items: ["BMW", "Honda", "CVC", "Swift"],
                              // label: "País",
                              onChanged: (String item) => print(item),
                              selectedItem: "Make",
                              validate: (String item) {
                                if (item == null)
                                  return "Required field";
                                else if (item == "Brasil")
                                  return "Invalid item";
                                else
                                  return null; //return null to "no error"
                              },
                            ),
                          ),
                          Container(
                            width: width / 3,
                            child: FindDropdown(
                              items: ["BMW", "Honda", "CVC", "Swift"],
                              // label: "País",
                              onChanged: (String item) => print(item),
                              selectedItem: "Model",
                              validate: (String item) {
                                if (item == null)
                                  return "Required field";
                                else if (item == "Brasil")
                                  return "Invalid item";
                                else
                                  return null; //return null to "no error"
                              },
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            width: width / 3,
                            child: FindDropdown(
                              items: ["BMW", "Honda", "CVC", "Swift"],
                              // label: "País",
                              onChanged: (String item) => print(item),
                              selectedItem: "Make",
                              validate: (String item) {
                                if (item == null)
                                  return "Required field";
                                else if (item == "Brasil")
                                  return "Invalid item";
                                else
                                  return null; //return null to "no error"
                              },
                            ),
                          ),
                          Container(
                            width: width / 3,
                            child: FindDropdown(
                              items: ["BMW", "Honda", "CVC", "Swift"],
                              // label: "País",
                              onChanged: (String item) => print(item),
                              selectedItem: "Model",
                              validate: (String item) {
                                if (item == null)
                                  return "Required field";
                                else if (item == "Brasil")
                                  return "Invalid item";
                                else
                                  return null; //return null to "no error"
                              },
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            width: width / 3,
                            child: FindDropdown(
                              items: ["BMW", "Honda", "CVC", "Swift"],
                              // label: "País",
                              onChanged: (String item) => print(item),
                              selectedItem: "Make",
                              validate: (String item) {
                                if (item == null)
                                  return "Required field";
                                else if (item == "Brasil")
                                  return "Invalid item";
                                else
                                  return null; //return null to "no error"
                              },
                            ),
                          ),
                          Container(
                            width: width / 3,
                            child: FindDropdown(
                              items: ["BMW", "Honda", "CVC", "Swift"],
                              // label: "País",
                              onChanged: (String item) => print(item),
                              selectedItem: "Model",
                              validate: (String item) {
                                if (item == null)
                                  return "Required field";
                                else if (item == "Brasil")
                                  return "Invalid item";
                                else
                                  return null; //return null to "no error"
                              },
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
