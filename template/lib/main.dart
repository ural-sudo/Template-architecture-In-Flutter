
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:template/core/init/navigation/navigation_manager.dart';
import 'package:template/core/init/navigation/navigator_map.dart';
import 'package:template/core/init/state_managment/theme_provider.dart';
import 'package:template/core/init/theme/app_theme_manager.dart';
import 'package:template/view/auth/login/viewModel/login_provider.dart';

/*EasyLocalization(
    child: const MyApp(),
    supportedLocales: LanguageManager().setLocale(),
    path:ApplicationConstant.LANG_ASSET_PATH 
)*/
void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
   final NavigationManager manager = NavigationManager();

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<ThemeProvider>(create: (context) {
          return ThemeProvider();
        },),
        ChangeNotifierProvider<LoginProvider>(create: (context) {
          return LoginProvider();
        },)
      ],
      builder: (context, child){
        return MaterialApp(
          debugShowCheckedModeBanner: false,
        title: 'Template',
        theme: context.watch<ThemeProvider>().isLightTheme ? AppThemeManager.lightTheme : AppThemeManager.darkTheme,
        routes: NavigatorRoutes().navigatorRoutes,
      );
      },
    );
  }
}

