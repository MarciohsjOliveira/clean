import '../../../data/usecases/usescases.dart';
import '../../../domain/usecases/usecases.dart';
import '../factories.dart';

SaveCurrentAccount makeLocalSaveCurrentAccount() => LocalSaveCurrentAccount(
  saveSecureCacheStorage: makeSecureStorageAdapter()
);