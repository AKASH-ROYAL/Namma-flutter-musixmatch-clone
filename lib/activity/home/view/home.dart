import 'package:musixmatch_clone_namma_flutter/activity/home/helper_widgets/banner_card.dart';
import 'package:musixmatch_clone_namma_flutter/app/config/export.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: NectText(
          text: "Home",
          color: textRed,
          size: 16,
          fontWeight: FontWeight.bold,
        ),
        actions: [
          Icon(
            Icons.settings,
            color: Colors.white,
            size: 24,
          ).px16()
        ],
      ),
      body: Column(
        children: [
          HStack(
            [
              BannerCard(
                title: "For artists",
                image: Assets.imagesBannerFrame01,
              ),
              BannerCard(
                title: "For artists",
                image: Assets.imagesBannerFrame01,
              ),
              BannerCard(
                title: "Explore our amazing community",
                image: Assets.imagesBannerFrame02,
              ),
              BannerCard(
                title: "Explore our amazing community",
                image: Assets.imagesBannerFrame02,
              ),
            ],
            spacing: 10,
          ).scrollHorizontal()
        ],
      ).p16(),
    );
  }
}
