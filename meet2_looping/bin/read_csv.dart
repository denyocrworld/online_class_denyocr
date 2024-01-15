import 'dart:io';

void main() async {
  // http request
  // firebase
  // localstorage
  // csv
  // excell

  var file = File("data.csv");
  var content = file.readAsStringSync();
  List users = content.split("\n"); //newLine

  for (var user in users) {
    print(user);
    for (var user in users) {
      print(user);
    }

    for (var user in users) {
      print(user);
    }
  }

  users.add("angel@gmail.com,Angel,23");

  file.writeAsStringSync(users.join("\n"));
}

// Skils
// Experience
// Sabtu pagi