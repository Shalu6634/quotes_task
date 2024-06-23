import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.only(top: 70,right: 20,left: 20),
        child: Container(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Text(
                        'Player 1',
                        style: TextStyle(color: Colors.yellow, fontSize: 30),
                      ),
                      Text(
                        ' ${player1}',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        'Player 2',
                        style: TextStyle(color: Colors.orange, fontSize: 30),
                      ),
                      Text(
                        ' ${player2}',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Expanded(
                flex: 6,
                child: GridView.builder(
                    itemCount: 9,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3),
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          check(index);
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.black,
                            border: Border.all(color: Colors.white),
                          ),
                          child: Center(
                              child: (l1[index] == 'X')
                                  ? Text(
                                      '${l1[index]}',
                                      style: TextStyle(
                                          color: Colors.yellow, fontSize: 80),
                                    )
                                  : Text(
                                      '${l1[index]}',
                                      style: TextStyle(
                                          color: Colors.orange, fontSize: 80),
                                    )),
                        ),
                      );
                    }),
              ),
              // SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        clear();
                        player1 = 0;
                        player2 = 0;
                      });
                    },
                    child: Container(
                      height: 60,
                      width: 170,
                      decoration: BoxDecoration(
                        color: Colors.white10,
                        border: Border.all(color: Colors.amber),
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      child: Center(
                        child: Text(
                          'ReStart',
                          style: TextStyle(color: Colors.amber, fontSize: 30),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 30,
              )
            ],
          ),
        ),
      ),
    );
  }

  String result = '';
  List<String> l1 = [
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
  ];

  bool O = true;
  int box2 = 0;
  int box = 0;

  void check(int index) {
    setState(() {
      if (O && l1[index] == '') {
        l1[index] = 'O';
        box++;
      } else if (!O && l1[index] == '') {
        l1[index] = 'X';
        box++;
      }
      O = !O;
      checkWin();
    });
    print(box);
    // print(box2);
  }

  void checkWin() {
    // first row
    if (l1[0] == l1[1] && l1[0] == l1[2] && l1[0] != '') {
      setState(() {
        if (l1[0] == 'O') {
          result = 'Player O Win!';
        } else {
          result = 'Player X Win!';
        }
      });
    }
    // second row
    if (l1[3] == l1[4] && l1[3] == l1[5] && l1[3] != '') {
      setState(() {
        if (l1[3] == 'O') {
          result = 'Player O Win!';
        } else {
          result = 'Player X Win!';
        }
      });
    }
    // third row
    if (l1[6] == l1[7] && l1[6] == l1[8] && l1[7] != '') {
      setState(() {
        if (l1[7] == 'O') {
          result = 'Player O Wi!';
        } else {
          result = 'Player X Win!';
        }
      });
    }
    //diagonal
    if (l1[0] == l1[4] && l1[0] == l1[8] && l1[8] != '') {
      setState(() {
        if (l1[4] == 'O') {
          result = 'Player O Win!';
        } else {
          result = 'Player X Win!';
        }
      });
    }
    // first Column
    if (l1[0] == l1[3] && l1[0] == l1[6] && l1[6] != '') {
      setState(() {
        if (l1[6] == 'O') {
          result = 'Player O Win!';
        } else {
          result = 'Player X Win!';
        }
      });
    }
    // second column
    if (l1[1] == l1[4] && l1[1] == l1[7] && l1[4] != '') {
      setState(() {
        if (l1[4] == 'O') {
          result = 'Player O Win!';
        } else {
          result = 'Player X Win!';
        }
      });
    }
    // third column
    if (l1[2] == l1[5] && l1[2] == l1[8] && l1[2] != '') {
      setState(() {
        if (l1[5] == 'O') {
          result = 'Player O Win!';
        } else {
          result = 'Player X Win!';
        }
      });
    }
    // anti
    if (l1[2] == l1[4] && l1[2] == l1[6] && l1[2] != '') {
      setState(() {
        if (l1[6] == 'O') {
          result = 'Player O Win!';
        } else {
          result = 'Player X Win!';
        }
      });
    }

    if (box == 9 && result != 'Player O Win!' && result != 'Player X Win!') {
      setState(() {
        result = 'Game draw';
      });

      clear();
    }
    Result();
  }

  void Result() {
    if (result == 'Player O Win!' ||
        result == 'Player X Win!' ||
        result == 'Nobody win!') {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return Dialog(
            backgroundColor: Colors.black45,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: 30,
                ),
                Text(
                  '${result}',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
          );
        },
      );
      if (result == 'Player O Win!') {
        setState(() {
          player1++;
        });
      } else if (result == 'Player X Win!') {
        player2++;
      }
    }
    // clear();
  }

  void clear() {
    setState(() {
      for (int i = 0; i < 9; i++) {
        l1[i] = '';
      }
      result = '';
      box = 0;
    });
  }
}

int player1 = 0;
int player2 = 0;
