

import 'package:flutter/material.dart';


abstract class BaseState<BelliDegil extends StatefulWidget > extends State<BelliDegil> {

  ThemeData themeData(){
    return Theme.of(context);
  }
  double dynamicHigh( double height){
    return MediaQuery.of(context).size.height*height;
  } 

}