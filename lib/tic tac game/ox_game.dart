import 'dart:async';

import 'package:flutter/material.dart';

class TicTac extends StatefulWidget {
  const TicTac({super.key});

  @override
  State<TicTac> createState() => _TicTacState();
}

class _TicTacState extends State<TicTac> {
  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 4), () {
      Navigator.of(context).pushNamed('/tic');
    });
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRIAnCP1J4K5flA785tFsZjEiCgNP-zvliTeA&s'),
            )
          ),
        ),
      ),
    );
  }
}
