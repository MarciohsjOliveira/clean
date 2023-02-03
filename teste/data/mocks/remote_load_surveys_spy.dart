

import 'package:clean_flutter/data/usecases/usescases.dart';
import 'package:clean_flutter/domain/entities/entities.dart';
import 'package:clean_flutter/domain/helpers/helpers.dart';
import 'package:mocktail/mocktail.dart';

class RemoteLoadSurveysSpy extends Mock implements RemoteLoadSurveys {
  When mockLoadCall() => when(() => this.load());
  void mockLoad(List<SurveyEntity> surveys) => this.mockLoadCall().thenAnswer((_) async => surveys);
  void mockLoadError(DomainError error) => this.mockLoadCall().thenThrow(error);
}