
import 'package:cripto_file/generated/l10n.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
typedef StringCalledKey = Function(String? key);
abstract class NamedKey {
  StringCalledKey? _getKey;

  // CubitWidgetKey(String start):super(start);

  void setKey(String key);

  void setCalledKey(StringCalledKey getKey){
    _getKey = _getKey;
  }
}

abstract class WidgetKey{
  void pressFieldKey();
  void pressShareKey();
  void pressClear();
}

