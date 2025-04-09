void main() {
  Map<String, double> avg = {};
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
    String studentName = students[i]["name"];
    List<dynamic> scores = students[i]["scores"];
    double sum = 0;
    double avarage = 0;

    for (int j = 0; j < scores.length; j++) {
      sum += scores[j];
    }
    avarage = double.parse((sum / scores.length).toStringAsFixed(2));
    avg["${studentName}"] = avarage;
  }

  var entriesOfMap = Map.fromEntries(
      avg.entries.toList()..sort((a, b) => b.value.compareTo(a.value)));
  print(entriesOfMap);

  return;
}
