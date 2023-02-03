

import 'package:clean_flutter/domain/entities/entities.dart';
import 'package:clean_flutter/domain/helpers/helpers.dart';
import 'package:clean_flutter/domain/usecases/usecases.dart';
import 'package:mocktail/mocktail.dart';

class SaveSurveyResultSpy extends Mock implements SaveSurveyResult {
  When mockSaveCall() => when(() => this.save(answer: any(named: 'answer')));
  void mockSave(SurveyResultEntity data) => mockSaveCall().thenAnswer((_) async => data);
  void mockSaveError(DomainError error) => mockSaveCall().thenThrow(error);
}