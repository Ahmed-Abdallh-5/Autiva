import 'package:autiva/core/model/local/eduvideoslocal.dart';
import 'package:get/get.dart';

abstract class VideosController extends GetxController {}

class VideosControllerImpl extends VideosController {
  List<VideosClass> videoslist = [
    VideosClass(
      title: 'Learn ABC Song',
      image: "images/maxresdefaultt.jpg",
      link: "https://youtu.be/_UR-l3QI2nE?si=KwswFb88XUqJAwHS",
    ),
    VideosClass(
      title: 'Colors for Kids',
      image: "images/maxresdefault.jpg",
      link: "https://youtu.be/ezmsrB59mj8?si=ycfibO0kCBPBkqcK",
    ),
    VideosClass(
      title:
          'Staying Clean and Heathy- Skill Building Buddies on Harmony Square',
      image: "images/hqdefault.jpg",
      link: "https://www.youtube.com/watch?v=ksotE08cbKg",
    ),
    VideosClass(
      title: 'Numbers Song 1-10',
      image: "images/hq720.jpg",
      link: "https://www.youtube.com/watch?v=H9tjc_v5TsU",
    ),
    // VideosClass(
    //   title: 'Emotions for Kids',
    //   image: "images/emotions.png",
    //   link: "https://www.youtube.com/watch?v=ZxfJicfyCdg",
    // ),
    // VideosClass(
    //   title: 'Daily Routine for Kids',
    //   image: "images/routine.png",
    //   link: "https://www.youtube.com/watch?v=KZ7oL4Yq8kA",
    // ),
  ];
}
