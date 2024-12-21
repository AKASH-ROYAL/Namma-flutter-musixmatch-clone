import 'package:flutter/material.dart';
import 'package:musixmatch_clone_namma_flutter/activity/auth/initial/view/initial.dart';
import 'package:musixmatch_clone_namma_flutter/activity/auth/initial/view/signin.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Musixmatch Clone",
      home: InitScreen(),
    );
  }
}
