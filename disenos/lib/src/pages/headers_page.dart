//Importaciones que no son mias
import 'package:flutter/material.dart';

//Importaciones que si son mias
import 'package:disenos/src/widgets/headers_widget.dart';
import 'package:provider/provider.dart';
import 'package:disenos/src/theme/theme.dart';

class HeadersPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final accentColor = Provider.of<ThemeChanger>(context).currentTheme.accentColor;

    return Scaffold(
      body: HeaderWave(color: accentColor)
    );
  }
}