import 'project.dart';

class Report {
  int id;
  Project project;
  Map<String, double> metrics;
  String summary;

  Report(this.id, this.project, this.metrics, this.summary);

  String generateReport() => "Report for Project ${project.name}: $summary";
  Map<String, double> analyzePerformance() => metrics;
}