import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_note_project/styles/app_style.dart';

class NoteReaderScreen extends StatefulWidget {
  NoteReaderScreen({
    Key? key,
    required this.doc
  }) : super(key: key);
  QueryDocumentSnapshot doc;

  @override
  State<NoteReaderScreen> createState() => _NoteReaderScreenState();
}

class _NoteReaderScreenState extends State<NoteReaderScreen> {


  @override
  Widget build(BuildContext context) {
    int color_id = widget.doc['color_id'];
    QueryDocumentSnapshot doc = widget.doc;
    return Scaffold(
      backgroundColor: AppStyle.cardsColor[color_id],
      appBar: AppBar(
        backgroundColor: AppStyle.cardsColor[color_id],
        elevation: 0.0,

      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              doc['note_title'],
              style: AppStyle.mainTitle,
            ),
            SizedBox(height: 4,),
            Text(
              doc['creation_date'],
              style: AppStyle.mainContent,
            ),
            SizedBox(height: 18,),
            Text(
              doc['note_content'],
              style: AppStyle.mainContent,
            ),
          ],
        ),
      ),
    );
  }
}
