import 'package:flutter/material.dart';

import 'package:framework/component_view.dart';

import 'foo_list_view_model.dart';

class FooListView extends ComponentView<FooListViewModel> {
  const FooListView(super.viewModel, {super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: viewModel.foos,
      builder: (context, foos, child) => Column(
        children: [
          Text("There are ${foos.length} foos!"),
          Expanded(
            child: ListView.builder(
              itemCount: foos.length,
              itemBuilder: (context, index) =>
                  viewModel.createFooItemView(foos[index]),
            ),
          ),
        ],
      ),
    );
  }
}
