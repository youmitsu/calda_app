enum GameType {
  game_301,
  game_501,
  game_701,
  game_901,
  game_1501,
}

extension GameTypeExt on GameType {
  String toDisplayStr() {
    switch (this) {
      case GameType.game_301:
        return '301';
        break;
      case GameType.game_501:
        return '501';
        break;
      case GameType.game_701:
        return '701';
        break;
      case GameType.game_901:
        return '901';
        break;
      case GameType.game_1501:
        return '1501';
        break;
      default:
        return '';
    }
  }
}
