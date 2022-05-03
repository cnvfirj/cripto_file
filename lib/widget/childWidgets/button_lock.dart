import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LockKey extends StatelessWidget{
  const LockKey({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CubitKeyLock,IconData>(
        builder:(BuildContext context,IconData icon){
          return SizedBox(
            width: 25,
            height: 25,
            child: IconButton(
              icon: Icon(icon),
              onPressed: (){
                context.read<CubitKeyLock>().press();
              },
            ),
          );
        } );
  }
}

class BlocLockKey extends StatelessWidget{
  const BlocLockKey({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context)=>CubitKeyLock(),
      child: const LockKey(),
    );
  }
}

class CubitKeyLock extends Cubit<IconData>{
  static const String keyLock = 'key_lock';
  bool _lock = false;

  CubitKeyLock() : super(Icons.lock_open) {
    read();
  }

  void read() async{
    SharedPreferences p = await SharedPreferences.getInstance();
    _lock = p.getBool(keyLock)!;
    checkBool();
  }

  void setIcon(IconData lock)=>emit(lock);

  void press()async{
    _lock = !_lock;
    checkBool();
    SharedPreferences p = await SharedPreferences.getInstance();
    p.setBool(keyLock, _lock);
  }

  void checkBool(){
    if(_lock)setIcon(Icons.lock);
    else setIcon(Icons.lock_open);
  }
}

