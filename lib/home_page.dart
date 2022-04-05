//Este eu utilizo quando vou criar páginas dinâmicas, o fato de ter que desacoplar o HomePageState
//Da class HomePage é pra justamente eu conseguir mexer/alterar o estado apenas no "objeto" que 
//realmente sofre a alteração
import 'package:flutter/material.dart';
import 'package:ola_mundo/app_controller.dart';

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
        //Actions são os menus que aparecem na lateral direita
        actions: [
          CustomSwitch()
        ],
      ),


      //Quando criamos varios Containers, dentro do mesmo render, o que ocorre é uma sobrescricao
      //Ou seja, se possuo um quadrado maior sendo renderizado, e um menor dentro, de cores diferentes
      //Sera renderizado no tamanho total (maior tamanho entre ambos) com a ultima cor declarada.
      //Métodos de single render => Align e Center são exemplos 



      //Aqui é necessário colocar um pai no widget Coluna, porque não tem como manipular o tamanho das 
      //colunas diretamente no widget "Column", então, geralmente, o widget pai de column é o Container, 
      //que funciona como se fosse um box, que podemos colocar tamanho
      body: Container(
        //Isso, significa que vai ocupar todo espaço disponível da tela
        width: double.infinity,
        height: double.infinity,

        //Há uma propriedade chamada ListView() ela é utilizada quando tenho muito conteúdo na página,
        //e necessito de um scroll
        //scrollDirection: Axis.horizontal faz o scroll na horizontal e Axis.vertical na vertical

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Contador: $counter'),
            CustomSwitch(),
            Container(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.black,
                ),
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.black,
                ),
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.black,
                )
              ],
            )
          ],
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

class CustomSwitch extends StatelessWidget {
  const CustomSwitch({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Switch(value: AppController.instance.isDartTheme,
        onChanged: (value){
          AppController.instance.changeTheme();
        });
  }
}