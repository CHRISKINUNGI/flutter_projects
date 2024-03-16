import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:repairs_app/routes/routes.dart';

void main() {
  runApp(
    GetMaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: RoutesClass.getLoginRoute(),
      getPages: RoutesClass.routes,
    ),
  );
}
