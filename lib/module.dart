import 'package:get_it/get_it.dart';

abstract class Module {

  GetIt? _it;
  GetIt get it => _it!;

  void setGetIt(GetIt getIt) {
    _it = getIt;
  }

  void configure() {}

  void bind<T extends Object>(T instance) {
    assert (_it != null);
    it.registerSingleton<T>(instance);
  }

  void bindFactory<T extends Object>(T Function() instance) {
    assert (_it != null);
    it.registerFactory<T>(instance);
  }

  void bindLazy<T extends Object>(T Function() instance) {
    assert (_it != null);
    it.registerLazySingleton<T>(instance);
  }

  void install(Module module) {
    assert (_it != null);
    module.setGetIt(it);
    module.configure();
  }
}