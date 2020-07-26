import 'package:calda_app/model/user.dart';

class AccountRepository {
  Future<User> authenticate() async {
    await Future.delayed(Duration(milliseconds: 500));
    return null;
  }
}
