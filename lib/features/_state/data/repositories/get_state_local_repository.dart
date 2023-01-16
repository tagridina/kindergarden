import 'package:kindergarden/features/_state/data/datasources/hive_datasource.dart';
import 'package:kindergarden/features/_state/logic/repositories/get_state_local_repository.dart';
import 'package:kindergarden/features/app/models/_models.dart';
import 'package:kindergarden/features/_state/state/_state.dart';

class GetStateLocalRepository extends IGetStateLocalRepository {
  final HiveDatasource _datasource;

  GetStateLocalRepository(this._datasource);

  @override
  Result<State?> call() {
    final response = _datasource.getState();
    if (response is Error) {
      return Err(response.error);
    }

    final state = response.data?.toState();

    return Ok(state);
  }
}
