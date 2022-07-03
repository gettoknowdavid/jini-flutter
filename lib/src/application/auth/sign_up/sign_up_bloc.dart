import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:jini/src/domain/auth/auth_failure.dart';
import 'package:jini/src/domain/auth/i_auth_facade.dart';
import 'package:jini/src/domain/auth/value_objects.dart';
import 'package:jini/src/domain/core/blood_group.dart';
import 'package:jini/src/domain/core/gender.dart';
import 'package:jini/src/domain/core/user_type.dart';

part 'sign_up_event.dart';
part 'sign_up_state.dart';
part 'sign_up_bloc.freezed.dart';

@injectable
class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  final IAuthFacade _authFacade;

  SignUpBloc(this._authFacade) : super(SignUpState.initial()) {
    on<NameChanged>((event, emit) => _nameChanged(event, emit));
    on<EmailChanged>((event, emit) => _emailChanged(event, emit));
    on<PasswordChanged>((event, emit) => _passwordChanged(event, emit));
    on<GenderChanged>((event, emit) => _genderChanged(event, emit));
    on<BloodGroupChanged>((event, emit) => _bloodGroupChanged(event, emit));
    on<SignUpPressed>((event, emit) => _signUpPressed(event, emit));
  }

  _nameChanged(NameChanged e, Emitter<SignUpState> emit) async {
    emit(state.copyWith(name: IName(e.name), authFailureOrSuccess: none()));
  }

  _emailChanged(EmailChanged e, Emitter<SignUpState> emit) async {
    emit(state.copyWith(
      email: IEmailAddress(e.email),
      authFailureOrSuccess: none(),
    ));
  }

  _passwordChanged(PasswordChanged e, Emitter<SignUpState> emit) async {
    emit(state.copyWith(
      password: IPassword(e.password),
      authFailureOrSuccess: none(),
    ));
  }

  _genderChanged(GenderChanged e, Emitter<SignUpState> emit) async {
    emit(state.copyWith(
      gender: IGender(e.gender),
      authFailureOrSuccess: none(),
    ));
  }

  _bloodGroupChanged(BloodGroupChanged e, Emitter<SignUpState> emit) async {
    emit(state.copyWith(
      bloodGroup: IBloodGroup(e.bloodGroup),
      authFailureOrSuccess: none(),
    ));
  }

  _signUpPressed(SignUpPressed e, Emitter<SignUpState> emit) async {
    Either<AuthFailure, Unit> _r;

    final isNameValid = state.name.isValid();
    final isEmailValid = state.email.isValid();
    final isPasswordValid = state.password.isValid();

    if (isNameValid && isEmailValid && isPasswordValid) {
      emit(state.copyWith(isSubmitting: true, authFailureOrSuccess: none()));

      _r = await _authFacade.signUp(
        name: state.name,
        email: state.email,
        password: state.password,
        gender: state.gender,
        bloodGroup: state.bloodGroup,
      );

      emit(state.copyWith(isSubmitting: false, authFailureOrSuccess: some(_r)));
    }

    emit(state.copyWith(
      isSubmitting: false,
      showErrorMessages: true,
      authFailureOrSuccess: none(),
    ));
  }
}
