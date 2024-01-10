class SiblingData {
  var   name;
  final String gender;
  final int qualification; // Change to int
  final int course; // Change to int
  final int occupation; // Change to int

  SiblingData({
    required this.name,
    required this.gender,
    required this.qualification,
    required this.course,
    required this.occupation,
  });

  // Implement toJson method to convert SiblingData to JSON
  Map<String, dynamic> toJson() {
    return {
      "name": name,
      "gender": gender,
      "qualification": qualification,
      "course": course,
      "occupation": occupation,
    };
  }
}
