import 'package:calda_app/config/app_colors.dart';
import 'package:calda_app/config/app_themes.dart';
import 'package:calda_app/model/enum/game_type.dart';
import 'package:calda_app/pages/home/game/game_selection_tab.dart';
import 'package:calda_app/widget/colored_rounded_btn.dart';
import 'package:calda_app/widget/common_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class GameSetupPage extends HookWidget {
  static const String routeName = "/setup";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('プレイヤー/フォーマット確認'),
      ),
      body: Container(
        child: Stack(
          children: <Widget>[
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: _GameFormatCard(),
            ),
            Align(
              alignment: Alignment.center,
              child: _PlayersSection(),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: ColoredRoundedButton(
                text: 'GAME ON!',
                borderRadius: 0,
                height: 54,
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _GameFormatCard extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final gameType = useProvider(gameSelectionTabStateNotifierProvider.state
        .select((value) => value.gameType));
    final playerType = useProvider(
      gameSelectionTabStateNotifierProvider.state
          .select((value) => value.playerType.index + 1),
    );
    return CommonCard(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: <Widget>[
          _buildLine(context, 'GAME', gameType.toDisplayStr()),
          const SizedBox(width: double.infinity, height: 15),
          _buildLine(context, 'PLAYER', playerType.toString()),
        ],
      ),
    );
  }

  Widget _buildLine(BuildContext context, String title, String value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          title,
          style: Theme.of(context).textTheme.light111111DarkFFFFFF.fontSize20,
        ),
        Text(
          value,
          style: Theme.of(context).textTheme.light111111DarkFFFFFF.fontSize20,
        ),
      ],
    );
  }
}

class _PlayersSection extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final player = useProvider(gameSelectionTabStateNotifierProvider.state
        .select((value) => value.playerType));
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: _buildPlayerIcons(player),
      ),
    );
  }

  List<Widget> _buildPlayerIcons(PlayerType player) {
    return List.generate(
      player.index + 1,
      (index) => _PlayerIcon(),
    );
  }
}

class _PlayerIcon extends HookWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: ButtonColor.grey,
            ),
            width: 70,
            height: 70,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: Text(
              'You',
              style:
                  Theme.of(context).textTheme.light000000DarkFFFFFF.fontSize16,
            ),
          ),
        ],
      ),
    );
  }
}
