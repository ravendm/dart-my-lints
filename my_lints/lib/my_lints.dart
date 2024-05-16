import 'package:custom_lint_builder/custom_lint_builder.dart';
import 'package:my_lints/lint_rules/dont_use_empty_copy_with.dart';
import 'package:my_lints/lint_rules/dont_use_positioned_record_fields.dart';

// Entrypoint of plugin
PluginBase createPlugin() => _MyLints();

// The class listing all the [LintRule]s and [Assist]s defined by our plugin
class _MyLints extends PluginBase {
  // Lint rules
  @override
  List<LintRule> getLintRules(CustomLintConfigs configs) => [
        DontUsePositionedRecords(),
        DontUseEmptyCopyWith()
      ];

  // Assists
  @override
  List<Assist> getAssists() => [];
}
