

import 'package:template/view/auth/login/view/login.dart';
import 'package:template/view/auth/register/register.dart';
import 'package:template/view/auth/splash/splash.dart';

class NavigatorRoutes {

  final navigatorRoutes = {

    "/" : (context){
      return const Register() ;
    },
    "/splash": (context) {
      return const Splash();
    },
    "/login": (context) {
      return const Login();
    }

  };
}