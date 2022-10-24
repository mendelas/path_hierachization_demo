
import 'package:flutter/foundation.dart';

class MainModel extends ChangeNotifier{
  String ikenoText = 'IKENO';

  void changeikenoText(){
    ikenoText = 'いけのさんかっこいい';
    notifyListeners();
  }

  void changekakkoiiText(){
    ikenoText = 'IKENO';
    notifyListeners();
  }

}