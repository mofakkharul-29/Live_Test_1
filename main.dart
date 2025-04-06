void main() {
  Map<String, dynamic> avarage = {};

  List<Map<String, dynamic>> students = [
    {
      "name": "Alice",
      "scores": [85, 90, 78]
    },
    {
      "name": "Bob",
      "scores": [88, 76, 95]
    },
    {
      "name": "Charlie",
      "scores": [90, 92, 85]
    }
  ];

  for (int i = 0; i < students.length; i++) {
    double sum = 0;
    double avg = 0;

    String name = students[i]["name"];
    int len = students[i]["scores"].length;

    for (int j = 0; j < len; j++) {
      sum += students[i]["scores"][j];
    }
    avg = double.parse((sum / len).toStringAsFixed(2));
    avarage["${name}"] = avg;
  }

  var sortedMap = Map.fromEntries(
      avarage.entries.toList()..sort((a, b) => b.value.compareTo(a.value)));

  print(sortedMap);

  return;
}
