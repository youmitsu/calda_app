import 'package:calda_app/widget/submit_rounded_btn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class SignUpPage extends HookWidget {
  static const String routeName = '/signup';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('新規登録'),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _EmailForm(),
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

class _EmailForm extends HookWidget {
  static const emailFormAttr = 'email';
  static const passwordFormAttr = 'password';

  final _formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
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
              validators: [
                FormBuilderValidators.required(errorText: '入力してください'),
                FormBuilderValidators.email(errorText: 'メールアドレスの形式で入力してください'),
              ],
              onChanged: (value) {},
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
              validators: [
                FormBuilderValidators.required(errorText: '入力してください'),
                FormBuilderValidators.minLength(8, errorText: '8文字以上で入力してください'),
              ],
              onChanged: (value) {},
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
    return SubmitRoundedBtn(
      text: '新規登録',
      onTap: () {
        Navigator.of(context).pushNamed(SignUpPage.routeName);
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
