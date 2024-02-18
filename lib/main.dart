import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:routes/service/app_rout_name.dart';
import 'package:routes/service/routs.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: RoutsName.homePages,
      onGenerateRoute: AppRoutes.routeee,
      navigatorObservers: [

      ],
    );
  }
}
