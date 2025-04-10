import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';

class CounterProvidier extends ChangeNotifier{
  int counter=12;
  bool loading = false;
 String errorString ='';



  incrementCounter()async{
    try {
      errorString='';
  loading=true;
   notifyListeners();
   
     await Future.delayed(Durations.long1).then((value) {
      counter++;
     },);
// throw Exception("kjnsjn")
    //  jsonDecode("sijnfnnfjhcn");//induce error
  log(counter.toString());
  //setstate
  loading=false;
  notifyListeners();
}  catch (e) {
  errorString=e.toString();
  notifyListeners();
}
  }





}