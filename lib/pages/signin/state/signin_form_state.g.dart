// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signin_form_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SignInFormState _$_$_SignInFormStateFromJson(Map<String, dynamic> json) {
  return _$_SignInFormState(
    email: json['email'] as String ?? '',
    password: json['password'] as String ?? '',
    isLoading: json['isLoading'] as bool ?? false,
  );
}

Map<String, dynamic> _$_$_SignInFormStateToJson(_$_SignInFormState instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
      'isLoading': instance.isLoading,
    };
