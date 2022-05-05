
import 'package:flutter/cupertino.dart';

abstract class PressLockKey{
  void lockKey(bool lock);
}

abstract class FieldTextNameKey{
  void pressNameKey(BuildContext context);
  void registerSetterNameKey(dynamic func);
}

class RepositoryBlocKey implements PressLockKey,FieldTextNameKey{
  dynamic setterNameKey; //передаем имя ключа в поле ключа. Регистрация происходит в конструкторе кубита
  @override
  void lockKey(bool lock) {
    // TODO: implement lockKey
    // setterNameKey('$lock');
  }

  @override
  void pressNameKey(BuildContext context) {

  }

  @override
  void registerSetterNameKey(func) {
    // TODO: implement registerSetterNameKey
    setterNameKey = func;
  }

}