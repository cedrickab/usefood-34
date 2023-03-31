import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'product_collection_record.g.dart';

abstract class ProductCollectionRecord
    implements Built<ProductCollectionRecord, ProductCollectionRecordBuilder> {
  static Serializer<ProductCollectionRecord> get serializer =>
      _$productCollectionRecordSerializer;

  String? get name;

  @BuiltValueField(wireName: 'expiration_date')
  DateTime? get expirationDate;

  String? get photo;

  @BuiltValueField(wireName: 'nutri_score')
  String? get nutriScore;

  @BuiltValueField(wireName: 'added_time')
  DateTime? get addedTime;

  @BuiltValueField(wireName: 'is_favorite')
  bool? get isFavorite;

  @BuiltValueField(wireName: 'weight_volume')
  String? get weightVolume;

  @BuiltValueField(wireName: 'is_visible')
  bool? get isVisible;

  @BuiltValueField(wireName: 'user_email')
  String? get userEmail;

  String? get categorie;

  DateTime? get alerts;

  @BuiltValueField(wireName: 'initial_quantity')
  int? get initialQuantity;

  @BuiltValueField(wireName: 'remaining_quantity')
  int? get remainingQuantity;

  String? get id;

  String? get ingredients;

  String? get nutritions;

  String? get novagroup;

  String? get ecoscore;

  @BuiltValueField(wireName: 'display_name')
  String? get displayName;

  double? get price;

  int? get departement;

  @BuiltValueField(wireName: 'user_photo')
  String? get userPhoto;

  @BuiltValueField(wireName: 'selling_quantity')
  int? get sellingQuantity;

  @BuiltValueField(wireName: 'has_barcode')
  bool? get hasBarcode;

  String? get description;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ProductCollectionRecordBuilder builder) =>
      builder
        ..name = ''
        ..photo = ''
        ..nutriScore = ''
        ..isFavorite = false
        ..weightVolume = ''
        ..isVisible = false
        ..userEmail = ''
        ..categorie = ''
        ..initialQuantity = 0
        ..remainingQuantity = 0
        ..id = ''
        ..ingredients = ''
        ..nutritions = ''
        ..novagroup = ''
        ..ecoscore = ''
        ..displayName = ''
        ..price = 0.0
        ..departement = 0
        ..userPhoto = ''
        ..sellingQuantity = 0
        ..hasBarcode = false
        ..description = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('product_collection');

  static Stream<ProductCollectionRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ProductCollectionRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ProductCollectionRecord._();
  factory ProductCollectionRecord(
          [void Function(ProductCollectionRecordBuilder) updates]) =
      _$ProductCollectionRecord;

  static ProductCollectionRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createProductCollectionRecordData({
  String? name,
  DateTime? expirationDate,
  String? photo,
  String? nutriScore,
  DateTime? addedTime,
  bool? isFavorite,
  String? weightVolume,
  bool? isVisible,
  String? userEmail,
  String? categorie,
  DateTime? alerts,
  int? initialQuantity,
  int? remainingQuantity,
  String? id,
  String? ingredients,
  String? nutritions,
  String? novagroup,
  String? ecoscore,
  String? displayName,
  double? price,
  int? departement,
  String? userPhoto,
  int? sellingQuantity,
  bool? hasBarcode,
  String? description,
}) {
  final firestoreData = serializers.toFirestore(
    ProductCollectionRecord.serializer,
    ProductCollectionRecord(
      (p) => p
        ..name = name
        ..expirationDate = expirationDate
        ..photo = photo
        ..nutriScore = nutriScore
        ..addedTime = addedTime
        ..isFavorite = isFavorite
        ..weightVolume = weightVolume
        ..isVisible = isVisible
        ..userEmail = userEmail
        ..categorie = categorie
        ..alerts = alerts
        ..initialQuantity = initialQuantity
        ..remainingQuantity = remainingQuantity
        ..id = id
        ..ingredients = ingredients
        ..nutritions = nutritions
        ..novagroup = novagroup
        ..ecoscore = ecoscore
        ..displayName = displayName
        ..price = price
        ..departement = departement
        ..userPhoto = userPhoto
        ..sellingQuantity = sellingQuantity
        ..hasBarcode = hasBarcode
        ..description = description,
    ),
  );

  return firestoreData;
}
