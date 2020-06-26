//Importaciones que no son mias 
import 'package:flutter/material.dart';

//Importaciones que si son mias

class SliderModel with ChangeNotifier{

  double _currentPage = 0;

  double get currentPage => this._currentPage;

  set currentPage(double pagina){
    this._currentPage = pagina;
    print(pagina);
    notifyListeners();
  }
}
