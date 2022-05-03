
import 'package:cripto_file/generated/l10n.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

typedef StringCalledKey = Function(String? key);
abstract class NamedKey {

  void setKey(String key);
  void setCalledKey(StringCalledKey getKey);
  String getKey();

}

abstract class WidgetKey{

  void _pressFieldKey();
  void _pressShareKey();
  void _pressClear();
  void _pressLock();

}

class CubitFieldKey extends Cubit<String>{
  CubitFieldKey(String initialState) : super(initialState);
  void setKey(String key)=>emit(key);
  String getKey()=>state;
  void press(){

  }
}


