import 'package:framework/component.dart';
import 'package:framework/example/home/foo_list/foo_item_component.dart';

import 'package:framework/example/model/app_model.dart';
import 'foo_list_view_model.dart';

class FooListComponent extends Component<FooListViewModel> {
  FooListComponent({
    required this.appModel,
    required this.fooItemComponentFactory,
  });

  final AppModel appModel;
  final FooItemComponentFactory fooItemComponentFactory;

  @override
  FooListViewModel get initialViewModel => FooListViewModel(
    name: "ted",
    foos: appModel.foos,
    createFooItemView: (fooModel) =>
        fooItemComponentFactory.create(fooModel).createView(),
  );
}
