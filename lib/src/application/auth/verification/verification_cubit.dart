import 'package:bloc/bloc.dart';
import 'package:get/get.dart';
import 'package:injectable/injectable.dart';
import 'package:jini/src/domain/auth/i_auth_facade.dart';
import 'package:jini/src/domain/mail/i_mail_facade.dart';
import 'package:jini/src/presentation/routes/j_router.dart';

@injectable
class VerificationCubit extends Cubit {
  VerificationCubit(this._mailFacade, this._authFacade) : super(null);

  final IMailFacade _mailFacade;
  final IAuthFacade _authFacade;

  Future<void> openMailApp() async => await _mailFacade.openMailApp();

  Future<void> signOut() async {
    await _authFacade.signOut();
    Get.offAllNamed(JRoutes.signIn);
  }
}
