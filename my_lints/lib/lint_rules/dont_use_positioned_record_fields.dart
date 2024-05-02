import 'package:analyzer/error/listener.dart';
import 'package:custom_lint_builder/custom_lint_builder.dart';

class DontUsePositionedRecords extends DartLintRule {
  const DontUsePositionedRecords() : super(code: _code);

  // Lint rule metadata
  static const _code = LintCode(
    name: 'dont_use_positioned_records',
    problemMessage:
        'Don' 't use positioned record fields, use named record fields instead',
  );

  // `run` is where you analyze a file and report lint errors
  // Invoked on a file automatically on every file edit
  @override
  void run(
    CustomLintResolver resolver,
    ErrorReporter reporter,
    CustomLintContext context,
  ) {
    context.registry.addRecordTypeAnnotationPositionalField((node) {
      final token = node.beginToken;
      reporter.reportErrorForToken(_code, token);
    });
  }

  // Possible fixes for the lint error go here
  @override
  List<Fix> getFixes() => [];
}
