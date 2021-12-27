import 'package:flutter/material.dart';
import 'package:shopping_list/MainScreens/homeSreen.dart';
import 'package:shopping_list/Utils/AssetsImages.dart';
import 'package:shopping_list/Utils/ConstantsApp.dart';
import 'package:shopping_list/Widgets/Design/DesignWidgets.dart';
import 'package:splashscreen/splashscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xff2c2b50),
        primaryColorDark: Color(0xff050028),
        primaryColorLight: Color(0xff050028),
        accentColor: Color(0xffedecee),
        visualDensity: VisualDensity.adaptivePlatformDensity
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {  
  @override
  Widget build(BuildContext context) {
    var ConstantsApp;
    var TextApp;
    return Center(
      child: SplashScreen(
        seconds: ConstantsApp.TIME_SPLASH_SCREEN, 
        navigateAfterSeconds: welcomeScreen(),
        image: AssetsImages.ImageLogo(),
        photoSize: 120,
        loaderColor: Theme.of(context).accentColor,
        loadingText: Text(
          TextApp.LOADING,
          style: Theme.of(context).textTheme.bodyText1,
        ),
        gradientBackground: DesignWidgets.linearGradientMain(context),
      ),
    );
  }

  welcomeScreen() {}
}
