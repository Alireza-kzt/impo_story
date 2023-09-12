import 'package:flutter/material.dart';
import 'package:impo_story/src/view/pages/impo_story.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Flutter Demo', debugShowCheckedModeBanner: false, home: ImpoStory());
  }
}
