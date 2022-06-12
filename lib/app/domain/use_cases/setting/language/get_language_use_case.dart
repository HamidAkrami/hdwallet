import 'package:hd_wallet/app/core/either.dart';
import 'package:hd_wallet/app/core/failures.dart';
import 'package:hd_wallet/app/core/use_case.dart';
import 'package:hd_wallet/app/domain/repository/app_repository.dart';

class GetLanguageUseCase implements UseCase<bool, NoParams> {
  final AppRepository? repository;

  GetLanguageUseCase({this.repository});

  @override
  Future<Either<Failure, bool>> call(NoParams params) {
    return repository!.getLanguage();
  }
}
