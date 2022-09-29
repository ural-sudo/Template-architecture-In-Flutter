
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:template/core/init/navigation/navigation_manager.dart';
import 'package:template/core/init/navigation/navigator_map.dart';
import 'package:template/view/auth/login/viewModel/login_provider.dart';
import 'package:template/view/auth/splash/splash.dart';


class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  

  @override
  Widget build(BuildContext context) {
    return context.watch<LoginProvider>().isLoading ?
     Splash() : Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            TextButton(onPressed: () {
               context.read<LoginProvider>().delay();
            }, child: const Text("Trying")),
          ],
        ),
      ),
    );
  }
}