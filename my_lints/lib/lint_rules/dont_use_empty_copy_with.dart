
import 'package:analyzer/error/error.dart';
import 'package:analyzer/error/listener.dart';
import 'package:custom_lint_builder/custom_lint_builder.dart';

class DontUseEmptyCopyWith extends DartLintRule {
  const DontUseEmptyCopyWith() : super(code: _code);

  // Lint rule metadata
  static const _code = LintCode(
    errorSeverity: ErrorSeverity.WARNING,
    name: 'dont_use_empty_copy_with',
    problemMessage:
    'copyWith() without parameters is useless',
  );

  // `run` is where you analyze a file and report lint errors
  // Invoked on a file automatically on every file edit
  @override
  void run(
      CustomLintResolver resolver,
      ErrorReporter reporter,
      CustomLintContext context,
      ) {
    context.registry.addMethodInvocation((node) {
      String copyWith = 'copyWith';
      if (node.methodName.name == copyWith && node.argumentList.arguments.isEmpty) {
        reporter.reportErrorForToken(_code, node.methodName.token);
      }
    });
  }

  // Possible fixes for the lint error go here
  @override
  List<Fix> getFixes() => [];
}
