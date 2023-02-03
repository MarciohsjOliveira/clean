


import 'package:clean_flutter/data/usecases/usescases.dart';
import 'package:clean_flutter/domain/entities/entities.dart';
import 'package:clean_flutter/domain/helpers/helpers.dart';
import 'package:mocktail/mocktail.dart';

class RemoteLoadSurveyResultSpy extends Mock implements RemoteLoadSurveyResult {
  When mockLoadCall() => when(() => this.loadBySurvey(surveyId: any(named: 'surveyId')));
  void mockLoad(SurveyResultEntity surveyResult) => this.mockLoadCall().thenAnswer((_) async => surveyResult);
  void mockLoadError(DomainError error) => this.mockLoadCall().thenThrow(error);
}