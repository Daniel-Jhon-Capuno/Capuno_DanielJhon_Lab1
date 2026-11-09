import 'package:flutter_test/flutter_test.dart';
import 'package:student_profile_app/student_profile_app.dart';

void main() {
  testWidgets('Student profile displays user information', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const StudentProfileApp());

    // Verify student profile header and key information
    expect(find.text('Student Profile'), findsOneWidget);
    expect(find.text('Daniel Jhon Capuno'), findsOneWidget);
    expect(find.textContaining('BS Information Technology'), findsWidgets);
    expect(find.text('554505'), findsOneWidget);
    expect(find.text('d.capuno.554505@umindanao.edu.ph'), findsOneWidget);
    expect(find.text('About Me'), findsOneWidget);
    expect(find.text('Hobbies and Interests'), findsOneWidget);
    expect(find.text('Painting'), findsOneWidget);
    expect(find.text('Reading'), findsOneWidget);
    expect(find.text('Classical Music'), findsOneWidget);
    expect(find.text('Badminton'), findsOneWidget);
  });
}
