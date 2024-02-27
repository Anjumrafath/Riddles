import 'package:flutter/material.dart';
import 'package:storygame/storypuzzle.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: StoryPage(),
    );
  }
}

StoryPuzzle storyPuzzle = StoryPuzzle();

class StoryPage extends StatefulWidget {
  _StoryPageState createState() => _StoryPageState();
}

class _StoryPageState extends State<StoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage('assets/image.jpg'),
          fit: BoxFit.cover,
        )),
        padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 15.0),
        constraints: BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                flex: 12,
                child: Center(
                  child: Text(
                    storyPuzzle.getStory(),
                    style: TextStyle(
                      fontSize: 25.0,
                      color: Colors.purpleAccent,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: TextButton(
                  onPressed: () {
                    storyPuzzle.nextStory(1);
                    setState(() {
                      storyPuzzle.nextStory(1);
                    });
                  },
                  child: Text(
                    storyPuzzle.getChoice1(),
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.blueGrey,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Expanded(
                flex: 2,
                child: Visibility(
                  visible: storyPuzzle.buttonShouldBeVisible(),
                  child: TextButton(
                    onPressed: () {
                      storyPuzzle.nextStory(2);

                      setState(() {
                        storyPuzzle.nextStory(2);
                      });
                    },
                    child: Text(
                      storyPuzzle.getChoice2(),
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
