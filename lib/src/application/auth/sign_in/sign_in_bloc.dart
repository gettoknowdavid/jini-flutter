import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:jini/src/domain/auth/auth_failure.dart';
import 'package:jini/src/domain/auth/i_auth_facade.dart';
import 'package:jini/src/domain/auth/value_objects.dart';

part 'sign_in_event.dart';
part 'sign_in_state.dart';
part 'sign_in_bloc.freezed.dart';

@injectable
class SignInBloc extends Bloc<SignInEvent, SignInState> {
  final IAuthFacade _authFacade;

  SignInBloc(this._authFacade) : super(SignInState.initial()) {
    on<SignInEvent>((event, emit) {
      emit(
        event.map(
          emailChanged: (EmailChanged e) => _emailChanged(e, emit),
          passwordChanged: (PasswordChanged e) => _passwordChanged(e, emit),
          signInPressed: (SignInPressed e) => _signInPressed(e, emit),
        ),
      );
    });
  }

  _emailChanged(EmailChanged e, Emitter<SignInState> emit) async {
    emit(state.copyWith(
      email: EmailAddress(e.email),
      authFailureOrSuccess: none(),
    ));
  }

  _passwordChanged(PasswordChanged e, Emitter<SignInState> emit) async {
    emit(state.copyWith(
      password: Password(e.password),
      authFailureOrSuccess: none(),
    ));
  }

  _signInPressed(SignInPressed e, Emitter<SignInState> emit) async {
    Either<AuthFailure, Unit> _r;

    final isEmailValid = state.email.isValid();
    final isPasswordValid = state.password.isValid();

    if (isEmailValid && isPasswordValid) {
      emit(state.copyWith(isSubmitting: true, authFailureOrSuccess: none()));

      _r = await _authFacade.signIn(
        email: state.email,
        password: state.password,
      );

      emit(state.copyWith(
        isSubmitting: false,
        authFailureOrSuccess: some(_r),
      ));
    }

    emit(state.copyWith(
      isSubmitting: false,
      showErrorMessages: true,
      authFailureOrSuccess: none(),
    ));
  }
}