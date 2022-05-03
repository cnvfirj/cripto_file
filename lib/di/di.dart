import 'package:cripto_file/bloc/bloc_key.dart';
import 'package:cripto_file/generated/l10n.dart';
import 'package:cripto_file/rep/repository.dart';
import 'package:flutter/material.dart';

class Inject{

  static final Inject _single = Inject();

  static Inject get single => _single;


  void on(BuildContext context){
    // if(_cubitKey==null)_cubitKey = BlocKey(S.of(context).);
  }

}