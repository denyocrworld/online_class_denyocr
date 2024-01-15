void main() {
  List users = [
    {
      "name": "Denada",
      "score": 89,
    },
    {
      "name": "Deny",
      "score": 23,
    },
    {
      "name": "Alex",
      "score": 76,
    },
    {
      "name": "Rian",
      "score": 78,
    }
  ];

  List userYangLulus = [];
  for (var user in users) {
    if (user["score"] > 70) {
      userYangLulus.add(user);
    }
  }

  print(userYangLulus);
}
