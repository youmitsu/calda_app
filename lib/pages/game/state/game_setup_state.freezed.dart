// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'game_setup_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$GameSetupStateTearOff {
  const _$GameSetupStateTearOff();

// ignore: unused_element
  _GameSetupState call({bool isDetailExpanded = false}) {
    return _GameSetupState(
      isDetailExpanded: isDetailExpanded,
    );
  }
}

// ignore: unused_element
const $GameSetupState = _$GameSetupStateTearOff();

mixin _$GameSetupState {
  bool get isDetailExpanded;

  $GameSetupStateCopyWith<GameSetupState> get copyWith;
}

abstract class $GameSetupStateCopyWith<$Res> {
  factory $GameSetupStateCopyWith(
          GameSetupState value, $Res Function(GameSetupState) then) =
      _$GameSetupStateCopyWithImpl<$Res>;
  $Res call({bool isDetailExpanded});
}

class _$GameSetupStateCopyWithImpl<$Res>
    implements $GameSetupStateCopyWith<$Res> {
  _$GameSetupStateCopyWithImpl(this._value, this._then);

  final GameSetupState _value;
  // ignore: unused_field
  final $Res Function(GameSetupState) _then;

  @override
  $Res call({
    Object isDetailExpanded = freezed,
  }) {
    return _then(_value.copyWith(
      isDetailExpanded: isDetailExpanded == freezed
          ? _value.isDetailExpanded
          : isDetailExpanded as bool,
    ));
  }
}

abstract class _$GameSetupStateCopyWith<$Res>
    implements $GameSetupStateCopyWith<$Res> {
  factory _$GameSetupStateCopyWith(
          _GameSetupState value, $Res Function(_GameSetupState) then) =
      __$GameSetupStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isDetailExpanded});
}

class __$GameSetupStateCopyWithImpl<$Res>
    extends _$GameSetupStateCopyWithImpl<$Res>
    implements _$GameSetupStateCopyWith<$Res> {
  __$GameSetupStateCopyWithImpl(
      _GameSetupState _value, $Res Function(_GameSetupState) _then)
      : super(_value, (v) => _then(v as _GameSetupState));

  @override
  _GameSetupState get _value => super._value as _GameSetupState;

  @override
  $Res call({
    Object isDetailExpanded = freezed,
  }) {
    return _then(_GameSetupState(
      isDetailExpanded: isDetailExpanded == freezed
          ? _value.isDetailExpanded
          : isDetailExpanded as bool,
    ));
  }
}

class _$_GameSetupState
    with DiagnosticableTreeMixin
    implements _GameSetupState {
  const _$_GameSetupState({this.isDetailExpanded = false})
      : assert(isDetailExpanded != null);

  @JsonKey(defaultValue: false)
  @override
  final bool isDetailExpanded;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GameSetupState(isDetailExpanded: $isDetailExpanded)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GameSetupState'))
      ..add(DiagnosticsProperty('isDetailExpanded', isDetailExpanded));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GameSetupState &&
            (identical(other.isDetailExpanded, isDetailExpanded) ||
                const DeepCollectionEquality()
                    .equals(other.isDetailExpanded, isDetailExpanded)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isDetailExpanded);

  @override
  _$GameSetupStateCopyWith<_GameSetupState> get copyWith =>
      __$GameSetupStateCopyWithImpl<_GameSetupState>(this, _$identity);
}

abstract class _GameSetupState implements GameSetupState {
  const factory _GameSetupState({bool isDetailExpanded}) = _$_GameSetupState;

  @override
  bool get isDetailExpanded;
  @override
  _$GameSetupStateCopyWith<_GameSetupState> get copyWith;
}
