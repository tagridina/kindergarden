import 'package:kindergarden/features/_state/logic/actions/set_state_action.dart';
import 'package:kindergarden/features/_state/action.dart';
import 'package:kindergarden/features/_state/state/_state.dart';
import 'package:get/get.dart';

class GoOffAction extends Action {
  GoOffAction(Rx<State> state, SetStateAction setAppStateAction) : super(state, setAppStateAction);

  void call({required GetPage route}) {
    try {
      onStartActionHandler(runtimeType);
      Get.offNamed(route.name);
    } catch (e) {
      onErrorActionHandler(e);
    } finally {
      onEndActionHandler();
    }
  }
}