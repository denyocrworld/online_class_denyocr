import 'mail_service.dart';

void main() async {
  List<Map> targetUsers = [
    {
      "email": "alex@mailinator.com",
      "subject": "Kabar baik dari Flutter",
      "message": "Flutter 10.0 sudah rilis!",
    },
    {
      "email": "rian@mailinator.com",
      "subject": "Kabar buruk dari tetangga",
      "message": "Maaf, ...",
    },
    {
      "email": "deny@mailinator.com",
      "subject": "Selamat anda mendapatkan xxx",
      "message": "Selamat kamu mendatkan Rp100.000,-",
    }
  ];

  for (var target in targetUsers) {
    print("Lagi mau ngirim email ke $target");
    await MailService.sendEmail(
      from: "Deny",
      to: target["email"],
      subject: target["subject"],
      message: target["message"],
    );

    print("Berhasil kirim email!");
  }
}
