import 'package:flutter/material.dart';
import 'main_model.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{


  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title:'path provider demo',
      home:ChangeNotifierProvider<MainModel>(
        create: (_) =>MainModel(),
        child: Scaffold(
          appBar:AppBar(
            title: Text('コリアンダー'),
          ),
          body:Consumer<MainModel>(builder: (context,model,child) {
              return Center(
                child:Column(
                  children:[
                    Text(
                      model.ikenoText,
                      style: TextStyle(
                        fontSize:30,
                      ),
                    ),
                    ElevatedButton(
                      child: Text('ボタン'),
                      /*if(model.ikenoText =='IKENO'){
                        onPressed: () {
                          model.changeikenoText();
                        }
                      }else{
                        onPressed: () {
                          model.changekakkoiiText();
                        }
                      }*/

                      onPressed:(){
                        if(model.ikenoText =='IKENO'){
                          model.changeikenoText();
                        }else{
                          model.changekakkoiiText();
                        }
                      }

                    ),
                  ]
                ),
              );
            }
          ),
        ),
      ),
    );
  }
}