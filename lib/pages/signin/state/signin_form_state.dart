import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:state_notifier/state_notifier.dart';
part 'signin_form_state.freezed.dart';
part 'signin_form_state.g.dart';

@freezed
abstract class SignInFormState with _$SignInFormState {
  const factory SignInFormState({
    @Default('') String email,
    @Default('') String password,
    @Default(false) bool isLoading,
  }) = _SignInFormState;

  factory SignInFormState.fromJson(Map<String, dynamic> json) =>
      _$SignInFormStateFromJson(json);
}

class SignInStateNotifier extends StateNotifier<SignInFormState> {
  SignInStateNotifier() : super(SignInFormState());

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

  Future<bool> signIn() async {
    state = state.copyWith(
      isLoading: true,
    );
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: state.email,
        password: state.password,
      );
      return true;
    } catch (e) {
      return false;
    } finally {
      state = state.copyWith(
        isLoading: false,
      );
    }
  }
}
