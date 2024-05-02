// ignore_for_file: unused_local_variable
import 'HelloService.dart';
import 'Utils.dart';

void main() {
  (int, bool) testRecord() {
    return (1, true);
  }

  // remove the next line.
  // expect_lint: dont_say_his_name
  var definitelyNotVoldemort = "the wizard of mystery voldemort";

  // place your cursor on the string literal and `ctrl + .`
  // in VSCode (or whatever shortcut your IDE supports for assist actions)
  // then, choose 'Insert a random spell in the string literal'.
  var randomString = "sfgsdnkgj";

  // navigate to the `HelloService` and check it out.
  final auth = HelloService();

  // navigate to the `Utils` and check it out.
  Utils.hi();

  final res = testRecord();
  print(res.$1);
}
