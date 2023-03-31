// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_collection_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ProductCollectionRecord> _$productCollectionRecordSerializer =
    new _$ProductCollectionRecordSerializer();

class _$ProductCollectionRecordSerializer
    implements StructuredSerializer<ProductCollectionRecord> {
  @override
  final Iterable<Type> types = const [
    ProductCollectionRecord,
    _$ProductCollectionRecord
  ];
  @override
  final String wireName = 'ProductCollectionRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, ProductCollectionRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.expirationDate;
    if (value != null) {
      result
        ..add('expiration_date')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.photo;
    if (value != null) {
      result
        ..add('photo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.nutriScore;
    if (value != null) {
      result
        ..add('nutri_score')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.addedTime;
    if (value != null) {
      result
        ..add('added_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.isFavorite;
    if (value != null) {
      result
        ..add('is_favorite')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.weightVolume;
    if (value != null) {
      result
        ..add('weight_volume')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.isVisible;
    if (value != null) {
      result
        ..add('is_visible')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.userEmail;
    if (value != null) {
      result
        ..add('user_email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.categorie;
    if (value != null) {
      result
        ..add('categorie')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.alerts;
    if (value != null) {
      result
        ..add('alerts')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.initialQuantity;
    if (value != null) {
      result
        ..add('initial_quantity')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.remainingQuantity;
    if (value != null) {
      result
        ..add('remaining_quantity')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ingredients;
    if (value != null) {
      result
        ..add('ingredients')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.nutritions;
    if (value != null) {
      result
        ..add('nutritions')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.novagroup;
    if (value != null) {
      result
        ..add('novagroup')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ecoscore;
    if (value != null) {
      result
        ..add('ecoscore')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.displayName;
    if (value != null) {
      result
        ..add('display_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.price;
    if (value != null) {
      result
        ..add('price')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.departement;
    if (value != null) {
      result
        ..add('departement')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.userPhoto;
    if (value != null) {
      result
        ..add('user_photo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.sellingQuantity;
    if (value != null) {
      result
        ..add('selling_quantity')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.hasBarcode;
    if (value != null) {
      result
        ..add('has_barcode')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  ProductCollectionRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ProductCollectionRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'expiration_date':
          result.expirationDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'photo':
          result.photo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'nutri_score':
          result.nutriScore = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'added_time':
          result.addedTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'is_favorite':
          result.isFavorite = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'weight_volume':
          result.weightVolume = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'is_visible':
          result.isVisible = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'user_email':
          result.userEmail = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'categorie':
          result.categorie = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'alerts':
          result.alerts = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'initial_quantity':
          result.initialQuantity = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'remaining_quantity':
          result.remainingQuantity = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'ingredients':
          result.ingredients = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'nutritions':
          result.nutritions = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'novagroup':
          result.novagroup = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'ecoscore':
          result.ecoscore = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'display_name':
          result.displayName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'price':
          result.price = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'departement':
          result.departement = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'user_photo':
          result.userPhoto = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'selling_quantity':
          result.sellingQuantity = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'has_barcode':
          result.hasBarcode = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$ProductCollectionRecord extends ProductCollectionRecord {
  @override
  final String? name;
  @override
  final DateTime? expirationDate;
  @override
  final String? photo;
  @override
  final String? nutriScore;
  @override
  final DateTime? addedTime;
  @override
  final bool? isFavorite;
  @override
  final String? weightVolume;
  @override
  final bool? isVisible;
  @override
  final String? userEmail;
  @override
  final String? categorie;
  @override
  final DateTime? alerts;
  @override
  final int? initialQuantity;
  @override
  final int? remainingQuantity;
  @override
  final String? id;
  @override
  final String? ingredients;
  @override
  final String? nutritions;
  @override
  final String? novagroup;
  @override
  final String? ecoscore;
  @override
  final String? displayName;
  @override
  final double? price;
  @override
  final int? departement;
  @override
  final String? userPhoto;
  @override
  final int? sellingQuantity;
  @override
  final bool? hasBarcode;
  @override
  final String? description;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ProductCollectionRecord(
          [void Function(ProductCollectionRecordBuilder)? updates]) =>
      (new ProductCollectionRecordBuilder()..update(updates))._build();

  _$ProductCollectionRecord._(
      {this.name,
      this.expirationDate,
      this.photo,
      this.nutriScore,
      this.addedTime,
      this.isFavorite,
      this.weightVolume,
      this.isVisible,
      this.userEmail,
      this.categorie,
      this.alerts,
      this.initialQuantity,
      this.remainingQuantity,
      this.id,
      this.ingredients,
      this.nutritions,
      this.novagroup,
      this.ecoscore,
      this.displayName,
      this.price,
      this.departement,
      this.userPhoto,
      this.sellingQuantity,
      this.hasBarcode,
      this.description,
      this.ffRef})
      : super._();

  @override
  ProductCollectionRecord rebuild(
          void Function(ProductCollectionRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProductCollectionRecordBuilder toBuilder() =>
      new ProductCollectionRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProductCollectionRecord &&
        name == other.name &&
        expirationDate == other.expirationDate &&
        photo == other.photo &&
        nutriScore == other.nutriScore &&
        addedTime == other.addedTime &&
        isFavorite == other.isFavorite &&
        weightVolume == other.weightVolume &&
        isVisible == other.isVisible &&
        userEmail == other.userEmail &&
        categorie == other.categorie &&
        alerts == other.alerts &&
        initialQuantity == other.initialQuantity &&
        remainingQuantity == other.remainingQuantity &&
        id == other.id &&
        ingredients == other.ingredients &&
        nutritions == other.nutritions &&
        novagroup == other.novagroup &&
        ecoscore == other.ecoscore &&
        displayName == other.displayName &&
        price == other.price &&
        departement == other.departement &&
        userPhoto == other.userPhoto &&
        sellingQuantity == other.sellingQuantity &&
        hasBarcode == other.hasBarcode &&
        description == other.description &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, expirationDate.hashCode);
    _$hash = $jc(_$hash, photo.hashCode);
    _$hash = $jc(_$hash, nutriScore.hashCode);
    _$hash = $jc(_$hash, addedTime.hashCode);
    _$hash = $jc(_$hash, isFavorite.hashCode);
    _$hash = $jc(_$hash, weightVolume.hashCode);
    _$hash = $jc(_$hash, isVisible.hashCode);
    _$hash = $jc(_$hash, userEmail.hashCode);
    _$hash = $jc(_$hash, categorie.hashCode);
    _$hash = $jc(_$hash, alerts.hashCode);
    _$hash = $jc(_$hash, initialQuantity.hashCode);
    _$hash = $jc(_$hash, remainingQuantity.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, ingredients.hashCode);
    _$hash = $jc(_$hash, nutritions.hashCode);
    _$hash = $jc(_$hash, novagroup.hashCode);
    _$hash = $jc(_$hash, ecoscore.hashCode);
    _$hash = $jc(_$hash, displayName.hashCode);
    _$hash = $jc(_$hash, price.hashCode);
    _$hash = $jc(_$hash, departement.hashCode);
    _$hash = $jc(_$hash, userPhoto.hashCode);
    _$hash = $jc(_$hash, sellingQuantity.hashCode);
    _$hash = $jc(_$hash, hasBarcode.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ProductCollectionRecord')
          ..add('name', name)
          ..add('expirationDate', expirationDate)
          ..add('photo', photo)
          ..add('nutriScore', nutriScore)
          ..add('addedTime', addedTime)
          ..add('isFavorite', isFavorite)
          ..add('weightVolume', weightVolume)
          ..add('isVisible', isVisible)
          ..add('userEmail', userEmail)
          ..add('categorie', categorie)
          ..add('alerts', alerts)
          ..add('initialQuantity', initialQuantity)
          ..add('remainingQuantity', remainingQuantity)
          ..add('id', id)
          ..add('ingredients', ingredients)
          ..add('nutritions', nutritions)
          ..add('novagroup', novagroup)
          ..add('ecoscore', ecoscore)
          ..add('displayName', displayName)
          ..add('price', price)
          ..add('departement', departement)
          ..add('userPhoto', userPhoto)
          ..add('sellingQuantity', sellingQuantity)
          ..add('hasBarcode', hasBarcode)
          ..add('description', description)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ProductCollectionRecordBuilder
    implements
        Builder<ProductCollectionRecord, ProductCollectionRecordBuilder> {
  _$ProductCollectionRecord? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  DateTime? _expirationDate;
  DateTime? get expirationDate => _$this._expirationDate;
  set expirationDate(DateTime? expirationDate) =>
      _$this._expirationDate = expirationDate;

  String? _photo;
  String? get photo => _$this._photo;
  set photo(String? photo) => _$this._photo = photo;

  String? _nutriScore;
  String? get nutriScore => _$this._nutriScore;
  set nutriScore(String? nutriScore) => _$this._nutriScore = nutriScore;

  DateTime? _addedTime;
  DateTime? get addedTime => _$this._addedTime;
  set addedTime(DateTime? addedTime) => _$this._addedTime = addedTime;

  bool? _isFavorite;
  bool? get isFavorite => _$this._isFavorite;
  set isFavorite(bool? isFavorite) => _$this._isFavorite = isFavorite;

  String? _weightVolume;
  String? get weightVolume => _$this._weightVolume;
  set weightVolume(String? weightVolume) => _$this._weightVolume = weightVolume;

  bool? _isVisible;
  bool? get isVisible => _$this._isVisible;
  set isVisible(bool? isVisible) => _$this._isVisible = isVisible;

  String? _userEmail;
  String? get userEmail => _$this._userEmail;
  set userEmail(String? userEmail) => _$this._userEmail = userEmail;

  String? _categorie;
  String? get categorie => _$this._categorie;
  set categorie(String? categorie) => _$this._categorie = categorie;

  DateTime? _alerts;
  DateTime? get alerts => _$this._alerts;
  set alerts(DateTime? alerts) => _$this._alerts = alerts;

  int? _initialQuantity;
  int? get initialQuantity => _$this._initialQuantity;
  set initialQuantity(int? initialQuantity) =>
      _$this._initialQuantity = initialQuantity;

  int? _remainingQuantity;
  int? get remainingQuantity => _$this._remainingQuantity;
  set remainingQuantity(int? remainingQuantity) =>
      _$this._remainingQuantity = remainingQuantity;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _ingredients;
  String? get ingredients => _$this._ingredients;
  set ingredients(String? ingredients) => _$this._ingredients = ingredients;

  String? _nutritions;
  String? get nutritions => _$this._nutritions;
  set nutritions(String? nutritions) => _$this._nutritions = nutritions;

  String? _novagroup;
  String? get novagroup => _$this._novagroup;
  set novagroup(String? novagroup) => _$this._novagroup = novagroup;

  String? _ecoscore;
  String? get ecoscore => _$this._ecoscore;
  set ecoscore(String? ecoscore) => _$this._ecoscore = ecoscore;

  String? _displayName;
  String? get displayName => _$this._displayName;
  set displayName(String? displayName) => _$this._displayName = displayName;

  double? _price;
  double? get price => _$this._price;
  set price(double? price) => _$this._price = price;

  int? _departement;
  int? get departement => _$this._departement;
  set departement(int? departement) => _$this._departement = departement;

  String? _userPhoto;
  String? get userPhoto => _$this._userPhoto;
  set userPhoto(String? userPhoto) => _$this._userPhoto = userPhoto;

  int? _sellingQuantity;
  int? get sellingQuantity => _$this._sellingQuantity;
  set sellingQuantity(int? sellingQuantity) =>
      _$this._sellingQuantity = sellingQuantity;

  bool? _hasBarcode;
  bool? get hasBarcode => _$this._hasBarcode;
  set hasBarcode(bool? hasBarcode) => _$this._hasBarcode = hasBarcode;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ProductCollectionRecordBuilder() {
    ProductCollectionRecord._initializeBuilder(this);
  }

  ProductCollectionRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _expirationDate = $v.expirationDate;
      _photo = $v.photo;
      _nutriScore = $v.nutriScore;
      _addedTime = $v.addedTime;
      _isFavorite = $v.isFavorite;
      _weightVolume = $v.weightVolume;
      _isVisible = $v.isVisible;
      _userEmail = $v.userEmail;
      _categorie = $v.categorie;
      _alerts = $v.alerts;
      _initialQuantity = $v.initialQuantity;
      _remainingQuantity = $v.remainingQuantity;
      _id = $v.id;
      _ingredients = $v.ingredients;
      _nutritions = $v.nutritions;
      _novagroup = $v.novagroup;
      _ecoscore = $v.ecoscore;
      _displayName = $v.displayName;
      _price = $v.price;
      _departement = $v.departement;
      _userPhoto = $v.userPhoto;
      _sellingQuantity = $v.sellingQuantity;
      _hasBarcode = $v.hasBarcode;
      _description = $v.description;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProductCollectionRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ProductCollectionRecord;
  }

  @override
  void update(void Function(ProductCollectionRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProductCollectionRecord build() => _build();

  _$ProductCollectionRecord _build() {
    final _$result = _$v ??
        new _$ProductCollectionRecord._(
            name: name,
            expirationDate: expirationDate,
            photo: photo,
            nutriScore: nutriScore,
            addedTime: addedTime,
            isFavorite: isFavorite,
            weightVolume: weightVolume,
            isVisible: isVisible,
            userEmail: userEmail,
            categorie: categorie,
            alerts: alerts,
            initialQuantity: initialQuantity,
            remainingQuantity: remainingQuantity,
            id: id,
            ingredients: ingredients,
            nutritions: nutritions,
            novagroup: novagroup,
            ecoscore: ecoscore,
            displayName: displayName,
            price: price,
            departement: departement,
            userPhoto: userPhoto,
            sellingQuantity: sellingQuantity,
            hasBarcode: hasBarcode,
            description: description,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
