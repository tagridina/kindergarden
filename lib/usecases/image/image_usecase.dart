import 'package:get/get.dart';
import 'package:kindergarden/usecases/usecase.dart';
import 'package:kindergarden/usecases/state/set_state_usecase.dart';
import 'package:kindergarden/state/state.dart';

class ImageUsecase extends Usecase {
  ImageUsecase(
    Rx<State> state,
    SetStateUsecase setStateUsecase,
  ) : super(state, setStateUsecase);

  call(String name, dynamic value) async {
    try {
      onStartUsecaseHandler(runtimeType);
    } catch (e) {
      onErrorUsecaseHandler(e);
    } finally {
      onEndUsecaseHandler();
    }
  }

  saveTitleToState(String value) async {
  }
}
