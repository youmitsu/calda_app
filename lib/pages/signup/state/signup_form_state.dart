import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:state_notifier/state_notifier.dart';

part 'signup_form_state.freezed.dart';

@freezed
abstract class SignUpFormState with _$SignUpFormState {
  const factory SignUpFormState({
    @Default('') String email,
    @Default('') String password,
  }) = _SignUpFormState;
}

class SignUpStateNotifier extends StateNotifier<SignUpFormState> {
  SignUpStateNotifier() : super(const SignUpFormState());

  onEmailChanged(String email) {
    state = state.copyWith(
      email: email,
    );
  }

  onPasswordChanged(String password) {
    state = state.copyWith(
      password: password,
    );
  }
}
