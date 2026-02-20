// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'foo_list_view_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FooListViewModel extends FooListViewModel {
  @override
  final String name;
  @override
  final ValueListenable<BuiltList<FooModel>> foos;
  @override
  final TypedCommandWithReturn<Widget, FooModel> createFooItemView;

  factory _$FooListViewModel([
    void Function(FooListViewModelBuilder)? updates,
  ]) => (FooListViewModelBuilder()..update(updates))._build();

  _$FooListViewModel._({
    required this.name,
    required this.foos,
    required this.createFooItemView,
  }) : super._();
  @override
  FooListViewModel rebuild(void Function(FooListViewModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FooListViewModelBuilder toBuilder() =>
      FooListViewModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FooListViewModel &&
        name == other.name &&
        foos == other.foos &&
        createFooItemView == other.createFooItemView;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, foos.hashCode);
    _$hash = $jc(_$hash, createFooItemView.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FooListViewModel')
          ..add('name', name)
          ..add('foos', foos)
          ..add('createFooItemView', createFooItemView))
        .toString();
  }
}

class FooListViewModelBuilder
    implements Builder<FooListViewModel, FooListViewModelBuilder> {
  _$FooListViewModel? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  ValueListenable<BuiltList<FooModel>>? _foos;
  ValueListenable<BuiltList<FooModel>>? get foos => _$this._foos;
  set foos(ValueListenable<BuiltList<FooModel>>? foos) => _$this._foos = foos;

  TypedCommandWithReturn<Widget, FooModel>? _createFooItemView;
  TypedCommandWithReturn<Widget, FooModel>? get createFooItemView =>
      _$this._createFooItemView;
  set createFooItemView(
    TypedCommandWithReturn<Widget, FooModel>? createFooItemView,
  ) => _$this._createFooItemView = createFooItemView;

  FooListViewModelBuilder();

  FooListViewModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _foos = $v.foos;
      _createFooItemView = $v.createFooItemView;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FooListViewModel other) {
    _$v = other as _$FooListViewModel;
  }

  @override
  void update(void Function(FooListViewModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FooListViewModel build() => _build();

  _$FooListViewModel _build() {
    final _$result =
        _$v ??
        _$FooListViewModel._(
          name: BuiltValueNullFieldError.checkNotNull(
            name,
            r'FooListViewModel',
            'name',
          ),
          foos: BuiltValueNullFieldError.checkNotNull(
            foos,
            r'FooListViewModel',
            'foos',
          ),
          createFooItemView: BuiltValueNullFieldError.checkNotNull(
            createFooItemView,
            r'FooListViewModel',
            'createFooItemView',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
