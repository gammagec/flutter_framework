import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import 'package:framework/example/app.dart';
import 'package:framework/example/model/app_model.dart';
import 'package:framework/example/model/foo_model.dart';

import 'main_module.dart';

final getIt = GetIt.instance;

void main() async {
  final module = MainModule();
  module.setGetIt(getIt);
  module.configure();
  final di = module.di;

  final appModel = di.get<AppModel>();
  appModel.addFoo(FooModel(name: "john"));
  appModel.addFoo(FooModel(name: "frank"));
  appModel.addFoo(FooModel(name: "henry"));
  runApp(di.get<App>());
}
