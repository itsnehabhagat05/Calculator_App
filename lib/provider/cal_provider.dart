import 'package:flutter/material.dart';
import 'package:function_tree/function_tree.dart';
class calprovider extends ChangeNotifier{
  final compcontroller = TextEditingController();

  setValue (String val){
    String str = compcontroller.text;
    switch(val){
      case "C":
      compcontroller.clear();
      break;
      case "AC":
      compcontroller.text = str.substring(0,str.length-1);
      break;
      case "X":
      compcontroller.text +="*";
      break;
      case "=":
      compute();
      break;
      default:
      compcontroller.text += val;
    }

  }

  compute(){
    String text = compcontroller.text;
    compcontroller.text=text.interpret().toString();
  }


  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    compcontroller.dispose();
  }
}