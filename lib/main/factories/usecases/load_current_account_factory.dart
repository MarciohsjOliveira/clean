
import '../../../data/usecases/usescases.dart';
import '../../../domain/usecases/usecases.dart';
import '../factories.dart';

LoadCurrentAccount makeLocalLoadCurrentAccount() => LocalLoadCurrentAccount(
  fetchSecureCacheStorage: makeSecureStorageAdapter()
);