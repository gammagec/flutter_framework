import 'package:get_it/get_it.dart';

import 'di.dart';

abstract class Module {

  GetIt? _getIt;
  Di? _di;
  Di get di {
    assert (_di != null);
    return _di!;
  }

  void setGetIt(GetIt getIt) {
    _getIt = getIt;
    _di = Di(getIt);
  }

  void configure() {}

  void bind<T extends Object>(T instance) {
    assert (_getIt != null);
    _getIt!.registerSingleton<T>(instance);
  }

  void bindFactory<T extends Object>(T Function() instance) {
    assert (_getIt != null);
    _getIt!.registerFactory<T>(instance);
  }

  void bindLazy<T extends Object>(T Function() instance) {
    assert (_getIt != null);
    _getIt!.registerLazySingleton<T>(instance);
  }

  void install(Module module) {
    assert (_getIt != null);
    module.setGetIt(_getIt!);
    module.configure();
  }
}