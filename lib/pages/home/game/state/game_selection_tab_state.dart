import 'package:calda_app/model/enum/game_type.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:state_notifier/state_notifier.dart';

part 'game_selection_tab_state.freezed.dart';

@freezed
abstract class GameSelectionTabState with _$GameSelectionTabState {
  factory GameSelectionTabState({
    GameType gameType,
    PlayerType playerType,
  }) = _GameSelectionTabState;

  @late
  bool get isValid => gameType != null && playerType != null;
}

class GameSelectionTabStateNotifier
    extends StateNotifier<GameSelectionTabState> {
  GameSelectionTabStateNotifier() : super(GameSelectionTabState());

  onGameTypeSelected(GameType _type) {
    state = state.copyWith(
      gameType: _type,
    );
  }

  onPlayerTypeSelected(PlayerType _type) {
    state = state.copyWith(
      playerType: _type,
    );
  }

  void clear() {
    state = state.copyWith(
      gameType: null,
      playerType: null,
    );
  }
}
