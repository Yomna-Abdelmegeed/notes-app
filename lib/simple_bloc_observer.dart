import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimpleBlocObserver implements BlocObserver {
  @override
  void onChange(BlocBase bloc, Change change) {
    debugPrint("Change = $change");
  }

  @override
  void onClose(BlocBase bloc) {
    debugPrint("Close = $bloc");
  }

  @override
  void onCreate(BlocBase bloc) {
    debugPrint("Create = $bloc");
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    debugPrint("Transition in $bloc => $transition");
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    debugPrint("Error in $bloc => $error");
  }

  @override
  void onEvent(Bloc bloc, Object? event) {
    debugPrint("onEvent = $event!");
  }
}
