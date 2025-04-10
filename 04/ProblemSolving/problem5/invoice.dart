import 'client.dart';
import 'project.dart';

class Invoice {
  int id;
  Client client;
  Project project;
  double amount;
  String status;

  Invoice(this.id, this.client, this.project, this.amount, this.status);

  void markPaid() => status = "Paid";
  String generateInvoice() => "Invoice #$id for ${client.name}, Amount: \$$amount, Status: $status";
}