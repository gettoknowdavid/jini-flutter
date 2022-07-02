import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:jini/src/domain/auth/i_auth_facade.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthFacade _authFacade;

  AuthBloc(this._authFacade) : super(_Initial()) {
    on<_AuthCheckRequested>((event, emit) => _authCheckRequested(event, emit));
    on<_AuthCheckVerified>((event, emit) => _checkVerified(event, emit));
    on<_SendVerifiedEmail>((event, emit) => _sendVerifiedEmail(event, emit));
    on<_SignedOut>((event, emit) => _signedOut(event, emit));
  }

  _authCheckRequested(_AuthCheckRequested e, Emitter<AuthState> emit) async {
    final _userOption = await _authFacade.getUser();
    emit(
      _userOption.fold(
        () => const AuthState.unauthenticated(),
        (_) => const AuthState.authenticated(),
      ),
    );
  }

  _checkVerified(_AuthCheckVerified e, Emitter<AuthState> emit) async {
    final _verifiedOption = await _authFacade.checkEmailVerified();
    emit(
      _verifiedOption.fold(
        () => const AuthState.unverified(),
        (_) => const AuthState.verified(),
      ),
    );
  }

  _sendVerifiedEmail(_SendVerifiedEmail e, Emitter<AuthState> emit) async {
    await _authFacade.sendVerificationEmail();
    emit(const AuthState.awaitingVerified());
  }

  _signedOut(_SignedOut e, Emitter<AuthState> emit) async {
    await _authFacade.signOut();
    emit(const AuthState.unauthenticated());
  }
}
