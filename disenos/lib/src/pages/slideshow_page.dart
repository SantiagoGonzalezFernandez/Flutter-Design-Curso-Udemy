//Imports that are not mine
import 'package:disenos/src/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

//Imports that are mine
import 'package:disenos/src/widgets/slideshow.dart';
import 'package:provider/provider.dart';

class SlideshowPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(child: MiSlideshow()),
          Expanded(child: MiSlideshow()),
        ],
      )
    );
  }
}

class MiSlideshow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final appTheme = Provider.of<ThemeChanger>(context);
    final accentColor = appTheme.currentTheme.accentColor;

    return Slideshow(
      bulletPrimario: 15,
      bulletSecundario: 12,
      puntosArriba: false,
      colorPrimario: (appTheme.darkTheme) ? accentColor : Color(0xffFF5A7E),
      colorSecundario: Colors.grey,
      slides: <Widget>[
        SvgPicture.asset('assets/svgs/slide-1.svg'),
        SvgPicture.asset('assets/svgs/slide-2.svg'),
        SvgPicture.asset('assets/svgs/slide-3.svg'),
        SvgPicture.asset('assets/svgs/slide-4.svg'),
        SvgPicture.asset('assets/svgs/slide-5.svg'),
      ],
    );
  }
}
