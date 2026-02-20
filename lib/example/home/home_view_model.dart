import 'package:built_value/built_value.dart';
import 'package:flutter/material.dart' show Widget;

import 'package:framework/commands.dart';

part 'home_view_model.g.dart';

abstract class HomeViewModel
    implements Built<HomeViewModel, HomeViewModelBuilder> {
  String get title;
  CommandWithReturn<Widget> get createFooListView;
  CommandWithReturn<Widget> get createBarListView;
  Command get onAddFoo;

  HomeViewModel._();

  factory HomeViewModel({
    required String title,
    required CommandWithReturn<Widget> createFooListView,
    required CommandWithReturn<Widget> createBarListView,
    required Command onAddFoo,
  }) = _$HomeViewModel._;
}
