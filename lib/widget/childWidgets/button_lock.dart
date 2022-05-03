import 'package:cripto_file/rep/repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


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

class CubitKeyLock extends Cubit<IconData>{

  final RepLockKey rep;

  CubitKeyLock({required this.rep}) : super(Icons.lock_open) {
      rep.setListen(setLock);
  }
  void setLock(IconData lock)=>emit(lock);

  void press(){
   rep.changeLock();
  }
}

class RepLockKey{
  dynamic listen;

  bool _lock = false;

  void setListen(l)=>listen = l;

  void changeLock(){
    _lock = !_lock;
    if(listen!=null)listen(_lock);
  }

  void setLock(bool lock){
    _lock = lock;
    if(listen!=null)listen(_lock);
  }

}