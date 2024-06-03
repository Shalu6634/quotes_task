import 'package:flutter/material.dart';
import '../screens/DialogueBox/fullScreenBox.dart';
import '../screens/DialogueBox/simpleDialogueBox.dart';
import '../screens/Random quotes/HomePage.dart';

class AppRoutes
{
  static Map <String, Widget Function(BuildContext)> routes = {
  '/dia' : (context)=>DialogScreen(),
  '/full' : (context)=>fullScreen(),
  '/' : (context)=>QuotesModelApp(),
  };
}