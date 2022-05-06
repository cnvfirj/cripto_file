
import 'package:flutter/cupertino.dart';

abstract class PressLockKey{
  void lockKey(bool lock);
}

abstract class FieldTextNameKey{
  void pressNameKey(BuildContext context);
  void registerSetterNameKey(dynamic func);
  void registerVisibleNameKey(dynamic func);
}

class RepositoryBlocKey implements PressLockKey,FieldTextNameKey{

  @override
  void lockKey(bool lock) {
    // TODO: implement lockKey
    // setterNameKey('$lock');
    setterVisibleNameKey(lock);
  }

  @override
  void pressNameKey(BuildContext context) {

  }

  dynamic setterNameKey; //передаем имя ключа в поле ключа. Регистрация происходит в конструкторе кубита
  @override
  void registerSetterNameKey(func) {
    // TODO: implement registerSetterNameKey
    setterNameKey = func;
  }

  dynamic setterVisibleNameKey; //передаем видимость или невидимость имени ключа
  @override
  void registerVisibleNameKey(func) {
    // TODO: implement visibleNameKey
    setterVisibleNameKey = func;
  }



}