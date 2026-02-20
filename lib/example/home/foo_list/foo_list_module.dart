import 'package:framework/example/home/foo_list/foo_item_component.dart';
import 'package:framework/module.dart';
import 'package:framework/view_widget.dart';
import 'package:framework/di.dart';

import 'package:framework/example/home/foo_list/foo_list_component.dart';
import 'package:framework/example/home/foo_list/foo_list_view_model.dart';
import 'package:framework/example/home/foo_list/foo_list_view.dart';
import 'package:framework/example/home/foo_list/foo_item_view.dart';
import 'package:framework/example/model/app_model.dart';
import 'package:framework/example/model/foo_model.dart';

import 'foo_item_view_model.dart';

class _FooItemComponentFactory implements FooItemComponentFactory {
  _FooItemComponentFactory(this.di);

  final Di di;

  @override
  ComponentRef<FooItemViewModel> create(FooModel fooModel) => ComponentRef(
    FooItemComponent(fooModel: fooModel),
    (viewModel) => FooItemView(viewModel),
  );
}

class FooListModule extends Module {
  @override
  void configure() {
    bindFactory<FooItemComponentFactory>(() => _FooItemComponentFactory(di));
    bindLazy<ComponentRef<FooListViewModel>>(
      () => ComponentRef(
        FooListComponent(
          appModel: di.get<AppModel>(),
          fooItemComponentFactory: di.get<FooItemComponentFactory>(),
        ),
        (viewModel) => FooListView(viewModel),
      ),
    );
  }
}
