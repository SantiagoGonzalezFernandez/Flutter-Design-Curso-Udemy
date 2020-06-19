//Importaciones que no son mias
import 'package:flutter/material.dart';

//Importaciones que si son mias
import 'package:disenos/src/widgets/headers_widget.dart';

class HeadersPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HeaderWaveGradient()
    );
  }
}