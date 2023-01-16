part of 'login_controller.dart';

class LoginGetxController extends GetxController {
  final LoginViewState state;
  final LoginViewActions actions;

  LoginGetxController(
    this.state,
    this.actions,
  );

  Worker? onChangeStateWorker;

  @override
  onReady() {
    onChangeStateWorker = ever(state.state, state.onChangeState);
    state.onChangeState(null);

    super.onReady();
  }

  @override
  onClose() {
    onChangeStateWorker?.dispose();
    super.onClose();
  }
}
