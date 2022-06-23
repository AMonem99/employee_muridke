// import 'package:flutter/cupertino.dart';
// import 'package:intl/intl.dart';
// import 'package:firebase_database/firebase_database.dart';
//
// void submitReport(  {DatabaseReference refReport,TextEditingController nameController,TextEditingController reportController, }){
//
//   DateTime now = DateTime.now();
//   String formattedDate = DateFormat('kk:mm:ss').format(now);
//   // ignore: avoid_print
//   String date = DateTime.now().toString().substring(0, 10);
//
//
//
//
//
//   Map<String,String> reportSubmit = {
//     'date':date.toString(),
//     'time':formattedDate.toString(),
//     'name':nameController.text,
//     'report':reportController.text,
//
//   };
//
//
//   if(nameController.text.isNotEmpty){
//
//     refReport.child(nameController.text.toString()).set(reportSubmit).then((value) {
//       print('success');
//     });
//
//   }
//
//
//
// }
