

import 'dart:async';
import 'package:clean_flutter/ui/pages/pages.dart';
import 'package:mocktail/mocktail.dart';

class SplashPresenterSpy extends Mock implements SplashPresenter {
  final navigateToController = StreamController<String?>();

  SplashPresenterSpy() {
    when(() => this.checkAccount(durationInSeconds: any(named: 'durationInSeconds'))).thenAnswer((_) async => _);
    when(() => this.navigateToStream).thenAnswer((_) => navigateToController.stream);
  }
  void emitNavigateTo(String route) => navigateToController.add(route);

  void dispose() {
    navigateToController.close();
  }
}