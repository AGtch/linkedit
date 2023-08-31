import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';

import '../../features/delivery_package/data/repositories/firebase_delivery_package_repository.dart';
import '../../features/directions/data/data_sources/directions_data_sources.dart';
import '../../features/directions/data/repositories/directions_repository.dart';
import '../../features/login/data/repository/imp_login_repository.dart';
import '../../features/login/presentation/cubits/auth_cubit/phone_verification_cubit.dart';
import '../../features/login/presentation/cubits/login_cubit/login_cubit.dart';
import '../../features/map/data/data_sources/place_autocomplete_service/place_autocomplete_service.dart';
import '../../features/map/data/data_sources/place_details_service/place_details_service.dart';
import '../../features/map/data/repositories/place_autocomplete_repository/impl_places_suggestions_repository.dart';
import '../../features/map/data/repositories/place_details_repository/impl_places_details_repository.dart';
import '../../features/map/presentation/cubit/place_suggestions_cubit/place_suggestions_cubit.dart';
import '../../features/signup/data/repository/imp_signup_repository.dart';
import '../routes/app_router.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerFactory<ImpLoginRepository>(() => ImpLoginRepository(
        FirebaseAuth.instance,
      ));
  getIt.registerFactory<FirebaseDeliveryPackageRepository>(() =>
      FirebaseDeliveryPackageRepository(
          firebaseFirestore: FirebaseFirestore.instance,
          firebaseAuth: FirebaseAuth.instance));
  getIt.registerFactory<LoginCubit>(
      () => LoginCubit(getIt.get<ImpLoginRepository>()));
  getIt.registerLazySingleton<PlaceDetailsService>(
    () => PlaceDetailsService(
      Dio(
        BaseOptions(
          sendTimeout: const Duration(seconds: 2),
          connectTimeout: const Duration(seconds: 2),
          receiveTimeout: const Duration(seconds: 2),
        ),
      ),
    ),
  );
  getIt.registerFactory<ImplPlacesDetailsRepository>(
      () => ImplPlacesDetailsRepository(placeDetailsService: getIt.get()));

  getIt.registerSingleton<AppRouter>(
      AppRouter(loginCubit: getIt.get<LoginCubit>()));
  getIt.registerLazySingleton<PlaceAutocompleteService>(
    () => PlaceAutocompleteService(
      Dio(
        BaseOptions(
          sendTimeout: const Duration(seconds: 2),
          connectTimeout: const Duration(seconds: 2),
          receiveTimeout: const Duration(seconds: 2),
        ),
      ),
    ),
  );
  getIt.registerLazySingleton<DirectionsDataSource>(
    () => DirectionsDataSource(
      Dio(
        BaseOptions(
          sendTimeout: const Duration(seconds: 2),
          connectTimeout: const Duration(seconds: 2),
          receiveTimeout: const Duration(seconds: 2),
        ),
      ),
    ),
  );
  getIt.registerFactory<ImpPlacesSuggestionsRepository>(() =>
      ImpPlacesSuggestionsRepository(getIt.get<PlaceAutocompleteService>()));
  getIt.registerFactory<DirectionsRepository>(() => DirectionsRepository(
      directionsDataSource: getIt.get<DirectionsDataSource>()));

  getIt.registerFactory<ImpSignupRepository>(() => ImpSignupRepository(
        firebaseAuth: FirebaseAuth.instance,
      ));

  getIt.registerFactory<GoogleAutoCompleteCubit>(() => (GoogleAutoCompleteCubit(
        impPlacesSuggestionsRepository:
            getIt.get<ImpPlacesSuggestionsRepository>(),
      )));
  getIt.registerFactory<PhoneVerificationCubit>(() => (PhoneVerificationCubit(
        firebaseAuth: FirebaseAuth.instance,
      )));
}
