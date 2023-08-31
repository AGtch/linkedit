import 'package:freezed_annotation/freezed_annotation.dart';

part 'delivery_package_state.freezed.dart';

@freezed
class AddingDeliveryPackageState with _$AddingDeliveryPackageState {
  const factory AddingDeliveryPackageState.initial() = Initial;

  factory AddingDeliveryPackageState.addingPackage() = AddingPackage;

  const factory AddingDeliveryPackageState.addingPackageSuccess() =
      AddingPackageSuccess;

  const factory AddingDeliveryPackageState.addingPackageError() =
      AddingPackageError;
}
