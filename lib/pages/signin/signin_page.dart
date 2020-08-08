import 'package:bot_toast/bot_toast.dart';
import 'package:calda_app/pages/home/home_page.dart';
import 'package:calda_app/pages/signin/state/signin_form_state.dart';
import 'package:calda_app/widget/submit_rounded_btn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final _signInStateNotifier =
    StateNotifierProvider((_) => SignInStateNotifier());

class SignInPage extends HookWidget {
  static const String routeName = '/signin';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ログイン'),
      ),
      body: Container(
        child: Stack(
          children: <Widget>[
            _EmailForm(),
            Positioned.fill(
              child: _LoadingWidget(),
            ),

//            Positioned(
//              bottom: 0,
//              left: 0,
//              top: 0,
//              child: _OtherLoginProviderGroup(),
//            )
          ],
        ),
      ),
    );
  }
}

class _LoadingWidget extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final state = useProvider(_signInStateNotifier.state);
    return Container(
      child: Visibility(
        visible: state.isLoading,
        child: Center(
          child: SizedBox(
            width: 50,
            height: 50,
            child: CircularProgressIndicator(),
          ),
        ),
      ),
    );
  }
}

class _EmailForm extends HookWidget {
  static const emailFormAttr = 'email';
  static const passwordFormAttr = 'password';

  final _formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    final _notifier = useProvider(_signInStateNotifier);
    return FormBuilder(
      key: _formKey,
      initialValue: {
        emailFormAttr: '',
        passwordFormAttr: '',
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            FormBuilderTextField(
              attribute: emailFormAttr,
              style: Theme.of(context).textTheme.headline6,
              decoration: const InputDecoration(
                hintText: 'calda@gmail.com',
                labelText: 'メールアドレス',
              ),
              keyboardType: TextInputType.emailAddress,
              validators: [
                FormBuilderValidators.required(errorText: '入力してください'),
                FormBuilderValidators.email(errorText: 'メールアドレスの形式で入力してください'),
              ],
              onChanged: (value) {
                _notifier.onEmailChanged(value);
              },
              maxLines: 1,
            ),
            const SizedBox(
              width: double.infinity,
              height: 14,
            ),
            FormBuilderTextField(
              attribute: passwordFormAttr,
              style: Theme.of(context).textTheme.headline6,
              decoration: const InputDecoration(
                labelText: 'パスワード ※英数字8文字以上',
              ),
              keyboardType: TextInputType.visiblePassword,
              obscureText: true,
              validators: [
                FormBuilderValidators.required(errorText: '入力してください'),
                FormBuilderValidators.minLength(8, errorText: '8文字以上で入力してください'),
              ],
              onChanged: (value) {
                _notifier.onPasswordChanged(value);
              },
              maxLines: 1,
            ),
            const SizedBox(
              width: double.infinity,
              height: 50,
            ),
            _SignUpBtn(),
          ],
        ),
      ),
    );
  }
}

class _SignUpBtn extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final _notifier = useProvider(_signInStateNotifier);
    return SubmitRoundedBtn(
      text: 'ログイン',
      onTap: () async {
        if (await _notifier.signIn()) {
          BotToast.showText(text: 'ログインしました');
          Navigator.of(context).pushNamedAndRemoveUntil(
            HomePage.routeName,
            (_) => false,
          );
        } else {
          BotToast.showText(text: '登録に失敗しました');
        }
      },
    );
  }
}

class _OtherLoginProviderGroup extends HookWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
