import 'package:framework/component.dart';
import 'package:framework/example/model/app_model.dart';
import 'package:framework/example/model/foo_model.dart';
import 'package:framework/view_widget.dart';

import 'package:framework/example/home/foo_list/foo_list_view_model.dart';
import 'package:framework/example/home/bar_list/bar_list_view_model.dart';
import 'home_view_model.dart';

class HomeComponent extends Component<HomeViewModel> {
  HomeComponent({
    required this.appModel,
    required this.fooListComponent,
    required this.barListComponent,
  });

  final AppModel appModel;
  final ComponentRef<FooListViewModel> fooListComponent;
  final ComponentRef<BarListViewModel> barListComponent;

  @override
  HomeViewModel get initialViewModel => HomeViewModel(
    title: "this is the home view!",
    createFooListView: fooListComponent.createView,
    createBarListView: barListComponent.createView,
    onAddFoo: addFoo,
  );

  void addFoo() {
    appModel.addFoo(
      FooModel(name: "henry the ${appModel.foos.value.length + 1}"),
    );
  }
}
