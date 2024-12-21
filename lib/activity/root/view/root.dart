import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:musixmatch_clone_namma_flutter/activity/root/controller/root_controller.dart';
import 'package:musixmatch_clone_namma_flutter/app/config/constants.dart';

class Root extends StatefulWidget {
  const Root(
      {super.key,
     });



  @override
  State<Root> createState() => _RootState();
}

class _RootState extends State<Root> {
  @override
  Widget build(BuildContext context) {


    // Get.find<RootController>();
    return GetX<RootController>(
      init: RootController(
          ),
      initState: (_) {},
      builder: (logic) {
        return Scaffold(

          body: logic.pages[logic.currentIndex.value],


          bottomNavigationBar: BottomNavigationBar(
            onTap: (index) {
              logic.currentIndex.value = index;
            },
            selectedItemColor: primaryColor,
            iconSize: 20,
            selectedLabelStyle: const TextStyle(
                color: primaryColor,
                fontSize: 10,
                fontFamily: primaryFontFamily),
            unselectedLabelStyle: const TextStyle(
                color: textGrey, fontSize: 10, fontFamily: primaryFontFamily),
            showUnselectedLabels: true,
            unselectedItemColor: textBlack,
            currentIndex: logic.currentIndex.value,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home_filled,color: textGrey,),
                  activeIcon: Icon(Icons.home_filled,color: Colors.white,),
                  label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.music_note,color: textGrey,),
                  activeIcon: Icon(Icons.music_note,color: Colors.white,),
                  label: "Music"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.add_circle_outline_sharp,color: textGrey,),
                  activeIcon: Icon(Icons.add_circle_outline_sharp,color: Colors.white,),
                  label: "Contribute"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.album_rounded,color: textGrey,),
                  activeIcon: Icon(Icons.album_rounded,color: Colors.white,),
                  label: "Identify"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search,color: textGrey,),
                  activeIcon: Icon(Icons.search,color: Colors.white,),
                  label: "Search"),

            ],


          ),
        );
      },
    );
  }

  @override
  void dispose() {
    Get.delete<RootController>(force: true);

    // TODO: implement dispose
    super.dispose();
  }
}

// class Root extends StatelessWidget {
//   const Root({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return GetX<RootController>(
//       init: RootController(),
//       initState: (_) {},
//       builder: (logic) {
//         return Scaffold(
//           body: AnimatedSwitcher(
//             duration: Duration(milliseconds: 500), // Animation duration
//             transitionBuilder: (Widget child, Animation<double> animation) {
//               // Create a slide transition from bottom to top
//               final offsetAnimation = Tween<Offset>(
//                 begin: Offset(0.0, 1.0), // Start off the screen (bottom)
//                 end: Offset(0.0, 0.0), // End at the center (on-screen)
//               ).animate(animation);
//
//               return SlideTransition(
//                 position: offsetAnimation,
//                 child: child,
//               );
//             },
//             child: logic.pages[logic.currentIndex.value], // Current page
//             switchInCurve: Curves.easeInOut, // Animation curve
//           ),
//           bottomNavigationBar: BottomNavigationBar(
//             onTap: (index) {
//               logic.currentIndex.value = index; // Update the page index
//             },
//             selectedItemColor: primaryColor,
//             selectedLabelStyle: TextStyle(color: primaryColor),
//             unselectedLabelStyle: TextStyle(color: textBlack),
//             showUnselectedLabels: true,
//             unselectedItemColor: textBlack,
//             currentIndex: logic.currentIndex.value,
//             items: [
//               BottomNavigationBarItem(
//                 icon: Icon(Icons.home_outlined),
//                 label: "Home",
//               ),
//               BottomNavigationBarItem(
//                 icon: Icon(Icons.dashboard),
//                 label: "Session",
//               ),
//               BottomNavigationBarItem(
//                 icon: Icon(Icons.group),
//                 label: "Meet",
//               ),
//               BottomNavigationBarItem(
//                 icon: Icon(Icons.social_distance),
//                 label: "Social",
//               ),
//               BottomNavigationBarItem(
//                 icon: Icon(Icons.shop),
//                 label: "Exhibit",
//               ),
//             ],
//           ),
//         );
//       },
//     );
//   }
// }
