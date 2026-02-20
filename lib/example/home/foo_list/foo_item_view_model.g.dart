// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'foo_item_view_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FooItemViewModel extends FooItemViewModel {
  @override
  final ValueListenable<String> name;

  factory _$FooItemViewModel([
    void Function(FooItemViewModelBuilder)? updates,
  ]) => (FooItemViewModelBuilder()..update(updates))._build();

  _$FooItemViewModel._({required this.name}) : super._();
  @override
  FooItemViewModel rebuild(void Function(FooItemViewModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FooItemViewModelBuilder toBuilder() =>
      FooItemViewModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FooItemViewModel && name == other.name;
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
      r'FooItemViewModel',
    )..add('name', name)).toString();
  }
}

class FooItemViewModelBuilder
    implements Builder<FooItemViewModel, FooItemViewModelBuilder> {
  _$FooItemViewModel? _$v;

  ValueListenable<String>? _name;
  ValueListenable<String>? get name => _$this._name;
  set name(ValueListenable<String>? name) => _$this._name = name;

  FooItemViewModelBuilder();

  FooItemViewModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FooItemViewModel other) {
    _$v = other as _$FooItemViewModel;
  }

  @override
  void update(void Function(FooItemViewModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FooItemViewModel build() => _build();

  _$FooItemViewModel _build() {
    final _$result =
        _$v ??
        _$FooItemViewModel._(
          name: BuiltValueNullFieldError.checkNotNull(
            name,
            r'FooItemViewModel',
            'name',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
