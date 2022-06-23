
import 'package:employees/second%20screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'constants.dart';


void main() async {

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
        // theme: ThemeData(
        //   primaryColor: const Color(0XFF324155),
        //   accentColor: const Color(0XFF324155),
        // ),
        debugShowCheckedModeBanner: false,
        home:   AnimatedSplashScreen(
            splashIconSize:190 ,
            duration: 4000,
            splash: Image.asset('assets/logo.png'),
            nextScreen:  const FirstPage(),

          //  splashTransition: SplashTransition.fadeTransition,
            //  pageTransitionType: PageTransitionType.scale,

            backgroundColor: Constants.kPrimaryColor)
    );
  }
}


