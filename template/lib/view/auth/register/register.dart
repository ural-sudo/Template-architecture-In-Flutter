
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:template/core/constant/enum/cache_enum.dart';
import 'package:template/core/init/navigation/navigation_manager.dart';

import '../../../core/init/cache/shared_manager.dart';


class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {

  final NavigationManager manager = NavigationManager();
  final SharedManager sharedManager = SharedManager();

  String username = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(username),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(onPressed: () async {
              await sharedManager.setStringValues(CacheEnum.TOKEN.name, "1ku29jd29jfd9847ndso28y4628dsanrl975");
            }, child: const Text("Set")),
            TextButton(onPressed: ()async {
              final response = await sharedManager.getStringValues(CacheEnum.TOKEN.name);
              setState(() {
                username = response;
              });
            }, child: const Text("Get")),
            
            ElevatedButton(onPressed: (){
              manager.navigateToWantedPath(context,"/login",{"sample":"dasdas"});
            }, child: Text("Login sayfasına git")),
          ],
        ),
      ),
    );
  }
}