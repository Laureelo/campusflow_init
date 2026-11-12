import 'package:campusflow/main.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('shows the title screen', (tester) async {
    await tester.pumpWidget(const CampusFlowApp());

    expect(find.text('CampusFlow'), findsOneWidget);
    expect(find.text('Track your academic deadlines'), findsOneWidget);
  });
}
