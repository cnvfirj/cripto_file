import 'package:cripto_file/bloc/bloc_key.dart';
import 'package:cripto_file/generated/l10n.dart';
import 'package:flutter/material.dart';

class InjectBloc{
  static final InjectBloc _single = InjectBloc();


  void on(BuildContext context){
    // if(_cubitKey==null)_cubitKey = BlocKey(S.of(context).);
  }

}