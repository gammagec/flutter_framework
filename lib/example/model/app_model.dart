import 'package:flutter/foundation.dart';
import 'package:built_collection/built_collection.dart';

import 'foo_model.dart';

class AppModel {
  final ValueNotifier<BuiltList<FooModel>> _foos = ValueNotifier(BuiltList());
  ValueListenable<BuiltList<FooModel>> get foos => _foos;
  
  void addFoo(FooModel foo) {
    _foos.value = _foos.value.rebuild((b) => b.add(foo));
  }
}