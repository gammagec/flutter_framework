import 'package:get_it/get_it.dart';

class Di {
  Di(GetIt getIt) : _getIt = getIt;

  final GetIt _getIt;
  Di? _parent;

  void setParent(Di di) {
    _parent = di;
  }

  T get<T extends Object>() {
    T? t = _getIt.maybeGet<T>();
    if (t == null) {
      if (_parent != null) {
        return _parent!.get<T>();
      }
      throw StateError("Type $T not registered");
    }
    return t;
  }
}