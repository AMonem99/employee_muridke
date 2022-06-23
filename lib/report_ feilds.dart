// import 'package:employees/submit%20report.dart';
// import 'package:flutter/material.dart';
//
// import 'package:firebase_database/firebase_database.dart';
//
// import 'constants.dart';
//
//
//
// class ReportFeilds extends StatefulWidget {
//   const ReportFeilds({Key key}) : super(key: key);
//
//   @override
//   _ReportFeildsState createState() => _ReportFeildsState();
// }
//
// class _ReportFeildsState extends State<ReportFeilds> {
//   final TextEditingController _nameController = TextEditingController();
//   final TextEditingController _reportController = TextEditingController();
//
//   DatabaseReference refReport;
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     // ignore: deprecated_member_use
//     // ignore: deprecated_member_use
//     refReport = FirebaseDatabase.instance.reference().child('Reports').child(_nameController.text);
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     var screenSize = MediaQuery.of(context).size;
//
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Stack(
//           children: [
//             Container(
//               height: 222,
//               decoration: const BoxDecoration(
//                   color: Constants.kPrimaryColor,
//                   borderRadius: BorderRadius.only(bottomLeft: Radius.circular(33),bottomRight: Radius.circular(33))
//               ),
//             ),
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Container(
//                   margin: const EdgeInsets.all(22),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     //  mainAxisAlignment: MainAxisAlignment.start,
//                     children: const [
//                       Text('Welcome, Employees',
//                           style: TextStyle(
//                               fontWeight: FontWeight.bold, fontSize: 33,color: Colors.white)),
//                       SizedBox(height: 15),
//                       Text('All the employees here you will submit your working report',
//                           style: TextStyle(fontSize: 20,color: Colors.white)),
//                     ],
//                   ),
//                 ),
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Container(
//                       height: screenSize.height * 0.6,
//                       margin: const EdgeInsets.all(15),
//                       padding: const EdgeInsets.all(11),
//                       decoration: BoxDecoration(
//                         color: Colors.white,
//                         boxShadow: [
//                           BoxShadow(
//                             color: Colors.grey.withOpacity(0.5),
//                             spreadRadius: 5,
//                             blurRadius: 2,
//                             // offset: Offset(0, 3), // changes position of shadow
//                           ),
//                         ],
//                         // color: Colors.red,
//                         borderRadius: BorderRadius.circular(11),
//                         //  border: Border.all(color: Colors.grey,width: 2)
//                       ),
//                       // height: screenSize.height * 0.999,
//                       child: Column(
//                         children: [
//                           Container(
//                             decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(10),
//                               color: Colors.white,
//                               boxShadow: [
//                                 BoxShadow(
//                                   color: Colors.grey.withOpacity(0.5),
//                                   // spreadRadius: 2,
//                                   blurRadius: 3,
//                                   offset: const Offset(0, 3), // changes position of shadow
//                                 ),
//                               ],
//                             ),
//                             child:  TextField(
//                               controller: _nameController,
//                               decoration: InputDecoration(
//                                 hintText: 'Name',
//                                 border: OutlineInputBorder(
//                                     borderSide: const BorderSide(color: Colors.grey,width: 2),
//                                     borderRadius: BorderRadius.circular(10)
//                                 ),
//
//                               ),
//                             ),
//                           ),
//                           const SizedBox(
//                             height: 22,
//                           ),
//                           Container(
//                             decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(10),
//                               color: Colors.white,
//                               boxShadow: [
//                                 BoxShadow(
//                                   color: Colors.grey.withOpacity(0.5),
//                                   // spreadRadius: 2,
//                                   blurRadius: 3,
//                                   offset: const Offset(0, 3), // changes position of shadow
//                                 ),
//                               ],
//                             ),
//                             child:  TextField(
//                               maxLines: 6,
//                               controller: _reportController,
//                               decoration: InputDecoration(
//                                 hintText: 'Please Write Todays Report',
//                                 border: OutlineInputBorder(
//                                     borderSide: const BorderSide(color: Colors.grey,width: 2),
//                                     borderRadius: BorderRadius.circular(10)
//                                 ),
//
//                               ),
//                             ),
//                           ),
//                           const SizedBox(
//                             height: 22,
//                           ),
//                           Center(
//                             child: InkWell(
//                               onTap: (){
//                                 submitReport(reportController:_reportController,nameController:_nameController,refReport:refReport);
//                               },
//                               child: Container(
//                                 width: screenSize.width*0.7,
//                                 height: screenSize.width*0.16,
//                                 decoration: BoxDecoration(
//                                     borderRadius: BorderRadius.circular(18),
//                                     color: Constants.kPrimaryColor
//                                 ),
//                                 child:const Center(child: Text('Submit todays Report',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 21,color: Colors.white))) ,
//                               ),
//                             ),
//                           )
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             )
//           ],
//
//         ),
//       ),
//     );
//
//   }
// }
