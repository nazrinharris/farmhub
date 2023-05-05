// ignore_for_file: prefer_const_constructors, prefer_const_declarations

import 'package:farmhub/core/util/app_const.dart';
import 'package:farmhub/features/produce_manager/data/datasources/produce_prices_remote_datasource.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:intl/intl.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('updateAggregatePricesTransaction Tests', () {
    setUpAll(() async {
      await Firebase.initializeApp();
      FirebaseFirestore.instance.settings = const Settings(
        host: 'localhost:8080',
        sslEnabled: false,
        persistenceEnabled: false,
      );
    });

    testWidgets('Update aggregate prices', (WidgetTester tester) async {
      // Set up initial data
      final FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
      final String produceId = 'test-produce';
      final DateTime chosenTimeStamp = DateTime(2023, 5, 5);
      final num initialPrice = 100;

      final aggregateDocRef = firebaseFirestore
          .collection(FS_GLOBAL_PRODUCE)
          .doc(produceId)
          .collection(FS_AGGREGATE_COLLECTION)
          .doc(FS_AGGREGATE_DOC);

      final chosenDate = DateFormat("dd-MM-yyyy").format(chosenTimeStamp);

      // Create an initial aggregate prices document
      await aggregateDocRef.set({
        "prices-map": {
          chosenDate: initialPrice,
        },
      });

      // Perform the operation
      final num newPrice = 120;

      await firebaseFirestore.runTransaction((transaction) async {
        final aggregateDocSnapshot = await transaction.get(aggregateDocRef);
        final Map<String, dynamic> allPricesMap = aggregateDocSnapshot.data()!;

        await updateAggregatePricesTransaction(
          firebaseFirestore: firebaseFirestore,
          transaction: transaction,
          produceId: produceId,
          newPrice: newPrice,
          chosenTimeStamp: chosenTimeStamp,
          allPricesMap: allPricesMap,
        );
      });

      // Verify the expected changes
      final updatedAggregateDocSnapshot = await aggregateDocRef.get();
      final Map<String, dynamic> updatedAllPricesMap = updatedAggregateDocSnapshot.data()!;
      final num updatedPrice = updatedAllPricesMap["prices-map"][chosenDate];

      expect(updatedPrice, (initialPrice + newPrice) / 2);
    });
  });
}
