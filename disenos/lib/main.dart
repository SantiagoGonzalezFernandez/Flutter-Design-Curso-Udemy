//Importaciones que no son mias
import 'package:disenos/src/theme/theme.dart';
import 'package:flutter/material.dart';
 
//Importaciones que Si son mias 
import 'package:disenos/src/pages/launcher_page.dart';
import 'package:provider/provider.dart';

void main() => runApp(
  ChangeNotifierProvider(
    create: (_) => ThemeChanger(2),
    child: MyApp()
  )
);
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final currentTheme = Provider.of<ThemeChanger>(context).currentTheme;

    return MaterialApp(
      theme: currentTheme,
      debugShowCheckedModeBanner: false,
      title: 'Disenos App',
      home: LauncherPage()
    );
  }
}