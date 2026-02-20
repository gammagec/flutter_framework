import 'package:flutter/material.dart';

import 'package:framework/component_view.dart';

import 'bar_list_view_model.dart';

class BarListView extends ComponentView<BarListViewModel> {
  const BarListView(super.viewModel, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(viewModel.name);
  }
}
