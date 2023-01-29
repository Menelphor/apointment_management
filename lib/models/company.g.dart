// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Company _$$_CompanyFromJson(Map<String, dynamic> json) => _$_Company(
      id: json['id'] as String,
      name: json['name'] as String,
      street: json['street'] as String,
      houseNumber: json['houseNumber'] as String,
      postCode: json['postCode'] as String,
      phoneNumber: json['phoneNumber'] as String,
      contact: json['contact'] as String,
    );

Map<String, dynamic> _$$_CompanyToJson(_$_Company instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'street': instance.street,
      'houseNumber': instance.houseNumber,
      'postCode': instance.postCode,
      'phoneNumber': instance.phoneNumber,
      'contact': instance.contact,
    };
