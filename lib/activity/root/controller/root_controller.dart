
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:musixmatch_clone_namma_flutter/activity/home/view/home.dart';

class RootController extends GetxController {

  List<Widget> pages = const [

    Home(),
    Home(),
    Home(),
    Home(),
    Home(),
   ];


  var currentIndex = 0.obs;

  RootController();


}
