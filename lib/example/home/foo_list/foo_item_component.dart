import 'package:framework/component.dart';
import 'package:framework/view_widget.dart';

import 'foo_item_view_model.dart';
import 'package:framework/example/model/foo_model.dart';

abstract class FooItemComponentFactory {
  ComponentRef<FooItemViewModel> create(
      FooModel fooModel,
      );
}

class FooItemComponent extends Component<FooItemViewModel> {

  FooItemComponent({
    required this.fooModel
  });

  final FooModel fooModel;

  @override
  FooItemViewModel get initialViewModel => FooItemViewModel(name: fooModel.name);
}