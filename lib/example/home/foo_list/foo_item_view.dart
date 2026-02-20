import 'package:flutter/cupertino.dart';
import 'package:framework/component_view.dart';

import 'foo_item_view_model.dart';

class FooItemView extends ComponentView<FooItemViewModel> {
  const FooItemView(super.viewModel, {super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: viewModel.name,
      builder: (context, name, child) => Text("foo name: $name"),
    );
  }
}
