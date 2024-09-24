import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hous_project_dashbord/app/app.dart';
import 'package:hous_project_dashbord/app/home/controller/dark_mode_controller.dart';
import 'package:hous_project_dashbord/components/theme/dark_theme.dart';
import 'package:hous_project_dashbord/components/theme/light_theme.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //Intl.defaultLocale = 'ar';

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var darkModeController = Get.put(DarkModeController());
    return Obx(() {
      return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        locale: const Locale("ar"),
        title: 'Hous Project Dash',
        theme: darkModeController.isDark.value ? darkTheme : lightTheme,
        darkTheme: darkModeController.isDark.value ? darkTheme : lightTheme,
        home: const App(),
      );
    });
  }
}
