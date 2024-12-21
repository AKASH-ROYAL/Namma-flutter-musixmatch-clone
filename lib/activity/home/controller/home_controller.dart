import 'package:get/get.dart';
import 'package:musixmatch_clone_namma_flutter/activity/home/model/album_model.dart';
import 'package:musixmatch_clone_namma_flutter/generated/assets.dart';

class Homecontroller extends GetxController {
  var testString = "".obs;
  final List<Album> sampleAlbums = [
    Album(
        image: Assets.imagesNammaFlutterDash,
        name: "NammaFlutter Anthem",
        artist: "Founder of namma flutter"),
    Album(
        image: Assets.imagesAlbum02,
        name: "The Invisible Man",
        artist: "Beyoncé"),
    Album(
        image: Assets.imagesAlbum03,
        name: "Midnight Sun",
        artist: "Frank Ocean"),
    Album(
        image: Assets.imagesAlbum04,
        name: "Quantum Realm",
        artist: "Kendrick Lamar"),
    Album(
        image: Assets.imagesAlbum01,
        name: "Echoes of Eternity",
        artist: "Adele"),
    Album(
        image: Assets.imagesAlbum02,
        name: "Shadow Chronicles",
        artist: "Taylor Swift"),
    Album(
        image: Assets.imagesAlbum03, name: "Celestial Voyage", artist: "Drake"),
    Album(
        image: Assets.imagesAlbum04, name: "Neon Nights", artist: "The Weeknd"),
    Album(
        image: Assets.imagesAlbum01, name: "Paradise Lost", artist: "Coldplay"),
    Album(
        image: Assets.imagesAlbum02,
        name: "Silent Horizons",
        artist: "Ed Sheeran"),
    Album(
        image: Assets.imagesAlbum03, name: "Crystal Dreams", artist: "Rihanna"),
    Album(
        image: Assets.imagesAlbum04,
        name: "Frozen Empire",
        artist: "Lady Gaga"),
    Album(
        image: Assets.imagesAlbum01,
        name: "Echoing Whispers",
        artist: "Bruno Mars"),
    Album(
        image: Assets.imagesAlbum02,
        name: "Timeless Tales",
        artist: "Billie Eilish"),
    Album(
        image: Assets.imagesAlbum03,
        name: "Phantom Shadows",
        artist: "Post Malone"),
    Album(
        image: Assets.imagesAlbum04,
        name: "Cosmic Adventures",
        artist: "Dua Lipa"),
    Album(
        image: Assets.imagesAlbum01,
        name: "Luminous Nights",
        artist: "Shawn Mendes"),
    Album(
        image: Assets.imagesAlbum02,
        name: "Flickering Lights",
        artist: "Ariana Grande"),
    Album(
        image: Assets.imagesAlbum03,
        name: "Golden Horizons",
        artist: "Zayn Malik"),
    Album(
        image: Assets.imagesAlbum04,
        name: "Radiant Skies",
        artist: "Sam Smith"),
  ];
  var expandAlBum = false.obs;
}
