import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:musixmatch_clone_namma_flutter/activity/auth/initial/view/initial.dart';
import 'package:musixmatch_clone_namma_flutter/activity/auth/initial/view/signin.dart';
import 'package:musixmatch_clone_namma_flutter/activity/home/view/home.dart';
import 'package:musixmatch_clone_namma_flutter/activity/auth/initial/view/allow.dart';
import 'package:musixmatch_clone_namma_flutter/activity/root/view/root.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colors.black,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.black,
          foregroundColor: Colors.white,
        ),
        colorScheme: ColorScheme.dark(
          primary: Colors.white,
          secondary: Colors.grey,
        ),
        textTheme: const TextTheme(
          bodyLarge: TextStyle(color: Colors.white),
          bodyMedium: TextStyle(color: Colors.white),
          bodySmall: TextStyle(color: Colors.white),
        ),
      ),
      home: InitScreen(),
    );
  }
}
