import 'package:admin_uber_web_panel/dashboard/side_navigation_drawer.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async
{
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: const FirebaseOptions(
        apiKey: "AIzaSyBzdeO-iFpZa-aOzVr2VFpiR6VPO6Q5IMY",
        authDomain: "flutter-radiotaxi-with-admin.firebaseapp.com",
        databaseURL: "https://flutter-radiotaxi-with-admin-default-rtdb.firebaseio.com",
        projectId: "flutter-radiotaxi-with-admin",
        storageBucket: "flutter-radiotaxi-with-admin.appspot.com",
        messagingSenderId: "395160498122",
        appId: "1:395160498122:web:b14ad1c1db1ed3bbbca933",
        measurementId: "G-PSZ7TBSW01"
    )
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget
{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Admin Panel',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: const SideNavigationDrawer(),
    );
  }
}

