import 'package:cripto_file/rep/repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../constants/colors.dart';
import '../../di/di.dart';

class BlocLockKey extends StatelessWidget{
  const BlocLockKey({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context)=>CubitKeyLock(lockKey: Inject.single.pressLockKey),
      child: const LockKey(),
    );
  }
}

class LockKey extends StatelessWidget{
  const LockKey({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CubitKeyLock,IconData>(
        builder:(BuildContext context,IconData icon){
          return SizedBox(
            width: 50,
            height: 50,
            child: IconButton(
              color: ConstantColors.colorDelimiter,
              icon: Icon(icon),
              onPressed: (){
                context.read<CubitKeyLock>().press();
              },
            ),
          );
        } );
  }
}

class CubitKeyLock extends Cubit<IconData>{

  static const String keyLock = 'key_lock';

  final PressLockKey lockKey;

  bool _lock = false;

  CubitKeyLock({required this.lockKey}) : super(Icons.visibility) {
    read();
  }

  void read() async{
    SharedPreferences p = await SharedPreferences.getInstance();
    bool? b = p.getBool(keyLock);
    if(b!=null){
      _lock = b;
      lockKey.lockKey(_lock);
      checkBool();
    }
  }

  void setIcon(IconData lock)=>emit(lock);

  void press()async{
    _lock = !_lock;
    lockKey.lockKey(_lock);
    checkBool();
    SharedPreferences p = await SharedPreferences.getInstance();
    p.setBool(keyLock, _lock);
  }

  void checkBool(){
    if(_lock) {
      setIcon(Icons.visibility_off);
    } else {
      setIcon(Icons.visibility);
    }
  }
}

