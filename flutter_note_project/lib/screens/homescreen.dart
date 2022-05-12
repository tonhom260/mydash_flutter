import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../styles/app_style.dart';
import '../widget/note_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyle.mainColor,
      appBar: AppBar(
        elevation: 0.0,
        title: Text('Firenote'),
        centerTitle: true,
        backgroundColor:AppStyle.mainColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment:MainAxisAlignment.start ,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Your recent Notes',style:
            GoogleFonts.roboto(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 22
            ),),
            SizedBox(height: 20,),
            Expanded(
              child: StreamBuilder<QuerySnapshot>(
                stream: FirebaseFirestore
                    .instance
                    .collection('Notes')
                    .snapshots(),
                builder: (context,AsyncSnapshot snapshot){//require AsyncSnapshot type ต้องใส่ typeด้วย
                  if(snapshot.connectionState == ConnectionState.waiting)
                  {return Center(
                    child: CircularProgressIndicator(),
                  );}
                  if(snapshot.hasData){
                        return
                      GridView(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        ),
                      children:[
                        Text('test We have data Alrdy')
                      ]
                        // snapshot.data!.docs.map((note)=>noteCard((){},note)).

                      );
                  }
                  return Text('there\'s no Notes',style: GoogleFonts.nunito(
                      color: Colors.white
                  ));


                }
              ),
            )
          ],
        ),
      ),
    );
  }
}
