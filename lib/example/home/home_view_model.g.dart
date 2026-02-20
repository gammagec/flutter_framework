// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_view_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$HomeViewModel extends HomeViewModel {
  @override
  final String title;
  @override
  final CommandWithReturn<Widget> createFooListView;
  @override
  final CommandWithReturn<Widget> createBarListView;
  @override
  final Command onAddFoo;

  factory _$HomeViewModel([void Function(HomeViewModelBuilder)? updates]) =>
      (HomeViewModelBuilder()..update(updates))._build();

  _$HomeViewModel._({
    required this.title,
    required this.createFooListView,
    required this.createBarListView,
    required this.onAddFoo,
  }) : super._();
  @override
  HomeViewModel rebuild(void Function(HomeViewModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HomeViewModelBuilder toBuilder() => HomeViewModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HomeViewModel &&
        title == other.title &&
        createFooListView == other.createFooListView &&
        createBarListView == other.createBarListView &&
        onAddFoo == other.onAddFoo;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, createFooListView.hashCode);
    _$hash = $jc(_$hash, createBarListView.hashCode);
    _$hash = $jc(_$hash, onAddFoo.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'HomeViewModel')
          ..add('title', title)
          ..add('createFooListView', createFooListView)
          ..add('createBarListView', createBarListView)
          ..add('onAddFoo', onAddFoo))
        .toString();
  }
}

class HomeViewModelBuilder
    implements Builder<HomeViewModel, HomeViewModelBuilder> {
  _$HomeViewModel? _$v;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  CommandWithReturn<Widget>? _createFooListView;
  CommandWithReturn<Widget>? get createFooListView => _$this._createFooListView;
  set createFooListView(CommandWithReturn<Widget>? createFooListView) =>
      _$this._createFooListView = createFooListView;

  CommandWithReturn<Widget>? _createBarListView;
  CommandWithReturn<Widget>? get createBarListView => _$this._createBarListView;
  set createBarListView(CommandWithReturn<Widget>? createBarListView) =>
      _$this._createBarListView = createBarListView;

  Command? _onAddFoo;
  Command? get onAddFoo => _$this._onAddFoo;
  set onAddFoo(Command? onAddFoo) => _$this._onAddFoo = onAddFoo;

  HomeViewModelBuilder();

  HomeViewModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _createFooListView = $v.createFooListView;
      _createBarListView = $v.createBarListView;
      _onAddFoo = $v.onAddFoo;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HomeViewModel other) {
    _$v = other as _$HomeViewModel;
  }

  @override
  void update(void Function(HomeViewModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HomeViewModel build() => _build();

  _$HomeViewModel _build() {
    final _$result =
        _$v ??
        _$HomeViewModel._(
          title: BuiltValueNullFieldError.checkNotNull(
            title,
            r'HomeViewModel',
            'title',
          ),
          createFooListView: BuiltValueNullFieldError.checkNotNull(
            createFooListView,
            r'HomeViewModel',
            'createFooListView',
          ),
          createBarListView: BuiltValueNullFieldError.checkNotNull(
            createBarListView,
            r'HomeViewModel',
            'createBarListView',
          ),
          onAddFoo: BuiltValueNullFieldError.checkNotNull(
            onAddFoo,
            r'HomeViewModel',
            'onAddFoo',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
