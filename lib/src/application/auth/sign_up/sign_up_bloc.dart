import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:jini/core/enums/gender.dart';
import 'package:jini/core/enums/user_type.dart';
import 'package:jini/src/domain/auth/auth_failure.dart';
import 'package:jini/src/domain/auth/i_auth_facade.dart';
import 'package:jini/src/domain/auth/value_objects.dart';

part 'sign_up_event.dart';
part 'sign_up_state.dart';
part 'sign_up_bloc.freezed.dart';

@injectable
class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  final IAuthFacade _authFacade;

  SignUpBloc(this._authFacade) : super(SignUpState.initial()) {
    on<SignUpEvent>((event, emit) {
      emit(
        event.map(
          emailChanged: (EmailChanged e) => _emailChanged(e, emit),
          passwordChanged: (PasswordChanged e) => _passwordChanged(e, emit),
          signUpPressed: (SignUpPressed e) => _signUpPressed(e, emit),
        ),
      );
    });
  }

  _emailChanged(EmailChanged e, Emitter<SignUpState> emit) async {
    emit(state.copyWith(
      email: EmailAddress(e.email),
      authFailureOrSuccess: none(),
    ));
  }

  _passwordChanged(PasswordChanged e, Emitter<SignUpState> emit) async {
    emit(state.copyWith(
      password: Password(e.password),
      authFailureOrSuccess: none(),
    ));
  }

  _signUpPressed(SignUpPressed e, Emitter<SignUpState> emit) async {
    Either<AuthFailure, Unit> _r;

    final isEmailValid = state.email.isValid();
    final isPasswordValid = state.password.isValid();

    if (isEmailValid && isPasswordValid) {
      emit(state.copyWith(isSubmitting: true, authFailureOrSuccess: none()));

      _r = await _authFacade.signUp(
        name: state.name,
        email: state.email,
        password: state.password,
        gender: state.gender,
        userType: state.userType,
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
