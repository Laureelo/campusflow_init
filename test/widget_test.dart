import 'package:campusflow/main.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:intl/intl.dart';

void main() {
  testWidgets('shows the title screen with the logo and the date', (tester) async {
    await tester.pumpWidget(const CampusFlowApp());

    expect(find.text('CampusFlow'), findsOneWidget);
    expect(find.text('Track your academic deadlines'), findsOneWidget);
    expect(find.byType(Image), findsOneWidget);

    final today = DateFormat('EEEE d MMMM y').format(DateTime.now());
    expect(find.text(today), findsOneWidget);
  });
}
