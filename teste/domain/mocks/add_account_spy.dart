

import 'package:clean_flutter/domain/entities/entities.dart';
import 'package:clean_flutter/domain/helpers/helpers.dart';
import 'package:clean_flutter/domain/usecases/usecases.dart';
import 'package:mocktail/mocktail.dart';

class AddAccountSpy extends Mock implements AddAccount {
  When mockAddAccountCall() => when(() => this.add(any()));
  void mockAddAccount(AccountEntity data) => this.mockAddAccountCall().thenAnswer((_) async => data);
  void mockAddAccountError(DomainError error) => this.mockAddAccountCall().thenThrow(error);
}