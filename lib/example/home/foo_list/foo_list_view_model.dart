import 'package:built_value/built_value.dart';
import 'package:built_collection/built_collection.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart' show Widget;
import 'package:framework/commands.dart';

import 'package:framework/example/model/foo_model.dart';

part 'foo_list_view_model.g.dart';

abstract class FooListViewModel implements Built<FooListViewModel, FooListViewModelBuilder> {
  String get name;
  ValueListenable<BuiltList<FooModel>> get foos;
  TypedCommandWithReturn<Widget, FooModel> get createFooItemView;

  FooListViewModel._();
  factory FooListViewModel({
    required String name,
    required ValueListenable<BuiltList<FooModel>> foos,
    required TypedCommandWithReturn<Widget, FooModel> createFooItemView,
  }) = _$FooListViewModel._;
}