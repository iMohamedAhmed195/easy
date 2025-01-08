import 'dart:developer';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'app_service.dart';

class GlobalBlocObserver extends BlocObserver {
  @override
  void onCreate(BlocBase bloc) {
    super.onCreate(bloc);
    if (kDebugMode) {
      log(
        '🟢 Bloc/Cubit Created: ${bloc.runtimeType}',
      );
    }
  }

  /// This method is invoked when a Bloc or Cubit is created. It allows for initial setup or logging.

  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    if (kDebugMode) {
      log(
        '🔄 State Changed: ${bloc.runtimeType}, '
        'from ${change.currentState} to ${change.nextState}',
      );
      AppService().logger.t('${bloc.runtimeType} $change');
    }
  }

  /// This method is triggered whenever there is a state change in any Bloc or Cubit.

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    if (kDebugMode) {
      log(
        '🔀 Transition: ${bloc.runtimeType}, '
        'from ${transition.currentState} to ${transition.nextState} '
        'with event ${transition.event}',
      );
      AppService().logger.i('${bloc.runtimeType} $transition');
    }
  }

  /// This method handles state transitions for Bloc instances. It provides detailed information on transitions, including the current state, the event, and the next state.

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    super.onError(bloc, error, stackTrace);
    if (kDebugMode) {
      log(
        '❌ Error in ${bloc.runtimeType}: $error',
        error: error,
        stackTrace: stackTrace,
      );
      AppService().logger.e('${bloc.runtimeType} $error $stackTrace');
    }
  }

  /// This method is triggered when an error occurs in a Bloc or Cubit. It logs the error and the associated stack trace.

  @override
  void onClose(BlocBase bloc) {
    super.onClose(bloc);
    if (kDebugMode) {
      log(
        '🛑 Bloc/Cubit Closed: ${bloc.runtimeType}',
      );
    }
  }

  @override

  /// This method is called when an event is added to the event stream.
  void onEvent(Bloc bloc, Object? event) {
    super.onEvent(bloc, event);
    log(
      '📥 Event Added: ${event.runtimeType} in ${bloc.runtimeType}',
    );
  }
  // This method is called just before a Bloc or Cubit is closed. It's useful for cleanup or logging purposes.
}
