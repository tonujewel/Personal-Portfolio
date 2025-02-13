class WorkExperienceModel {
  final String designation;
  final String description;
  final String date;
  final String location;
  final String companyName;

  WorkExperienceModel({
    required this.designation,
    required this.description,
    required this.date,
    required this.location,
    required this.companyName,
  });

  factory WorkExperienceModel.fromJson(Map<String, dynamic> json) {
    return WorkExperienceModel(
      designation: json['designation'],
      description: json['description'],
      date: json['date'],
      location: json['location'],
      companyName: json['companyName'],
    );
  }
}
