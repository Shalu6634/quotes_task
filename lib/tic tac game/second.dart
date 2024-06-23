import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Center(
            child: Image(
              height: 120,
              image: AssetImage(
                'assets/img/tic.png',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: GestureDetector(onTap: (){
              Navigator.of(context).pushNamed('/home');
            },
              child: Container(
                height: 50,
                width: 130,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xfffaaf16),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xfffaaf16),
                      blurRadius: 1,
                      spreadRadius: 3
                    ),
                  ]
                ),
                child: Center(
                  child: Text(
                    'Play now',
                    style: TextStyle(color: Colors.white,fontSize: 23),
                  ),
                ),
              ),
            ),
          )

        ],
      ),
    );
  }
}
