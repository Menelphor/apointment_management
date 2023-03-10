import 'package:freezed_annotation/freezed_annotation.dart';

part 'company.freezed.dart';
part 'company.g.dart';

@freezed
class Company with _$Company {
  const Company._();
  const factory Company({
    required String id,
    required String name,
    required String street,
    required String houseNumber,
    required String postCode,
    required String city,
    required String phoneNumber,
    required String contact,
  }) = _Company;

  factory Company.fromJson(Map<String, dynamic> json) =>
      _$CompanyFromJson(json);

  String get address => '$street $houseNumber, $postCode $city';
}
