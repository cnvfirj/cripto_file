
import 'package:cripto_file/widget/childWidgets/button_lock.dart';
import 'package:flutter/material.dart';

abstract class RepKey{
  void lockKey(bool lock);
  void nameKey(String name);
}