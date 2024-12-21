import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:musixmatch_clone_namma_flutter/activity/contribute/view/contribute.dart';
import 'package:musixmatch_clone_namma_flutter/activity/home/view/home.dart';
import 'package:musixmatch_clone_namma_flutter/activity/identify/view/identify.dart';
import 'package:musixmatch_clone_namma_flutter/activity/music/view/music.dart';
import 'package:musixmatch_clone_namma_flutter/activity/search/view/search.dart';

class RootController extends GetxController {
  List<Widget> pages = const [
    Home(),
    Music(),
    Contribute(),
    Identify(),
    Search(),
  ];

  var currentIndex = 0.obs;

  RootController();
}
