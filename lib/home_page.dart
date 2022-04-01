//Este eu utilizo quando vou criar páginas dinâmicas, o fato de ter que desacoplar o HomePageState
//Da class HomePage é pra justamente eu conseguir mexer/alterar o estado apenas no "objeto" que 
//realmente sofre a alteração
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}


//O método GestureDetector => detecta quando há um clique em cima de um texto

class HomePageState extends State <HomePage>{
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),


      //Quando criamos varios Containers, dentro do mesmo render, o que ocorre é uma sobrescricao
      //Ou seja, se possuo um quadrado maior sendo renderizado, e um menor dentro, de cores diferentes
      //Sera renderizado no tamanho total (maior tamanho entre ambos) com a ultima cor declarada.
      //Métodos de single render => Align e Center são exemplos 

      body: Container(
        height: 200,
        width: 200,
        color: Colors.black,
        //Aqui está acontecendo um single render, onde renderiza ambos, quadrado preto e verde
        child: Center(
          child: Container(
            height: 100,
            width: 100,
            color: Colors.green,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
          onPressed: () {
            setState(() {
              counter++;  
            });
          },
      ),
    );
  }
}