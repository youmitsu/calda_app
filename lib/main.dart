import 'package:calda_app/app/app.dart';
import 'package:calda_app/repository/account_repository.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() {
  setupLocator();
  runApp(
    ProviderScope(
      child: App(),
    ),
  );
}

void setupLocator() {
  final getIt = GetIt.instance;
  getIt..registerSingleton<AccountRepository>(AccountRepository());
}
