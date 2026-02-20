import 'package:built_value/built_value.dart';

part 'bar_list_view_model.g.dart';

abstract class BarListViewModel implements Built<BarListViewModel, BarListViewModelBuilder> {
  String get name;

  BarListViewModel._();
  factory BarListViewModel({
    required String name,
  }) = _$BarListViewModel._;
}
