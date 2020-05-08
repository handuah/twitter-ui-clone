import 'package:flutter/material.dart';
import 'screens/loadingPage.dart';
import 'screens/homePage.dart';

void main() => runApp(TwitterApp());

//DEFINING THE ROUTES
const LoadingPageRoute = '/';
const HomePageRoute = '/homePage.dart';
class TwitterApp extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     debugShowCheckedModeBanner: false,
     title: 'Twiiter Clone',
     theme: ThemeData(
       primarySwatch: Colors.lightBlue,
     ),
     onGenerateRoute: _pageRoutes(),
   );
  }
}


RouteFactory _pageRoutes(){
  return (settings){
    final Map<String, dynamic> arguments = settings.arguments;
    Widget screen;
    switch(settings.name){
      case LoadingPageRoute:
        screen = LoadingPage();
      break;
      case HomePageRoute:
        screen = HomePage();
        break;
      default:
        return null;
    }
    return MaterialPageRoute(builder: (BuildContext context) => screen);
  };
}