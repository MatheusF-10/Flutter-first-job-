import 'package:flutter/material.dart';

import 'home_page.dart';
//Este eu utilizo quando vou criar páginas estáticas
class AppWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.red
      ),
      home: HomePage(),
      );
    }
  }