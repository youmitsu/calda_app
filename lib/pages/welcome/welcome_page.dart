import 'package:calda_app/widget/submit_rounded_btn.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class WelcomePage extends HookWidget {
  static const double verticalMargin = 170;
  static const String routeName = '/';

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return true;
      },
      child: Scaffold(
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  SizedBox(
                    height: MediaQuery.of(context).padding.top + verticalMargin,
                  ),
                  Text(
                    'CaLDaへようこそ',
                    style: Theme.of(context).textTheme.headline2.copyWith(
                          color: Colors.white,
                          letterSpacing: 2,
                        ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    '自宅でダーツを楽しもう',
                    style: Theme.of(context).textTheme.headline5.copyWith(
                          color: Colors.white,
                          height: 1.35,
                          letterSpacing: 1.52,
                        ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  SubmitRoundedBtn(
                    text: 'メールアドレスで登録',
                    onTap: () {
//                  pageController.animateToPage(
//                    1,
//                    duration: const Duration(milliseconds: 300),
//                    curve: Curves.linear,
//                  );
                    },
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: '登録ずみの方は',
                            style:
                                Theme.of(context).textTheme.subtitle1.copyWith(
                                      color: Colors.white,
                                    ),
                          ),
                          TextSpan(
                            text: ' ログイン ',
                            style:
                                Theme.of(context).textTheme.subtitle1.copyWith(
                                      color: Colors.white,
                                      decoration: TextDecoration.underline,
                                    ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
//                            Navigator.of(context)
//                                .pushNamed(EmailSignInPage.routeName);
                              },
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 150,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
