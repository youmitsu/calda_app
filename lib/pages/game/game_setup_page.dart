import 'package:calda_app/config/app_colors.dart';
import 'package:calda_app/config/app_themes.dart';
import 'package:calda_app/model/enum/game_type.dart';
import 'package:calda_app/pages/home/game/game_selection_tab.dart';
import 'package:calda_app/widget/colored_rounded_btn.dart';
import 'package:calda_app/widget/common_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final isExpandedProvider = StateProvider((_) => false);

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
    final isExpanded = useProvider(isExpandedProvider).state;
    return CommonCard(
      padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      child: Column(
        children: <Widget>[
          _buildLine(context, 'GAME', gameType.toDisplayStr()),
          const SizedBox(width: double.infinity, height: 15),
          _buildLine(context, 'PLAYER', playerType.toString()),
          Visibility(
            visible: isExpanded,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const SizedBox(width: double.infinity, height: 15),
                _buildLine(context, 'DARTS IN', 'OPEN'),
                const SizedBox(width: double.infinity, height: 15),
                _buildLine(context, 'DARTS OUT', 'DOUBLE'),
              ],
            ),
          ),
          _DetailToggleBtn(),
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

class _DetailToggleBtn extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final isExpanded = useProvider(isExpandedProvider);
    final animationController =
        useAnimationController(duration: Duration(milliseconds: 200));
    return InkWell(
      onTap: () {
        isExpanded.state = !isExpanded.state;
      },
      borderRadius: BorderRadius.circular(2),
      child: Container(
        margin: const EdgeInsets.only(top: 6),
        padding: const EdgeInsets.all(2),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 2.0),
              child: Text(
                '詳細設定',
                style: Theme.of(context)
                    .textTheme
                    .light999999Dark999999
                    .fontSize14,
              ),
            ),
            _buildArrowIcon(isExpanded.state),
          ],
        ),
      ),
    );
  }

  Widget _buildArrowIcon(bool isExpanded) {
    if (isExpanded) {
      return Icon(
        Icons.arrow_drop_up,
      );
    }
    return Icon(
      Icons.arrow_drop_down,
    );
  }
}

class _PlayersSection extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final player = useProvider(gameSelectionTabStateNotifierProvider.state
        .select((value) => value.playerType));
    return Container(
      child: Wrap(
        spacing: 18,
        children: _buildPlayerIcons(context, player),
      ),
    );
  }

  List<Widget> _buildPlayerIcons(BuildContext context, PlayerType player) {
    return List.generate(
      player.index + 1,
      (index) => Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 12.0, bottom: 10.0),
            child: Text(
              'Player${index + 1}',
              style:
                  Theme.of(context).textTheme.light000000Dark000000.fontSize22,
            ),
          ),
          _PlayerIcon(),
        ],
      ),
    );
  }
}

class _PlayerIcon extends HookWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(10, 10, 10, 30),
      decoration: BoxDecoration(
        color: BackgroundColor.greyDDDDDD,
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: ButtonColor.grey,
            ),
            width: 65,
            height: 65,
            margin: const EdgeInsets.fromLTRB(20, 20, 20, 0),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 6.0),
            child: Text(
              'You',
              style:
                  Theme.of(context).textTheme.light000000DarkFFFFFF.fontSize18,
            ),
          ),
        ],
      ),
    );
  }
}
