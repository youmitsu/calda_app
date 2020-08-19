import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:state_notifier/state_notifier.dart';

part 'game_setup_state.freezed.dart';

@freezed
abstract class GameSetupState with _$GameSetupState {
  const factory GameSetupState({
    @Default(false) bool isDetailExpanded,
  }) = _GameSetupState;
}

class GameSetupStateNotifier extends StateNotifier<GameSetupState> {
  GameSetupStateNotifier() : super(GameSetupState());
}
