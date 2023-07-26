import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:product_list/modules/pages/home_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(GetMaterialApp(
    home: HomeScreen(),
  ));
}
