// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter_temel_widgets/dropdown_button_kullanimi.dart';
import 'package:flutter_temel_widgets/image_widgets.dart';
import 'package:flutter_temel_widgets/my_counter_page.dart';
import 'package:flutter_temel_widgets/popupmenu_kullanimi.dart';
import 'package:flutter_temel_widgets/temel.buton.turleri.dart';

void main() {
  debugPrint('main metodu çalıştı');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    debugPrint('myapp build çalıştı');
    return MaterialApp(
      title: 'My Counter App',
      theme: ThemeData(
          primarySwatch: Colors.purple,
          outlinedButtonTheme: OutlinedButtonThemeData(
            style: OutlinedButton.styleFrom(),
          ),
          textButtonTheme: TextButtonThemeData(
              style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.blue),
          )),
          textTheme: TextTheme(headline1: TextStyle())),
      home: Scaffold(
        appBar: AppBar(title: Text('Buton Örnekleri')),
        body: PopupKullanimi(),
      ),
    );
  }
}
