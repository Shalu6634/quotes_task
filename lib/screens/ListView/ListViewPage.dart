import 'dart:math';

import 'package:flutter/material.dart';
import 'package:quotes_task/utils/globalQuotes.dart';
import 'package:quotes_task/utils/quotesList.dart';

QuoteModel? quoteModel;

class ListViewScreen extends StatefulWidget {
  const ListViewScreen({super.key});

  @override
  State<ListViewScreen> createState() => _ListViewScreenState();
}

class _ListViewScreenState extends State<ListViewScreen> {
  bool ch = false;
  @override
  void initState() {
    quoteModel = QuoteModel.toList(quoteList);
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Quotes App',style: TextStyle(color: Colors.white),),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: ActionChip(
              backgroundColor: Colors.blue,
              side: BorderSide(color: Colors.blue),
              label: const Text(''),
              avatar: Icon(ch ? Icons.grid_view_outlined : Icons.list,size: 30,color: Colors.white,),
                onPressed: (){
                 setState(() {
                   ch =!ch;
                 });
                },
            ),
          ),
        ],
      ),
      body:(ch) ? GridView.builder(

        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 9 / 8),
        itemBuilder: (context, index) => Card(
          color: colorList[index % 2],
          child: ListTile(

            title: Text(quoteModel!.quoteModelList[index].quote!),
            subtitle: Text(quoteModel!.quoteModelList[index].author!),
          ),
        ),
      ):ListView.builder(

        itemBuilder: (context, index) => ListTile(
          title: Text(quoteModel!.quoteModelList[index].quote!),
          subtitle: Text(quoteModel!.quoteModelList[index].author!),
        ),
      ),
    );
  }
}
