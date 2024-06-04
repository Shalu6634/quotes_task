import 'dart:math';

import 'package:flutter/material.dart';
import 'package:quotes_task/utils/globalQuotes.dart';
import 'package:quotes_task/utils/quotesList.dart';

QuoteModel? quoteModel;

class QuotesModelApp extends StatefulWidget {
  const QuotesModelApp({super.key});

  @override
  State<QuotesModelApp> createState() => _QuotesModelAppState();
}

class _QuotesModelAppState extends State<QuotesModelApp> {
  @override
  void initState() {
    quoteModel = QuoteModel.toList(quoteList);
    super.initState();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quotes App'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: List.generate(
            quoteModel!.quoteModelList.length,
            (index) => Card(

              color: colorList[index % colorList.length],
              child: ListTile(

                title: Text(quoteModel!.quoteModelList[index].quote!),
                subtitle: Text(quoteModel!.quoteModelList[index].author!),
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            index++;
          });
          Random random = Random();
          int x = random.nextInt(quoteModel!.quoteModelList.length);
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              backgroundColor: colorList[index],
              title: Text(quoteModel!.quoteModelList[x].author!),
              content: Text(quoteModel!.quoteModelList[x].quote!),
              actions: [
                TextButton(
                  onPressed: () {},
                  child: Text('Save'),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('Back'),
                ),
              ],
            ),
          );
        },
        child: Icon(Icons.notifications),
      ),
    );
  }
}



