import 'package:framework/module.dart';

import 'app_model.dart';

class ModelModule extends Module {
  @override
  void configure() {
    bind<AppModel>(AppModel());
  }
}