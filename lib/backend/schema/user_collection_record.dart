import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'user_collection_record.g.dart';

abstract class UserCollectionRecord
    implements Built<UserCollectionRecord, UserCollectionRecordBuilder> {
  static Serializer<UserCollectionRecord> get serializer =>
      _$userCollectionRecordSerializer;

  String? get email;

  @BuiltValueField(wireName: 'display_name')
  String? get displayName;

  @BuiltValueField(wireName: 'created_time')
  DateTime? get createdTime;

  String? get password;

  @BuiltValueField(wireName: 'user_score')
  String? get userScore;

  @BuiltValueField(wireName: 'is_premium')
  bool? get isPremium;

  @BuiltValueField(wireName: 'photo_url')
  String? get photoUrl;

  String? get uid;

  @BuiltValueField(wireName: 'phone_number')
  String? get phoneNumber;

  @BuiltValueField(wireName: 'holders_number')
  int? get holdersNumber;

  @BuiltValueField(wireName: 'registred_product_count')
  int? get registredProductCount;

  @BuiltValueField(wireName: 'expired_product_count')
  int? get expiredProductCount;

  String? get city;

  int? get departement;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(UserCollectionRecordBuilder builder) => builder
    ..email = ''
    ..displayName = ''
    ..password = ''
    ..userScore = ''
    ..isPremium = false
    ..photoUrl = ''
    ..uid = ''
    ..phoneNumber = ''
    ..holdersNumber = 0
    ..registredProductCount = 0
    ..expiredProductCount = 0
    ..city = ''
    ..departement = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('user_collection');

  static Stream<UserCollectionRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<UserCollectionRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  UserCollectionRecord._();
  factory UserCollectionRecord(
          [void Function(UserCollectionRecordBuilder) updates]) =
      _$UserCollectionRecord;

  static UserCollectionRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createUserCollectionRecordData({
  String? email,
  String? displayName,
  DateTime? createdTime,
  String? password,
  String? userScore,
  bool? isPremium,
  String? photoUrl,
  String? uid,
  String? phoneNumber,
  int? holdersNumber,
  int? registredProductCount,
  int? expiredProductCount,
  String? city,
  int? departement,
}) {
  final firestoreData = serializers.toFirestore(
    UserCollectionRecord.serializer,
    UserCollectionRecord(
      (u) => u
        ..email = email
        ..displayName = displayName
        ..createdTime = createdTime
        ..password = password
        ..userScore = userScore
        ..isPremium = isPremium
        ..photoUrl = photoUrl
        ..uid = uid
        ..phoneNumber = phoneNumber
        ..holdersNumber = holdersNumber
        ..registredProductCount = registredProductCount
        ..expiredProductCount = expiredProductCount
        ..city = city
        ..departement = departement,
    ),
  );

  return firestoreData;
}
