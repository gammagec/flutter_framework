import 'package:rxdart/subjects.dart';
import 'package:rxdart/streams.dart';
import 'package:get_it/get_it.dart';

abstract class Component<VM> implements Disposable {
  Component();

  BehaviorSubject<VM>? _viewModels;
  VM get initialViewModel;
  bool get _initialized => _viewModels != null;
  bool _isDisposed = false;

  set viewModel(VM viewModel) {
    assert(!_isDisposed);
    if (_isDisposed) {
      return;
    }
    _ensureInitialized();
    _viewModels!.add(viewModel);
  }

  ValueStream<VM> get viewModels {
    assert(!_isDisposed);
    _ensureInitialized();
    return _viewModels!;
  }

  void _ensureInitialized() {
    if (_initialized) {
      return;
    }
    final viewModel = initialViewModel;
    assert(viewModel != null);
    _viewModels = BehaviorSubject<VM>.seeded(viewModel);
  }

  @override
  Future<void> onDispose() async {
    if (_isDisposed) {
      return;
    }
    _viewModels?.close();
    _isDisposed = true;
  }
}