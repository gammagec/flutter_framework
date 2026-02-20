import 'package:flutter/material.dart';

class FooModel {

  FooModel({
    required String name,
  }) : name = ValueNotifier(name);

  final ValueNotifier<String> name;
}