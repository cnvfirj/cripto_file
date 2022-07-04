
import 'package:flutter/cupertino.dart';

abstract class PressLockKey{
  void lockKey(bool lock);
}

abstract class FieldTextNameKey{
  void pressNameKey(BuildContext context);
  void registerSetterNameKey(dynamic func);
  void registerVisibleNameKey(dynamic func);
  void registerGetterNameKey(dynamic funk);
}

abstract class PressOtherButtons{
  void pressClear(BuildContext context);
  void pressShare(BuildContext context);
}

class RepositoryBlocKey implements PressLockKey,FieldTextNameKey,PressOtherButtons{

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

  dynamic getterNameKey;//извлекаем имя ключа
  @override
  void registerGetterNameKey(funk) {
    // TODO: implement registerGetterNameKey36345737373737djjgfg45
    getterNameKey = funk;
  }

  /*чистим БД ключей*/
  @override
  void pressClear(BuildContext context) {
    // TODO: implement pressClear
  }

  /*Получаем имя ключа, из БД извлекаем его значение и расшариваем*/
  @override
  void pressShare(BuildContext context) {
    // TODO: implement pressShare
    String nameKey = getterNameKey();
    print(getterNameKey());
  }



}