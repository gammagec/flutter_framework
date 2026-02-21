import 'package:framework/module.dart';
import 'package:framework/view_widget.dart';

import 'package:framework/example/home/bar_list/bar_list_module.dart';
import 'package:framework/example/home/foo_list/foo_list_module.dart';
import 'package:framework/example/home/home_component.dart';
import 'package:framework/example/home/home_view_model.dart';
import 'package:framework/example/home/home_view.dart';

class HomeModule extends Module {
  @override
  void configure() {
    bindLazy<ComponentRef<HomeViewModel>>(
      () => ComponentRef(
        HomeComponent(
          fooListComponent: it(),
          barListComponent: it(),
          appModel: it(),
        ),
        (viewModel) => HomeView(viewModel),
      ),
    );
    install(BarListModule());
    install(FooListModule());
  }
}
