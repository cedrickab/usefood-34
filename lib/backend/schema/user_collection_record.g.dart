// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_collection_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UserCollectionRecord> _$userCollectionRecordSerializer =
    new _$UserCollectionRecordSerializer();

class _$UserCollectionRecordSerializer
    implements StructuredSerializer<UserCollectionRecord> {
  @override
  final Iterable<Type> types = const [
    UserCollectionRecord,
    _$UserCollectionRecord
  ];
  @override
  final String wireName = 'UserCollectionRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, UserCollectionRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.email;
    if (value != null) {
      result
        ..add('email')
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
    value = object.createdTime;
    if (value != null) {
      result
        ..add('created_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.password;
    if (value != null) {
      result
        ..add('password')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.userScore;
    if (value != null) {
      result
        ..add('user_score')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.isPremium;
    if (value != null) {
      result
        ..add('is_premium')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.photoUrl;
    if (value != null) {
      result
        ..add('photo_url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.uid;
    if (value != null) {
      result
        ..add('uid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.phoneNumber;
    if (value != null) {
      result
        ..add('phone_number')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.holdersNumber;
    if (value != null) {
      result
        ..add('holders_number')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.registredProductCount;
    if (value != null) {
      result
        ..add('registred_product_count')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.expiredProductCount;
    if (value != null) {
      result
        ..add('expired_product_count')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.city;
    if (value != null) {
      result
        ..add('city')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.departement;
    if (value != null) {
      result
        ..add('departement')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
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
  UserCollectionRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UserCollectionRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'display_name':
          result.displayName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'created_time':
          result.createdTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'password':
          result.password = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'user_score':
          result.userScore = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'is_premium':
          result.isPremium = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'photo_url':
          result.photoUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'phone_number':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'holders_number':
          result.holdersNumber = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'registred_product_count':
          result.registredProductCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'expired_product_count':
          result.expiredProductCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'city':
          result.city = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'departement':
          result.departement = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
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

class _$UserCollectionRecord extends UserCollectionRecord {
  @override
  final String? email;
  @override
  final String? displayName;
  @override
  final DateTime? createdTime;
  @override
  final String? password;
  @override
  final String? userScore;
  @override
  final bool? isPremium;
  @override
  final String? photoUrl;
  @override
  final String? uid;
  @override
  final String? phoneNumber;
  @override
  final int? holdersNumber;
  @override
  final int? registredProductCount;
  @override
  final int? expiredProductCount;
  @override
  final String? city;
  @override
  final int? departement;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$UserCollectionRecord(
          [void Function(UserCollectionRecordBuilder)? updates]) =>
      (new UserCollectionRecordBuilder()..update(updates))._build();

  _$UserCollectionRecord._(
      {this.email,
      this.displayName,
      this.createdTime,
      this.password,
      this.userScore,
      this.isPremium,
      this.photoUrl,
      this.uid,
      this.phoneNumber,
      this.holdersNumber,
      this.registredProductCount,
      this.expiredProductCount,
      this.city,
      this.departement,
      this.ffRef})
      : super._();

  @override
  UserCollectionRecord rebuild(
          void Function(UserCollectionRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserCollectionRecordBuilder toBuilder() =>
      new UserCollectionRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserCollectionRecord &&
        email == other.email &&
        displayName == other.displayName &&
        createdTime == other.createdTime &&
        password == other.password &&
        userScore == other.userScore &&
        isPremium == other.isPremium &&
        photoUrl == other.photoUrl &&
        uid == other.uid &&
        phoneNumber == other.phoneNumber &&
        holdersNumber == other.holdersNumber &&
        registredProductCount == other.registredProductCount &&
        expiredProductCount == other.expiredProductCount &&
        city == other.city &&
        departement == other.departement &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, displayName.hashCode);
    _$hash = $jc(_$hash, createdTime.hashCode);
    _$hash = $jc(_$hash, password.hashCode);
    _$hash = $jc(_$hash, userScore.hashCode);
    _$hash = $jc(_$hash, isPremium.hashCode);
    _$hash = $jc(_$hash, photoUrl.hashCode);
    _$hash = $jc(_$hash, uid.hashCode);
    _$hash = $jc(_$hash, phoneNumber.hashCode);
    _$hash = $jc(_$hash, holdersNumber.hashCode);
    _$hash = $jc(_$hash, registredProductCount.hashCode);
    _$hash = $jc(_$hash, expiredProductCount.hashCode);
    _$hash = $jc(_$hash, city.hashCode);
    _$hash = $jc(_$hash, departement.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UserCollectionRecord')
          ..add('email', email)
          ..add('displayName', displayName)
          ..add('createdTime', createdTime)
          ..add('password', password)
          ..add('userScore', userScore)
          ..add('isPremium', isPremium)
          ..add('photoUrl', photoUrl)
          ..add('uid', uid)
          ..add('phoneNumber', phoneNumber)
          ..add('holdersNumber', holdersNumber)
          ..add('registredProductCount', registredProductCount)
          ..add('expiredProductCount', expiredProductCount)
          ..add('city', city)
          ..add('departement', departement)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class UserCollectionRecordBuilder
    implements Builder<UserCollectionRecord, UserCollectionRecordBuilder> {
  _$UserCollectionRecord? _$v;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _displayName;
  String? get displayName => _$this._displayName;
  set displayName(String? displayName) => _$this._displayName = displayName;

  DateTime? _createdTime;
  DateTime? get createdTime => _$this._createdTime;
  set createdTime(DateTime? createdTime) => _$this._createdTime = createdTime;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  String? _userScore;
  String? get userScore => _$this._userScore;
  set userScore(String? userScore) => _$this._userScore = userScore;

  bool? _isPremium;
  bool? get isPremium => _$this._isPremium;
  set isPremium(bool? isPremium) => _$this._isPremium = isPremium;

  String? _photoUrl;
  String? get photoUrl => _$this._photoUrl;
  set photoUrl(String? photoUrl) => _$this._photoUrl = photoUrl;

  String? _uid;
  String? get uid => _$this._uid;
  set uid(String? uid) => _$this._uid = uid;

  String? _phoneNumber;
  String? get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String? phoneNumber) => _$this._phoneNumber = phoneNumber;

  int? _holdersNumber;
  int? get holdersNumber => _$this._holdersNumber;
  set holdersNumber(int? holdersNumber) =>
      _$this._holdersNumber = holdersNumber;

  int? _registredProductCount;
  int? get registredProductCount => _$this._registredProductCount;
  set registredProductCount(int? registredProductCount) =>
      _$this._registredProductCount = registredProductCount;

  int? _expiredProductCount;
  int? get expiredProductCount => _$this._expiredProductCount;
  set expiredProductCount(int? expiredProductCount) =>
      _$this._expiredProductCount = expiredProductCount;

  String? _city;
  String? get city => _$this._city;
  set city(String? city) => _$this._city = city;

  int? _departement;
  int? get departement => _$this._departement;
  set departement(int? departement) => _$this._departement = departement;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  UserCollectionRecordBuilder() {
    UserCollectionRecord._initializeBuilder(this);
  }

  UserCollectionRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _displayName = $v.displayName;
      _createdTime = $v.createdTime;
      _password = $v.password;
      _userScore = $v.userScore;
      _isPremium = $v.isPremium;
      _photoUrl = $v.photoUrl;
      _uid = $v.uid;
      _phoneNumber = $v.phoneNumber;
      _holdersNumber = $v.holdersNumber;
      _registredProductCount = $v.registredProductCount;
      _expiredProductCount = $v.expiredProductCount;
      _city = $v.city;
      _departement = $v.departement;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserCollectionRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UserCollectionRecord;
  }

  @override
  void update(void Function(UserCollectionRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserCollectionRecord build() => _build();

  _$UserCollectionRecord _build() {
    final _$result = _$v ??
        new _$UserCollectionRecord._(
            email: email,
            displayName: displayName,
            createdTime: createdTime,
            password: password,
            userScore: userScore,
            isPremium: isPremium,
            photoUrl: photoUrl,
            uid: uid,
            phoneNumber: phoneNumber,
            holdersNumber: holdersNumber,
            registredProductCount: registredProductCount,
            expiredProductCount: expiredProductCount,
            city: city,
            departement: departement,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
