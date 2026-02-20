import 'package:framework/module.dart';
import 'package:framework/view_widget.dart';

import 'package:framework/example/home/bar_list/bar_list_component.dart';
import 'package:framework/example/home/bar_list/bar_list_view_model.dart';
import 'package:framework/example/home/bar_list/bar_list_view.dart';

class BarListModule extends Module {
  @override
  void configure() {
    bindLazy<ComponentRef<BarListViewModel>>(
            () => ComponentRef(
            BarListComponent(),
                (viewModel) => BarListView(viewModel))
    );
  }
}
