// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bar_list_view_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BarListViewModel extends BarListViewModel {
  @override
  final String name;

  factory _$BarListViewModel([
    void Function(BarListViewModelBuilder)? updates,
  ]) => (BarListViewModelBuilder()..update(updates))._build();

  _$BarListViewModel._({required this.name}) : super._();
  @override
  BarListViewModel rebuild(void Function(BarListViewModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BarListViewModelBuilder toBuilder() =>
      BarListViewModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BarListViewModel && name == other.name;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'BarListViewModel',
    )..add('name', name)).toString();
  }
}

class BarListViewModelBuilder
    implements Builder<BarListViewModel, BarListViewModelBuilder> {
  _$BarListViewModel? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  BarListViewModelBuilder();

  BarListViewModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BarListViewModel other) {
    _$v = other as _$BarListViewModel;
  }

  @override
  void update(void Function(BarListViewModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BarListViewModel build() => _build();

  _$BarListViewModel _build() {
    final _$result =
        _$v ??
        _$BarListViewModel._(
          name: BuiltValueNullFieldError.checkNotNull(
            name,
            r'BarListViewModel',
            'name',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
