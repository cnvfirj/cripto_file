
import 'package:cripto_file/rep/repository.dart';
import 'package:flutter/material.dart';

class Inject{

  static final Inject _single = Inject();

  static Inject get single => _single;

  final RepositoryBlocKey _repositoryBlocKey = RepositoryBlocKey();


  void on(BuildContext context){
    // if(_cubitKey==null)_cubitKey = BlocKey(S.of(context).);
  }

  // RepositoryBlocKey get repositoryBlocKey => _repositoryBlocKey;

  PressLockKey get pressLockKey =>_repositoryBlocKey;

  FieldTextNameKey get fieldTextNameKey =>_repositoryBlocKey;

  PressOtherButtons get pressOtherButtons =>_repositoryBlocKey;
}