import 'package:flutter/cupertino.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:pathsala/screens/class_list_page.dart';
import 'package:pathsala/screens/login_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  String? token = prefs.getString('token');

  runApp(
    GetMaterialApp(debugShowCheckedModeBanner: false,
      home: token == null ? LoginPage() : const ClassListPage(),
    ),
  );
}
