// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter_test/flutter_test.dart';
// import 'package:geolocator/geolocator.dart';
// import 'package:linkedit/features/delivery_package/data/models/delivery_package_model.dart';
// import 'package:linkedit/features/delivery_package/data/repositories/firebase_delivery_package_repository.dart';
// import 'package:mockito/annotations.dart';
// import 'package:mockito/mockito.dart';
//
// import 'firebase_delivery_package_repository_test.mocks.dart';
//
// @GenerateMocks([FirebaseFirestore, DocumentReference, CollectionReference])
// void main() {
//   group('FirebaseDeliveryPackageRepository', () {
//     late FirebaseDeliveryPackageRepository repository;
//     late MockFirebaseFirestore mockFirebaseStore;
//     late MockCollectionReference<Map<String, dynamic>> mockCollectionReference;
//     late MockDocumentReference<Map<String, dynamic>> mockDocumentReference;
//     setUp(() async {
//       mockFirebaseStore = MockFirebaseFirestore();
//       mockDocumentReference = MockDocumentReference();
//       mockCollectionReference = MockCollectionReference();
//       repository = FirebaseDeliveryPackageRepository(
//           firebaseFirestore: mockFirebaseStore);
//     });
//
//     test('should add delivery package to Firebase Cloud Firestore', () async {
//       when(mockFirebaseStore.collection('deliveryPackage'))
//           .thenAnswer((_) => mockCollectionReference);
//       when(mockCollectionReference.add(any))
//           .thenAnswer((_) => Future.value(mockDocumentReference));
//
//       final Position packageSource = Position(
//           longitude: 30.033333,
//           latitude: 31.233334,
//           timestamp: DateTime.now(),
//           accuracy: 1,
//           altitude: 0,
//           heading: 0,
//           speed: 1,
//           speedAccuracy: 1);
//       // Alexandria
//       final Position packageDestination = Position(
//           longitude: 31.205753,
//           latitude: 29.924526,
//           timestamp: DateTime.now(),
//           accuracy: 1,
//           altitude: 0,
//           heading: 0,
//           speed: 1,
//           speedAccuracy: 1);
//       // Arrange
//       final deliveryPackageModel = DeliveryPackageModel(
//         packageDescription: 'Test package',
//         packageDestination: packageDestination,
//         packageSource: packageSource,
//         packageTitle: 'Test package title',
//       );
//       deliveryPackageModel.setDeliveryCost = 360;
//       deliveryPackageModel.setDelivered = false;
//       Map<String, dynamic> testDeliveryPackage = {
//         'deliveryCost': deliveryPackageModel.deliveryCost,
//         'isDelivered': deliveryPackageModel.isDelivered,
//         'packageDescription': deliveryPackageModel.packageDescription,
//         'packageDestination': deliveryPackageModel.packageDestination,
//         'packageSource': deliveryPackageModel.packageSource,
//         'packageTitle': deliveryPackageModel.packageTitle,
//       };
//       final result = await repository.addDeliveryPackageToFirebaseCloudDatabase(
//           deliveryPackageModel: deliveryPackageModel);
//       verify(mockFirebaseStore.collection('deliveryPackage')).called(1);
//       verify(mockCollectionReference.add(testDeliveryPackage)).called(1);
//
//       expect(result, equals(mockDocumentReference));
//     });
//   });
// }
