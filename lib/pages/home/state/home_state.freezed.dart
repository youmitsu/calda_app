// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$HomeStateTearOff {
  const _$HomeStateTearOff();

// ignore: unused_element
  _HomeState call({int currentBottomTabIndex = 0}) {
    return _HomeState(
      currentBottomTabIndex: currentBottomTabIndex,
    );
  }
}

// ignore: unused_element
const $HomeState = _$HomeStateTearOff();

mixin _$HomeState {
  int get currentBottomTabIndex;

  $HomeStateCopyWith<HomeState> get copyWith;
}

abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res>;
  $Res call({int currentBottomTabIndex});
}

class _$HomeStateCopyWithImpl<$Res> implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  final HomeState _value;
  // ignore: unused_field
  final $Res Function(HomeState) _then;

  @override
  $Res call({
    Object currentBottomTabIndex = freezed,
  }) {
    return _then(_value.copyWith(
      currentBottomTabIndex: currentBottomTabIndex == freezed
          ? _value.currentBottomTabIndex
          : currentBottomTabIndex as int,
    ));
  }
}

abstract class _$HomeStateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$HomeStateCopyWith(
          _HomeState value, $Res Function(_HomeState) then) =
      __$HomeStateCopyWithImpl<$Res>;
  @override
  $Res call({int currentBottomTabIndex});
}

class __$HomeStateCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements _$HomeStateCopyWith<$Res> {
  __$HomeStateCopyWithImpl(_HomeState _value, $Res Function(_HomeState) _then)
      : super(_value, (v) => _then(v as _HomeState));

  @override
  _HomeState get _value => super._value as _HomeState;

  @override
  $Res call({
    Object currentBottomTabIndex = freezed,
  }) {
    return _then(_HomeState(
      currentBottomTabIndex: currentBottomTabIndex == freezed
          ? _value.currentBottomTabIndex
          : currentBottomTabIndex as int,
    ));
  }
}

class _$_HomeState with DiagnosticableTreeMixin implements _HomeState {
  const _$_HomeState({this.currentBottomTabIndex = 0})
      : assert(currentBottomTabIndex != null);

  @JsonKey(defaultValue: 0)
  @override
  final int currentBottomTabIndex;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeState(currentBottomTabIndex: $currentBottomTabIndex)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HomeState'))
      ..add(
          DiagnosticsProperty('currentBottomTabIndex', currentBottomTabIndex));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HomeState &&
            (identical(other.currentBottomTabIndex, currentBottomTabIndex) ||
                const DeepCollectionEquality().equals(
                    other.currentBottomTabIndex, currentBottomTabIndex)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(currentBottomTabIndex);

  @override
  _$HomeStateCopyWith<_HomeState> get copyWith =>
      __$HomeStateCopyWithImpl<_HomeState>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  const factory _HomeState({int currentBottomTabIndex}) = _$_HomeState;

  @override
  int get currentBottomTabIndex;
  @override
  _$HomeStateCopyWith<_HomeState> get copyWith;
}
