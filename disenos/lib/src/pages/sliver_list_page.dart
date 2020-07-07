//Imports that are not mine
import 'package:disenos/src/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

//Imports that are mine

class SliverListPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          _MainScroll(), 
          Positioned(
            bottom: -10,
            right: 0,
            child: _BotonNewList()
          )
        ],
      )
    );
  }
}

class _BotonNewList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;
    final appTheme = Provider.of<ThemeChanger>(context);

    return ButtonTheme(
      minWidth: size.width * 0.9,
      height: 100,
      child: RaisedButton(
        onPressed: (){},
        color: (appTheme.darkTheme) ? appTheme.currentTheme.accentColor : Color(0xffED6762),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(50.0))
        ),
        child: Text(
          'CREATE NEW LIST',
          style: TextStyle(
            color: appTheme.currentTheme.scaffoldBackgroundColor,
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
            letterSpacing: 3.0
          ),
        ),
      ),
    );
  }
}

class _MainScroll extends StatelessWidget {

  final items = [
    _ListItem( 'Orange', Color(0xffF08F66) ),
    _ListItem( 'Family', Color(0xffF2A38A) ),
    _ListItem( 'Subscriptions', Color(0xffF7CDD5) ),
    _ListItem( 'Books', Color(0xffFCEBAF) ),
    _ListItem( 'Orange', Color(0xffF08F66) ),
    _ListItem( 'Family', Color(0xffF2A38A) ),
    _ListItem( 'Subscriptions', Color(0xffF7CDD5) ),
    _ListItem( 'Books', Color(0xffFCEBAF) ),
    _ListItem( 'Orange', Color(0xffF08F66) ),
    _ListItem( 'Family', Color(0xffF2A38A) ),
    _ListItem( 'Subscriptions', Color(0xffF7CDD5) ),
    _ListItem( 'Books', Color(0xffFCEBAF) ),
    _ListItem( 'Orange', Color(0xffF08F66) ),
    _ListItem( 'Family', Color(0xffF2A38A) ),
    _ListItem( 'Subscriptions', Color(0xffF7CDD5) ),
    _ListItem( 'Books', Color(0xffFCEBAF) ),
  ];

  @override
  Widget build(BuildContext context) {

    final appTheme = Provider.of<ThemeChanger>(context).currentTheme;

    return CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: <Widget>[
        SliverPersistentHeader(
          floating: true,
          delegate: _SliverCustomHeaderDelegate(
            minHeight: 170.0,
            maxHeight: 200.0,
            child: Container(
              alignment: Alignment.centerLeft,
              color: appTheme.scaffoldBackgroundColor,
              child: _Titulo(),
            )
          ),
        ),
        SliverList(
          delegate: SliverChildListDelegate([
            ...items,
            SizedBox(height: 100.0)
          ]),
        )
      ],
    );
  }
}

class _SliverCustomHeaderDelegate extends SliverPersistentHeaderDelegate{

  final double minHeight;
  final double maxHeight;
  final Widget child;

  _SliverCustomHeaderDelegate({
    @required this.minHeight,
    @required this.maxHeight,
    @required this.child
  });

  @override
  Widget build(BuildContext context, double  shrinkOffset, bool overlapsContent) {
    return SizedBox.expand(child: child);
  }
  
  @override
  double get maxExtent => maxHeight;

  @override
  double get minExtent => minHeight;
  
  @override
  bool shouldRebuild(_SliverCustomHeaderDelegate oldDelegate) {
    return maxHeight != oldDelegate.maxHeight ||
           minHeight != oldDelegate.minHeight ||
           child     != oldDelegate.child;
  }
}

class _Titulo extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    final appTheme = Provider.of<ThemeChanger>(context);

    return Column(
      children: <Widget>[
        SizedBox(height: 30.0),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
          child: Text(
            'New', 
            style: TextStyle(
              color: (appTheme.darkTheme) ? Colors.grey : Color(0xff532128), 
              fontSize: 50.0
            )
          ),
        ),
        Stack(
          children: <Widget>[
            SizedBox(width: 100.0),
            Positioned(
              bottom: 8.0,
              child: Container(
                width: 150.0,
                height: 8.0,
                color:(appTheme.darkTheme) ? Colors.grey : Color(0xff532128),
              ),
            ),
            Container(
              child: Text('List', style: TextStyle(color: Color(0xffD93A30), fontSize: 50.0, fontWeight: FontWeight.bold)),
            )
          ],
        )
      ],
    );
  }
}

class _ListItem extends StatelessWidget {

  final String titulo;
  final Color color;

  _ListItem(
    this.titulo,
    this.color
  );

  @override
  Widget build(BuildContext context) {

    final appTheme = Provider.of<ThemeChanger>(context);

    return Container(
      child: Text(
        titulo, 
        style: TextStyle(
          color: Colors.white, 
          fontWeight: FontWeight.bold, 
          fontSize: 20.0
        )
      ),
      padding: EdgeInsets.all(30.0),
      alignment: Alignment.centerLeft,
      height: 130.0,
      margin: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color:(appTheme.darkTheme) ? Colors.grey : color,
        borderRadius: BorderRadius.circular(30.0)
      ),
    );
  }
}