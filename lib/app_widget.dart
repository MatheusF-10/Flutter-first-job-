import 'package:flutter/material.dart';
import 'package:ola_mundo/app_controller.dart';

import 'home_page.dart';
import 'login_page.dart';
//Este eu utilizo quando vou criar páginas estáticas
class AppWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: AppController.instance,
      builder: ((context, child) {
        return  MaterialApp(
          theme: ThemeData(
            primarySwatch: Colors.red,
            brightness: AppController.instance.isDartTheme 
            //Se isDartTheme for true ele recebe o tema dark
            ? Brightness.dark
            //Se não, recebe o tema light
            : Brightness.light 
          ),
          initialRoute: '/',
          routes: {
            '/': (context) => LoginPage(),
            '/home': (context) => HomePage(),
          },
          );
          })
    );
    }
  }