

import 'package:clean_flutter/domain/entities/entities.dart';
import 'package:clean_flutter/domain/usecases/usecases.dart';
import 'package:mocktail/mocktail.dart';

class LoadCurrentAccountSpy extends Mock implements LoadCurrentAccount {
  When mockLoadCall() => when(() => this.load());
  void mockLoad({ required AccountEntity account }) => this.mockLoadCall().thenAnswer((_) async => account);
  void mockLoadError() => this.mockLoadCall().thenThrow(Exception());
}