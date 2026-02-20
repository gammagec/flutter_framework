import 'package:built_value/built_value.dart';
import 'package:flutter/foundation.dart';

part 'foo_item_view_model.g.dart';

abstract class FooItemViewModel
    implements Built<FooItemViewModel, FooItemViewModelBuilder> {
  ValueListenable<String> get name;

  FooItemViewModel._();

  factory FooItemViewModel({required ValueListenable<String> name}) =
      _$FooItemViewModel._;
}
