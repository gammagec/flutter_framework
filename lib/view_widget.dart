import 'dart:async';

import 'package:flutter/cupertino.dart';

import 'component.dart';
import 'component_view.dart';

abstract class ComponentFactory<VM extends Object> {
  ComponentFactory(this.viewBuilder);

  final ComponentView<VM> Function(VM) viewBuilder;

  ViewWidget<VM> createView(Component<VM> component) {
    return ViewWidget<VM>(component, viewBuilder);
  }
}

class ComponentRef<VM extends Object> {
  ComponentRef(
      this.component,
      this.viewBuilder
      );

  final Component<VM> component;
  final ComponentView<VM> Function(VM) viewBuilder;

  ViewWidget<VM> createView() {
    return ViewWidget<VM>(component, viewBuilder);
  }
}

class ViewWidget<VM extends Object> extends StatefulWidget {
  const ViewWidget(
      this.component, this.viewBuilder, {super.key});

  final Component<VM> component;
  final ComponentView<VM> Function(VM) viewBuilder;


  @override
  State<ViewWidget<VM>> createState() => _ViewWidgetState<VM>();
}

class _ViewWidgetState<VM extends Object> extends State<ViewWidget<VM>> {

  VM? _value;
  StreamSubscription<VM>? _listener;

  @override
  Widget build(BuildContext context) => widget.viewBuilder(_value!);

  @override
  void initState() {
    super.initState();
    _value = widget.component.initialViewModel;
    _subscribe();
  }

  @override void didUpdateWidget(ViewWidget<VM> oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.component.viewModels == widget.component.viewModels &&
     oldWidget.component.initialViewModel == widget.component.initialViewModel) {
      return;
    }
    _value = widget.component.initialViewModel;
    if (oldWidget.component.viewModels != widget.component.viewModels) {
      _unsubscribe();
      _subscribe();
    }
  }

  @override
  void dispose() {
    _unsubscribe();
    super.dispose();
  }

  void _subscribe() {
    assert(_listener == null);
    _listener = widget.component.viewModels.listen((value) {
      setState(() => _value = value);
    });
  }

  void _unsubscribe() {
    _listener?.cancel();
    _listener = null;
  }
}