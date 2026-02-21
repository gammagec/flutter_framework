import 'package:framework/module.dart';
import 'package:framework/view_widget.dart';
import 'package:framework/example/app.dart';
import 'package:framework/example/home/home_module.dart';
import 'package:framework/example/home/home_view_model.dart';
import 'package:framework/example/model/model_module.dart';

class MainModule extends Module {
  @override
  void configure() {
    install(ModelModule());
    install(HomeModule());
    bindLazy<App>(() => App(
      homeComponent: it.get<ComponentRef<HomeViewModel>>(),
    ));
  }
}