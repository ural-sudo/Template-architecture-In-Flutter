

import 'package:flutter/cupertino.dart';

class NavigationManager {
  
  Future<void> navigateToWantedPath(BuildContext context,String path,Object arg) async {
   await Navigator.of(context).pushNamed(path,arguments: arg); 
  }

}