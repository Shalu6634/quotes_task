import 'package:flutter/material.dart';
import 'package:quotes_task/screens/ListView/ListViewPage.dart';
import 'package:quotes_task/tic%20tac%20game/gamePage.dart';
import 'package:quotes_task/tic%20tac%20game/ox_game.dart';
import '../screens/DialogueBox/fullScreenBox.dart';
import '../screens/DialogueBox/simpleDialogueBox.dart';
import '../screens/Random quotes/HomePage.dart';

class AppRoutes
{
  static Map <String, Widget Function(BuildContext)> routes = {
  '/dia' : (context)=>DialogScreen(),
  '/full' : (context)=>fullScreen(),
  '/quotes' : (context)=>QuotesModelApp(),
  '/list' : (context)=>ListViewScreen(),
  '/' : (context)=>TicTac(),
  '/home' : (context)=>HomePage(),
  };
}