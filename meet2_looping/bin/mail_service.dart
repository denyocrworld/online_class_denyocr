import 'package:mailer/mailer.dart';
import 'package:mailer/smtp_server/gmail.dart';

class MailService {
  static sendEmail({
    required String from,
    required String to,
    required String subject,
    required String message,
  }) async {
    final username = 'andrewgarfields685@gmail.com';
    final password = 'ecbx xhhb xzph iyyu';

    final smtpServer = gmail(username, password);

    final mailMessage = Message()
      ..from = Address(username, from)
      ..recipients.add(to)
      ..subject = subject
      ..text = message;

    try {
      final sendReport = await send(mailMessage, smtpServer);
    } on MailerException catch (e) {
      print('Message not sent: $e');
    }
  }
}
