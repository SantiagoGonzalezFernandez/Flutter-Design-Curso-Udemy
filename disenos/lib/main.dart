//Importaciones que no son mias
import 'package:flutter/material.dart';
 
//Importaciones que Si son mias 
import 'package:disenos/src/pages/slideshow_page.dart';

void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Disenos App',
      home: SlideshowPage()
    );
  }
}