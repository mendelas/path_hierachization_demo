import 'package:flutter/material.dart';
// ChangeNotifierは、class内の値が変更した場合に知らせる機能を付与するという意味
class TextProvider extends ChangeNotifier {
  // フォームから入ってくる値を格納する変数を定義
  String textValue = 'text';
  // 関数に「String型のtext」という引数を書く
  void TextChanged(String text) {
    // 上で定義した「textValue」という変数を呼び出して、関数の中に書いておく。この変数の中に、
    //関数の引数を格納しておく。
    // 上で定義した変数 = 引数
    textValue = text;
    // ChangeNotifierを使用しているclassに使用できる関数、値が変わったことを他のページにも知らせて更新させる役目をもっている
    notifyListeners();
  }
}