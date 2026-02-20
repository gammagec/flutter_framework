import 'package:flutter/widgets.dart';

abstract class ComponentView<VM> extends StatelessWidget {
  const ComponentView(this.viewModel, {super.key});

  final VM viewModel;
}