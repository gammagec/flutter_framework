import 'package:flutter/widgets.dart';

typedef Command = void Function();
typedef CommandWithReturn<R> = R Function();
typedef TypedCommand<T> = void Function(T);
typedef TypedCommandWithReturn<R, T> = R Function(T);
typedef AsyncCommand = Future<void> Function();
typedef AsyncContextCommand = Future<void> Function(BuildContext);
typedef AsyncTypedCommand<T> = Future<void> Function(T);
typedef AsyncCommandWithReturn<R> = Future<R> Function();
typedef AsyncTypedCommandWithReturn<R, T> = Future<R> Function(T);
typedef ContextCommand = void Function(BuildContext);
typedef TypedContextCommand<T> = void Function(BuildContext, T);
