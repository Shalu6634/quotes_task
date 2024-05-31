import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class fullScreen extends StatefulWidget {
  const fullScreen({super.key});

  @override
  State<fullScreen> createState() => _fullScreenState();
}

class _fullScreenState extends State<fullScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
          children: [
          TextButton(
          onPressed: () => showDialog(
      context: context,
      builder: (BuildContext context) =>
          Dialog.fullscreen(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
            Row(
            children: [
            Padding(
            padding: EdgeInsets.only(
              top: 30,
            ),
            child: GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: Icon(Icons.close)),
          ),
      SizedBox(
        width: 20,
      ),
      const Padding(
        padding: EdgeInsets.only(top: 30),
        child: Text(
          'Full Screen dialog title',
          style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 30),
        child: TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text(
            'Save',
            style: TextStyle(color: Colors.red),
          ),
        ),
      )
      ],
    ),
    ]
    ),
    ),
   
    ), child: Text('Show full Screen dialog'),

          ),
    ],
    

    ),
    );
  }
}
