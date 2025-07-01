import 'package:freezed_annotation/freezed_annotation.dart';
part 'login_state.freezed.dart';
@freezed

class LoginState with _$LoginState{
  factory LoginState({
    String? email,
    String? password,
    @Default(false) bool isLoading,
    @Default(false) bool isLoginSuccess,
  }) = _LoginState;
  
  LoginState._();

  Map<String, dynamic> toLoginParams() {
    return {
      'email': email,
      'password': password,
    };
  }

  bool get isValid =>
      (email?.isNotEmpty ?? false) && (password?.isNotEmpty ?? false);
}