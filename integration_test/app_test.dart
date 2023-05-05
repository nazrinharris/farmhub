// ignore_for_file: prefer_const_constructors

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:farmhub/app_router.dart';
import 'package:farmhub/firebase_options.dart';
import 'package:farmhub/locator.dart';
import 'package:farmhub/main.dart';
import 'package:farmhub/presentation/shared_widgets/buttons.dart';
import 'package:farmhub/presentation/views/login_screen/login_screen.dart';
import 'package:farmhub/presentation/views/splash_screen/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

void main() async {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();
  FirebaseFirestore.instance.settings = const Settings(
    host: 'localhost:8080',
    sslEnabled: false,
    persistenceEnabled: false,
  );
  setupLocator();

  testWidgets(
    "Pressing Get Started button should navigate to Login Page",
    (tester) async {
      await tester.pumpWidget(FarmhubApp(appRouter: AppRouter()));

      expect(find.byType(SplashScreen), findsOneWidget);
      await tester.pumpAndSettle(Duration(seconds: 5));

      await tester.tap(find.byType(PrimaryButton));
      await tester.pumpAndSettle();

      expect(find.byType(LoginScreen), findsOneWidget);
    },
  );
}
