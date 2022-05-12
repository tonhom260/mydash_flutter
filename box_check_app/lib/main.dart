import 'package:box_check_app/widget/mytextfield.dart';
import 'package:box_check_app/widget/smallfont.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(fontFamily: 'Trirong',
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);




  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController boxnumController = TextEditingController();


  @override
  void initState() {
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
  DateTime timenow = DateTime.now();
  String Timenow = DateFormat('yyyy-MM-dd – kk:mm').format(timenow);

    return Scaffold(
      appBar: AppBar(centerTitle: false,
        title: Text('ระบบตรวจสอบลังเดอะคิทซ์           ',
          style: TextStyle(fontSize: 20,
          fontFamily: 'Trirong'
          ),overflow: TextOverflow.visible,),
      ),
      body:
       Container(
         width: double.maxFinite,
         height: double.maxFinite,

         padding: EdgeInsets.only(left: 5,right: 5,top: 10),
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text(
                'เข้าระบบเพื่อระบุตัวตน',
                style: Theme.of(context).textTheme.headline6
              ),
              SmallFont(text:'เวลาที่บันทึกข้อมูล   $Timenow'),
              SmallFont(text: 'จำนวนลังที่รับเข้าวันนี้'),
              MyTextField(controller:boxnumController, hintText: 'กรอกจำนวนลัง',kbtype: TextInputType.number,)
              
            ],
          ),
       ),

      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
