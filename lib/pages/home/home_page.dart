import 'package:calda_app/pages/home/state/home_state.dart';
import 'package:calda_app/pages/settings/settings_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final _homeStateNotifier = StateNotifierProvider((_) => HomeStateNotifier());

class HomePage extends HookWidget {
  static const String routeName = "/home";

  @override
  Widget build(BuildContext context) {
    final homeState = useProvider(_homeStateNotifier.state);
    final stateNotifier = useProvider(_homeStateNotifier);
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              Navigator.of(context).pushNamed(SettingsPage.routeName);
            },
          ),
        ],
      ),
      body: Container(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: homeState.currentBottomTabIndex,
        onTap: (item) {
          stateNotifier.onChangedCurrentIndex(item);
        },
        items: [
          BottomNavigationBarItem(
            title: Text('ゲームをする'),
            icon: Icon(Icons.videogame_asset),
          ),
          BottomNavigationBarItem(
            title: Text('戦績'),
            icon: Icon(Icons.list),
          ),
          BottomNavigationBarItem(
            title: Text('プロフィール'),
            icon: Icon(Icons.person),
          ),
        ],
      ),
    );
  }
}
