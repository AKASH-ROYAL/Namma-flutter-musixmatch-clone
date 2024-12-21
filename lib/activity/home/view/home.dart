import 'dart:math';

import 'package:get/get.dart';
import 'package:musixmatch_clone_namma_flutter/activity/home/controller/home_controller.dart';
import 'package:musixmatch_clone_namma_flutter/activity/home/helper_widgets/album_card.dart';
import 'package:musixmatch_clone_namma_flutter/activity/home/helper_widgets/banner_card.dart';
import 'package:musixmatch_clone_namma_flutter/activity/home/helper_widgets/sections_template.dart';
import 'package:musixmatch_clone_namma_flutter/activity/home/model/album_model.dart';
import 'package:musixmatch_clone_namma_flutter/app/config/export.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return GetX<Homecontroller>(
      init: Homecontroller(),
      initState: (_) {},
      builder: (logic) {
        print(logic.testString.value);
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //banner section
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
              ).scrollHorizontal().px16(),

              Divider(
                thickness: 0.5,
                color: textGrey,
              ),

              SectionsTemplate(
                title: "Recently Played",
                actionIcon: Icons.replay,
                iconColor: textRed,
                expandText: logic.expandAlBum.value ? "View less" : "View all",
                expandOnTap: () {
                  print("tapped");
                  logic.expandAlBum.value = !logic.expandAlBum.value;
                  print(logic.expandAlBum.value);
                },
                body: Wrap(
                  spacing: 10,
                  runSpacing: 10,
                  alignment: WrapAlignment.start,
                  children: List.generate(
                      logic.expandAlBum.value ? logic.sampleAlbums.length : 4,
                      (index) {
                    return AlbumCard(
                        image: logic.sampleAlbums[index].image,
                        name: logic.sampleAlbums[index].name,
                        artist: logic.sampleAlbums[index].artist);
                  }),
                ),
              ),
              SectionsTemplate(
                title: "Top 50 India",
                actionIcon: Icons.trending_up,
                iconColor: textRed,
                expand: true,
                expandText: "View all",
                body: buildSongListView(logic.sampleAlbums),
              ),
              SectionsTemplate(
                title: "New Albums and Singles",
                actionIcon: Icons.new_releases,
                iconColor: textRed,
                expand: true,
                expandText: "View all",
                body: buildSongListView(logic.sampleAlbums.reversed.toList()),
              ),
              SectionsTemplate(
                title: "Lyrics translated in more than 60 languages",
                actionIcon: Icons.new_releases,
                iconColor: textRed,
                expand: true,
                expandText: "View all",
                body: buildSongListView(logic.sampleAlbums),
              ),
            ],
          ).scrollVertical(),
        );
      },
    );
  }

  Widget buildSongListView(List<Album> albums) {
    return Container(
      height: 210,
      margin: const EdgeInsets.only(bottom: 20),
      child: ListView.builder(
        itemCount: albums.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          var album = albums[index];
          return AlbumCard(
                  image: album.image, name: album.name, artist: album.artist)
              .marginOnly(right: 10);
        },
      ),
    );
  }
}
