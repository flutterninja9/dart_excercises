// Pas List<String> insie main() to get arguemnts from command line
// Like here we will do ../assets/data.csv in args
import 'dart:io';
import '../errors/no-args-error.dart';
import 'core/get_result.dart';
import 'core/report_generator.dart';

void main(List<String> args) {
  if (args.isEmpty) {
    throw NoArgsError(
            "No arguments passed,\nPlease specify the data.csv filepath")
        .error;
  } else {
    String filePath = args[0];
    final lines = File(filePath).readAsLinesSync();
    Map<String, dynamic> result = generateReport(lines);
    printReport(result);
  }
}
