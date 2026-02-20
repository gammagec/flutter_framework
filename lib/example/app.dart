import 'package:flutter/material.dart';
import 'package:framework/view_widget.dart';

class App extends StatefulWidget {
  const App({
    required this.homeComponent,
    super.key
  });

  final ComponentRef<dynamic> homeComponent;

  @override
  State<StatefulWidget> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FooBarBaz!',
      theme: ThemeData(),
      home: widget.homeComponent.createView()
    );
  }
}