// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'game_selection_tab_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$GameSelectionTabStateTearOff {
  const _$GameSelectionTabStateTearOff();

// ignore: unused_element
  _GameSelectionTabState call({GameType gameType, PlayerType playerType}) {
    return _GameSelectionTabState(
      gameType: gameType,
      playerType: playerType,
    );
  }
}

// ignore: unused_element
const $GameSelectionTabState = _$GameSelectionTabStateTearOff();

mixin _$GameSelectionTabState {
  GameType get gameType;
  PlayerType get playerType;

  $GameSelectionTabStateCopyWith<GameSelectionTabState> get copyWith;
}

abstract class $GameSelectionTabStateCopyWith<$Res> {
  factory $GameSelectionTabStateCopyWith(GameSelectionTabState value,
          $Res Function(GameSelectionTabState) then) =
      _$GameSelectionTabStateCopyWithImpl<$Res>;
  $Res call({GameType gameType, PlayerType playerType});
}

class _$GameSelectionTabStateCopyWithImpl<$Res>
    implements $GameSelectionTabStateCopyWith<$Res> {
  _$GameSelectionTabStateCopyWithImpl(this._value, this._then);

  final GameSelectionTabState _value;
  // ignore: unused_field
  final $Res Function(GameSelectionTabState) _then;

  @override
  $Res call({
    Object gameType = freezed,
    Object playerType = freezed,
  }) {
    return _then(_value.copyWith(
      gameType: gameType == freezed ? _value.gameType : gameType as GameType,
      playerType:
          playerType == freezed ? _value.playerType : playerType as PlayerType,
    ));
  }
}

abstract class _$GameSelectionTabStateCopyWith<$Res>
    implements $GameSelectionTabStateCopyWith<$Res> {
  factory _$GameSelectionTabStateCopyWith(_GameSelectionTabState value,
          $Res Function(_GameSelectionTabState) then) =
      __$GameSelectionTabStateCopyWithImpl<$Res>;
  @override
  $Res call({GameType gameType, PlayerType playerType});
}

class __$GameSelectionTabStateCopyWithImpl<$Res>
    extends _$GameSelectionTabStateCopyWithImpl<$Res>
    implements _$GameSelectionTabStateCopyWith<$Res> {
  __$GameSelectionTabStateCopyWithImpl(_GameSelectionTabState _value,
      $Res Function(_GameSelectionTabState) _then)
      : super(_value, (v) => _then(v as _GameSelectionTabState));

  @override
  _GameSelectionTabState get _value => super._value as _GameSelectionTabState;

  @override
  $Res call({
    Object gameType = freezed,
    Object playerType = freezed,
  }) {
    return _then(_GameSelectionTabState(
      gameType: gameType == freezed ? _value.gameType : gameType as GameType,
      playerType:
          playerType == freezed ? _value.playerType : playerType as PlayerType,
    ));
  }
}

class _$_GameSelectionTabState
    with DiagnosticableTreeMixin
    implements _GameSelectionTabState {
  _$_GameSelectionTabState({this.gameType, this.playerType});

  @override
  final GameType gameType;
  @override
  final PlayerType playerType;

  bool _didisValid = false;
  bool _isValid;

  @override
  bool get isValid {
    if (_didisValid == false) {
      _didisValid = true;
      _isValid = gameType != null && playerType != null;
    }
    return _isValid;
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GameSelectionTabState(gameType: $gameType, playerType: $playerType, isValid: $isValid)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GameSelectionTabState'))
      ..add(DiagnosticsProperty('gameType', gameType))
      ..add(DiagnosticsProperty('playerType', playerType))
      ..add(DiagnosticsProperty('isValid', isValid));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GameSelectionTabState &&
            (identical(other.gameType, gameType) ||
                const DeepCollectionEquality()
                    .equals(other.gameType, gameType)) &&
            (identical(other.playerType, playerType) ||
                const DeepCollectionEquality()
                    .equals(other.playerType, playerType)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(gameType) ^
      const DeepCollectionEquality().hash(playerType);

  @override
  _$GameSelectionTabStateCopyWith<_GameSelectionTabState> get copyWith =>
      __$GameSelectionTabStateCopyWithImpl<_GameSelectionTabState>(
          this, _$identity);
}

abstract class _GameSelectionTabState implements GameSelectionTabState {
  factory _GameSelectionTabState({GameType gameType, PlayerType playerType}) =
      _$_GameSelectionTabState;

  @override
  GameType get gameType;
  @override
  PlayerType get playerType;
  @override
  _$GameSelectionTabStateCopyWith<_GameSelectionTabState> get copyWith;
}
