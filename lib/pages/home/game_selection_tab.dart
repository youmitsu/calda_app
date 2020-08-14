import 'package:calda_app/model/enum/game_type.dart';
import 'package:calda_app/pages/settings/settings_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class GameSelectionTab extends HookWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ゲームを始める'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              Navigator.of(context).pushNamed(SettingsPage.routeName);
            },
          ),
        ],
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(vertical: 20),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: _buildCards(),
          ),
        ),
      ),
    );
  }

  List<Widget> _buildCards() =>
      GameType.values.map((e) => _GameTypeCard(type: e)).toList();
}

class _GameTypeCard extends StatelessWidget {
  final GameType type;

  _GameTypeCard({this.type});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(
        horizontal: 14,
        vertical: 10,
      ),
      child: Material(
        borderRadius: BorderRadius.circular(2),
        child: InkWell(
          onTap: () {
            //
          },
          child: Container(
            height: 90,
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(left: 20),
                    alignment: Alignment.center,
                    child: Text(
                      type.toDisplayStr(),
                      style: Theme.of(context).textTheme.headline2.copyWith(
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1,
                          ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
