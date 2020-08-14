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
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.centerLeft,
                margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
                child: Text(
                  'GAME',
                  style: Theme.of(context).textTheme.headline6,
                ),
              ),
              _GameTypeSection(),
            ],
          ),
        ),
      ),
    );
  }
}

class _GameTypeSection extends HookWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.start,
      children: <Widget>[
        ..._buildCards(),
      ],
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
      child: Material(
        borderRadius: BorderRadius.circular(2),
        child: InkWell(
          onTap: () {
            //
          },
          child: Container(
            height: 90,
            width: 110,
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
      ),
    );
  }
}
