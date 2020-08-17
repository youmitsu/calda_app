import 'package:calda_app/config/app_colors.dart';
import 'package:calda_app/config/app_themes.dart';
import 'package:calda_app/model/enum/game_type.dart';
import 'package:calda_app/pages/home/game/state/game_selection_tab_state.dart';
import 'package:calda_app/pages/settings/settings_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final gameSelectionTabStateNotifierProvider =
    StateNotifierProvider((_) => GameSelectionTabStateNotifier());

class GameSelectionTab extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final state = useProvider(gameSelectionTabStateNotifierProvider.state);
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
                  style: Theme.of(context).textTheme.headline5,
                ),
              ),
              _GameTypeSection(),
              const SizedBox(
                width: double.infinity,
                height: 10,
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
                child: Text(
                  'PLAYER人数',
                  style: Theme.of(context).textTheme.headline5,
                ),
              ),
              _PlayerTypeSection(),
              const SizedBox(
                width: double.infinity,
                height: 100,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        icon: Icon(Icons.check),
        label: Text('ゲームを始める'),
        backgroundColor: _buildFABColor(context, state.isValid),
      ),
    );
  }

  Color _buildFABColor(BuildContext context, bool isValid) {
    if (isValid) {
      return Theme.of(context).buttonColor;
    }
    return Theme.of(context).disabledColor.withOpacity(0.2);
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

class _GameTypeCard extends HookWidget {
  final GameType type;

  _GameTypeCard({this.type});

  @override
  Widget build(BuildContext context) {
    final state = useProvider(gameSelectionTabStateNotifierProvider.state);
    final notifier = useProvider(gameSelectionTabStateNotifierProvider);
    return Card(
      child: Material(
        borderRadius: BorderRadius.circular(2),
        child: InkWell(
          onTap: () {
            notifier.onGameTypeSelected(type);
          },
          child: Container(
            height: 70,
            width: 110,
            alignment: Alignment.center,
            color: _getColor(state.gameType),
            child: Text(
              type.toDisplayStr(),
              style: Theme.of(context)
                  .textTheme
                  .light000000Dark000000
                  .fontSize28
                  .copyWith(
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                  ),
            ),
          ),
        ),
      ),
    );
  }

  Color _getColor(GameType currentSelectedType) {
    if (currentSelectedType == null) {
      return null;
    }
    if (currentSelectedType == type) {
      return ButtonColor.orange.withOpacity(0.8);
    }
    return ButtonColor.grey.withOpacity(0.2);
  }
}

class _PlayerTypeSection extends HookWidget {
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
      PlayerType.values.map((e) => _PlayerTypeCard(type: e)).toList();
}

class _PlayerTypeCard extends HookWidget {
  final PlayerType type;

  int get playerCount => type.index + 1;

  String get playerText {
    if (playerCount > 1) {
      return "$playerCount Players";
    }
    return "$playerCount Player";
  }

  _PlayerTypeCard({this.type});

  @override
  Widget build(BuildContext context) {
    final state = useProvider(gameSelectionTabStateNotifierProvider.state);
    final notifier = useProvider(gameSelectionTabStateNotifierProvider);
    return Card(
      child: Material(
        borderRadius: BorderRadius.circular(2),
        child: InkWell(
          onTap: () {
            notifier.onPlayerTypeSelected(type);
          },
          child: Container(
            height: 70,
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(horizontal: 24),
            color: _getColor(state.playerType),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: _getPlayerIcons(),
                ),
                Text(
                  playerText,
                  style: Theme.of(context).textTheme.headline6,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Color _getColor(PlayerType currentSelectedType) {
    if (currentSelectedType == null) {
      return null;
    }
    if (currentSelectedType == type) {
      return ButtonColor.orange.withOpacity(0.8);
    }
    return ButtonColor.grey.withOpacity(0.2);
  }

  List<Widget> _getPlayerIcons() {
    return List.generate(
      playerCount,
      (_) => Icon(Icons.person),
    );
  }
}
