import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_home/features/login/component/login_state.dart';
import 'package:smart_home/repository/auth_repository.dart';

class LoginCubit extends Cubit<LoginState> {
  final AuthRepository authRepository;
  LoginCubit({required this.authRepository}) : super(LoginState());
  void setEmail(String email) {
    emit(state.copyWith(email: email));
  }

  void setPassword(String password) {
    emit(state.copyWith(password: password));
  }

  Future<void> login() async {
    emit(state.copyWith(isLoading: true));
    try {
        final params = state.toLoginParams();
        await authRepository.login(params);
    } catch (e) {
      emit(state.copyWith(isLoading: false));
      return;
    }
  }
}
