import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:calda_app/pages/welcome/welcome_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class SettingsPage extends HookWidget {
  static const String routeName = "/settings";

  static final _items = [
    SettingItemType.signOut,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('設定'),
      ),
      body: Container(
        child: ListView.separated(
          itemBuilder: (context, index) {
            return _buildItem(context, index);
          },
          separatorBuilder: (context, index) {
            return Divider();
          },
          itemCount: _items.length,
        ),
      ),
    );
  }

  Widget _buildItem(BuildContext context, int index) {
    final item = _items[index];
    switch (item) {
      case SettingItemType.signOut:
      default:
        return ListTile(
          title: Text('ログアウト'),
          onTap: () async {
            final result = await showOkCancelAlertDialog(
              context: context,
              title: '確認',
              message: 'ログアウトしますか？',
            );
            if (result == OkCancelResult.ok) {
              await FirebaseAuth.instance.signOut();
              Navigator.of(context).pushNamedAndRemoveUntil(
                WelcomePage.routeName,
                (route) => false,
              );
            }
          },
        );
        break;
    }
  }
}

enum SettingItemType {
  signOut,
}
