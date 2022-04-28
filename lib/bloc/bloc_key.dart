
import 'package:cripto_file/generated/l10n.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class CubitKey extends Cubit<String>{

  CubitKey(String start):super(start);

  void pressText();
  void pressShare();
  void pressClear();
  void addKey();
}

class BlocKey extends CubitKey{
  BlocKey(String start) : super(start);

  @override
  void addKey() {
  }

  @override
  void pressClear() {
  }

  @override
  void pressShare() {
  }

  @override
  void pressText() {
  }

}