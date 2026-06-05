import 'package:get/get.dart';

import '../../../core/model/local/gameslocalclass.dart';

abstract class GamesController extends GetxController {}

class GamesControllerImpl extends GamesController {
  List<GamesClass> gameslist = [
    GamesClass(
        title: 'Alphabet-Letter',
        subtitle: 'Learn letters through tracing and repetition',
        image: "images/Alphabet-Letter-Writing-Games.png",
        link: "https://autistichub.com/play/letterwriting/index.html"),
    GamesClass(
        title: 'Animal-Coloring',
        subtitle: 'Color animals and improve creativity and focus',
        image: "images/Animal-Coloring-Game.png",
        link: "https://www.autistichub.com/play/animalcoloring/index.html"),
    GamesClass(
        title: 'Puzzle-Game',
        subtitle: 'Solve simple puzzles to boost thinking skills',
        image: "images/Icon-4.png",
        link: "https://www.autistichub.com/play/jigsawpuzzle/index.html"),
    GamesClass(
        title: 'Number-Writing',
        subtitle: 'Practice writing numbers and improve fine motor skills',
        image: "images/Number-Writing-Games.png",
        link: "https://www.autistichub.com/play/numberwriting/index.html"),
  ];
}
