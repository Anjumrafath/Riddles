import 'package:storygame/story.dart';

class StoryPuzzle {
  List<Story> _storyData = [
    Story(
      storyTitle:
          'A man was born in 1776, but he is still alive today. How is this possible?',
      choice1: 'Birth place is 1776',
      choice2: 'His Name is 1776',
    ),
    Story(
      storyTitle:
          'I am taken from a mine and shut up in a wooden case, from which I am never released, and yet I am used by almost every person. What am I?',
      choice1: ' Lead ',
      choice2: 'Coal ',
    ),
    Story(
      storyTitle: 'The more you take, the more you leave behind. What am I?',
      choice1: 'footsteps',
      choice2: 'Time',
    ),
    Story(
      storyTitle:
          'I have cities, but no houses. I have forests, but no trees. I have rivers, but no water. What am I?',
      choice1: 'Map',
      choice2: 'Globe',
    ),
    Story(
      storyTitle:
          'I am light as a feather, but even the strongest man couldnot hold me for much longer than a minute. What am I?',
      choice1: 'Breath',
      choice2: 'Tought',
    ),
    Story(
      storyTitle: 'I am sweet and come in many flavors',
      choice1: 'Cocolate',
      choice2: 'Candy',
    ),
    Story(
      storyTitle: 'What can you keep after giving to someone?',
      choice1: 'word',
      choice2: 'knowledge',
    ),
    Story(
      storyTitle: 'What can run but not walk?',
      choice1: ' river ',
      choice2: 'ocean ',
    ),
//you can add more here
  ];
  String getStory() {
    return _storyData[_storyNumber].storyTitle;
  }

  String getChoice1() {
    return _storyData[_storyNumber].choice1;
  }

  String getChoice2() {
    return _storyData[_storyNumber].choice2;
  }

  int _storyNumber = 0;

  void nextStory(int choiceNumber) {
    if (choiceNumber == 1 && _storyNumber == 0) {
      _storyNumber = 2;
    } else if (choiceNumber == 2 && _storyNumber == 0) {
      _storyNumber = 1;
    } else if (choiceNumber == 1 && _storyNumber == 1) {
      _storyNumber = 2;
    } else if (choiceNumber == 2 && _storyNumber == 1) {
      _storyNumber = 3;
    } else if (choiceNumber == 1 && _storyNumber == 2) {
      _storyNumber = 5;
    } else if (choiceNumber == 2 && _storyNumber == 2) {
      _storyNumber = 4;
    } else if (_storyNumber == 3 || _storyNumber == 4 || _storyNumber == 5) {
      restart();
    }
  }

  void restart() {
    _storyNumber = 0;
  }

  bool buttonShouldBeVisible() {
    if (_storyNumber == 0 ||
        _storyNumber == 1 ||
        _storyNumber == 2 ||
        _storyNumber == 4 ||
        _storyNumber == 5 ||
        _storyNumber == 6) {
      return true;
    } else {
      return false;
    }
  }
}
