import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:jini/src/domain/auth/auth_failure.dart';
import 'package:jini/src/domain/auth/i_auth_facade.dart';
import 'package:jini/src/domain/auth/value_objects.dart';

part 'forgot_password_event.dart';
part 'forgot_password_state.dart';
part 'forgot_password_bloc.freezed.dart';

@injectable
class ForgotPasswordBloc
    extends Bloc<ForgotPasswordEvent, ForgotPasswordState> {
  final IAuthFacade _authFacade;

  ForgotPasswordBloc(this._authFacade) : super(ForgotPasswordState.initial()) {
    on<EmailChanged>((event, emit) => _emailChanged(event, emit));
    on<SubmitPressed>((event, emit) => _submitPressed(event, emit));
  }

  _emailChanged(EmailChanged e, Emitter<ForgotPasswordState> emit) async {
    emit(state.copyWith(
      email: IEmailAddress(e.email),
      authFailureOrSuccess: none(),
    ));
  }

  _submitPressed(SubmitPressed e, Emitter<ForgotPasswordState> emit) async {
    Either<AuthFailure, Unit> _r;

    final isEmailValid = state.email.isValid();

    if (isEmailValid) {
      emit(state.copyWith(isSubmitting: true, authFailureOrSuccess: none()));

      _r = await _authFacade.resetPassword(email: state.email);

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
