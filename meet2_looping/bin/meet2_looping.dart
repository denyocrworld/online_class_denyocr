import 'mail_service.dart';

void main() async {
  List emails = [
    // "andrewgarfields685@gmail.com",
    // "demo1@mailinator.com",
    // "demo2@mailinator.com",
    // "demo3@mailinator.com",
    // "demo4@mailinator.com",
    "demo5@mailinator.com",
    "demo6@mailinator.com",
    "demo7@mailinator.com",
    "demo9@mailinator.com",
    "demo10@mailinator.com",
  ];

  // for var in
  // for var i

  //       singular plural
  for (var email in emails) {
    print("Lagi mau ngirim email ke $email");
    await MailService.sendEmail(
      from: "Deny",
      to: email,
      subject: "XXX",
      message: "Hello",
    );

    print("Berhasil kirim email!");
  }
}
