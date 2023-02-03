import '../../../data/usecases/usescases.dart';
import '../../../domain/usecases/usecases.dart';
import '../factories.dart';

SaveSurveyResult makeRemoteSaveSurveyResult(String surveyId) =>
    RemoteSaveSurveyResult(
        httpClient: makeAuthorizeHttpClientDecorator(),
        url: makeApiUrl('surveys/$surveyId/results'));
