import 'package:flutter/material.dart';
// import 'package:telemart/pages/login_page.dart';
import 'package:offrode/utils/routes.dart';
import 'pages/home_page.dart';
import 'widgets/themes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      debugShowCheckedModeBanner: false,
   //   initialRoute: MyRoutes.homeRoute,
      home:HomePage()
    //  routes: {
   //     "/": (context) => HomePage(),
        // MyRoutes.homeRoute: (context) => HomePage(),
        // MyRoutes.loginRoute: (context) => LoginPage()
    //  },
    );
  
  }
}
