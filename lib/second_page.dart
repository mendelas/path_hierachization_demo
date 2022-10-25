
import 'package:flutter/material.dart';

import 'main.dart';

class SecondPage extends StatelessWidget {
  SecondPage(this.name);
  final String name;
  String nameText ='';

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar:AppBar(
        backgroundColor:Colors.red,
        title:const Text('記入'),
      ),
      body:Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(name),
            FloatingActionButton(
                onPressed:(){
                  TextField(
                    onChanged:(text){
                      nameText = text;
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context)=>MyApp(nameText),)
                      );
                    },
                  ),
                }
            ),
          ],
        ),
      ),
    );
  }
}