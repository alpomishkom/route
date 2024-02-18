import 'package:flutter/material.dart';
import 'package:routes/pages/cartpages.dart';
import 'package:routes/pages/homepages.dart';
import 'package:routes/pages/settigis.dart';
import '../pages/detaelPages.dart';
import 'app_rout_name.dart';

class AppRoutes {
  const AppRoutes();

  static Route routeee(RouteSettings settings) {
    switch(settings.name) {
      case RoutsName.homePages:{
        return MaterialPageRoute(builder: (context) => const HomePages(),settings: settings);
      }
      case RoutsName.detaelPages:{
        return MaterialPageRoute(builder: (context) => const DetailPages(),settings: settings);
      }
      case RoutsName.setting:{
        return MaterialPageRoute(builder: (context) => const SettigisPages(),settings: settings);
      }
      case RoutsName.cartPages:{
        return MaterialPageRoute(builder: (context) => const CarPages(),settings: settings);
      }
      default:{
        return _salom();
      }
    }
  }

  static Route _salom() => MaterialPageRoute(
      builder: (context){
        return const Scaffold(
          body: Center(
            child: Text("Error route", style: TextStyle(
                fontSize: 30
            ),),
          ),
        );
      }
  );
}