

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:template/core/base/state/base_state.dart';
import 'package:template/core/init/navigation/navigation_manager.dart';
import 'package:template/core/init/navigation/navigator_map.dart';

import '../../../../core/init/state_managment/theme_provider.dart';

class TestView extends StatefulWidget {
  const TestView({Key? key}) : super(key: key);

  @override
  State<TestView> createState() => _TestViewState();
}

class _TestViewState extends BaseState<TestView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: dynamicHigh(0.1),
            child: Text(
              "dsada",
              style: TextStyle(color: themeData().cardColor),
            )
          ),
          ElevatedButton(onPressed: (){
            //NavigationManager().navigateToWantedPath("dsa", "/${ProjectPaths.home}");
            
            context.read<ThemeProvider>().changeTheme();
          }, child: Text("Change"))
        ],
      ),
    );
  }
}