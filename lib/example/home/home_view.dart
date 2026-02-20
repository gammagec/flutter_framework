import 'package:flutter/material.dart';

import 'package:framework/component_view.dart';
import 'package:framework/example/home/home_view_model.dart';

class HomeView extends ComponentView<HomeViewModel> {
  const HomeView(super.viewModel, {super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.directions_car), text: "Foo"),
              Tab(icon: Icon(Icons.directions_transit), text: "Bar"),
            ],
          ),
        ),
        body: Column(
          children: [
            MaterialButton(
              onPressed: viewModel.onAddFoo,
              child: Text("Add Foo"),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  viewModel.createFooListView(),
                  viewModel.createBarListView(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
