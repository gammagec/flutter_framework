import 'package:framework/module.dart';
import 'package:framework/view_widget.dart';

import 'package:framework/example/home/bar_list/bar_list_module.dart';
import 'package:framework/example/home/foo_list/foo_list_module.dart';
import 'package:framework/example/home/foo_list/foo_list_view_model.dart';
import 'package:framework/example/home/bar_list/bar_list_view_model.dart';
import 'package:framework/example/home/home_component.dart';
import 'package:framework/example/home/home_view_model.dart';
import 'package:framework/example/home/home_view.dart';
import 'package:framework/example/model/app_model.dart';

class HomeModule extends Module {
  @override
  void configure() {
    bindLazy<ComponentRef<HomeViewModel>>(
      () => ComponentRef(
        HomeComponent(
          fooListComponent: di.get<ComponentRef<FooListViewModel>>(),
          barListComponent: di.get<ComponentRef<BarListViewModel>>(),
          appModel: di.get<AppModel>(),
        ),
        (viewModel) => HomeView(viewModel),
      ),
    );
    install(BarListModule());
    install(FooListModule());
  }
}
