
import 'package:clean_flutter/domain/entities/entities.dart';
import 'package:clean_flutter/domain/helpers/helpers.dart';
import 'package:clean_flutter/domain/usecases/usecases.dart';
import 'package:mocktail/mocktail.dart';

class LoadSurveyResultSpy extends Mock implements LoadSurveyResult {
  When mockLoadCall() => when(() => this.loadBySurvey(surveyId: any(named: 'surveyId')));
  void mockLoad(SurveyResultEntity surveyResult) => this.mockLoadCall().thenAnswer((_) async => surveyResult);
  void mockLoadError(DomainError error) => this.mockLoadCall().thenThrow(error);
}