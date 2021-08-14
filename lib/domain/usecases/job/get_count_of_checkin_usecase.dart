import 'package:bazarche/core/error/failures.dart';
import 'package:bazarche/core/usecase/usecase.dart';
import 'package:bazarche/domain/entities/count_of_checkins_entity.dart';
import 'package:bazarche/domain/repository/bazarche_app_repository.dart';
import 'package:either_type/src/either.dart';

class GetCountOfCheckInsUseCase implements UseCase<CountOfCheckInsEntity,Params>{
  final BazarcheAppRepository repository;

  GetCountOfCheckInsUseCase({this.repository});

  @override
  Future<Either<Failure, CountOfCheckInsEntity>> call(Params params) {
    return repository.getCheckInsCount(params.id);
  }
}