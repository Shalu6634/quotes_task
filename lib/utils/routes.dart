import 'package:flutter/material.dart';
import '../screens/DialogueBox/fullScreenBox.dart';
import '../screens/DialogueBox/simpleDialogueBox.dart';

class AppRoutes
{
  static Map <String, Widget Function(BuildContext)> routes = {
  '/dia' : (context)=>DialogScreen(),
  '/' : (context)=>fullScreen(),
  };
}