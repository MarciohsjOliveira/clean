import '../../../data/usecases/usescases.dart';
import '../../../domain/usecases/usecases.dart';
import '../factories.dart';

AddAccount makeRemoteAddAccount() =>
    RemoteAddAccount(httpClient: makeHttpAdapter(), url: makeApiUrl('signup'));
