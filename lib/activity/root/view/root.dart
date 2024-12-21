import 'package:get/get.dart';
import 'package:musixmatch_clone_namma_flutter/activity/root/controller/root_controller.dart';
import 'package:musixmatch_clone_namma_flutter/activity/search/view/search.dart';
import 'package:musixmatch_clone_namma_flutter/app/config/export.dart';

class Root extends StatefulWidget {
  const Root({
    super.key,
  });

  @override
  State<Root> createState() => _RootState();
}

class _RootState extends State<Root> {
  @override
  Widget build(BuildContext context) {
    // Get.find<RootController>();
    return GetX<RootController>(
      init: RootController(),
      initState: (_) {},
      builder: (logic) {
        return Scaffold(
          body: logic.pages[logic.currentIndex.value],
          bottomNavigationBar: BottomNavigationBar(
            onTap: (index) {
              if (index == 4) {
                Get.to(() => Search(), transition: Transition.rightToLeft);
                return;
              }
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
                  icon: Icon(
                    Icons.home_filled,
                    color: textGrey,
                  ),
                  activeIcon: Icon(
                    Icons.home_filled,
                    color: Colors.white,
                  ),
                  label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.music_note,
                    color: textGrey,
                  ),
                  activeIcon: Icon(
                    Icons.music_note,
                    color: Colors.white,
                  ),
                  label: "Music"),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.add_circle_outline_sharp,
                    color: textGrey,
                  ),
                  activeIcon: Icon(
                    Icons.add_circle_outline_sharp,
                    color: Colors.white,
                  ),
                  label: "Contribute"),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.album_rounded,
                    color: textGrey,
                  ),
                  activeIcon: Icon(
                    Icons.album_rounded,
                    color: Colors.white,
                  ),
                  label: "Identify"),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.search,
                    color: textGrey,
                  ),
                  activeIcon: Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
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
