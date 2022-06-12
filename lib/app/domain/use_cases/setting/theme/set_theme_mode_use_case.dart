import 'package:hd_wallet/app/core/either.dart';
import 'package:hd_wallet/app/core/failures.dart';
import 'package:hd_wallet/app/core/use_case.dart';
import 'package:hd_wallet/app/domain/repository/app_repository.dart';

class SetThemeModeUseCase implements UseCase<bool, Params> {
  final AppRepository? repository;

  SetThemeModeUseCase({this.repository});

  @override
  Future<Either<Failure, bool>> call(Params params) {
    return repository!.setThemeMode(params.boolValue!);
  }
}
