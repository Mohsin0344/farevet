import 'package:farevet/Constants/SizeConfig.dart';
import 'package:farevet/Screens/PetOwner/ServicesPetOwner.dart';
import 'package:farevet/Screens/SplashScreen.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context)  {
    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: (context, orientation) {
            SizeConfig().init(constraints, orientation);
            return MaterialApp(
                debugShowCheckedModeBanner: false,
                title: 'Farevet',
              home: AppSplashScreen(),
            );
          },
        );
      },
    );
  }
}
