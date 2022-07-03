import 'package:injectable/injectable.dart';
import 'package:jini/domain/mail/i_mail_facade.dart';
import 'package:jini/presentation/core/widgets/j_dialogs.dart';
import 'package:open_mail_app/open_mail_app.dart';

@LazySingleton(as: IMailFacade)
class OpenMailAppFacade implements IMailFacade {
  @override
  Future<void> openMailApp() async {
    final _result = await OpenMailApp.openMailApp();

    if (!_result.didOpen && !_result.canOpen) {
      JDialogs.noMailAppDialog();
    } else if (!_result.didOpen && _result.canOpen) {
      JDialogs.mailAppOptionsDialog(
        MailAppPickerDialog(mailApps: _result.options),
      );
    }
  }
}
