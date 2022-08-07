// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UsersRecord> _$usersRecordSerializer = new _$UsersRecordSerializer();

class _$UsersRecordSerializer implements StructuredSerializer<UsersRecord> {
  @override
  final Iterable<Type> types = const [UsersRecord, _$UsersRecord];
  @override
  final String wireName = 'UsersRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, UsersRecord object,
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
    value = object.createdTime;
    if (value != null) {
      result
        ..add('created_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.phoneNumber;
    if (value != null) {
      result
        ..add('phone_number')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.isTNCChecked;
    if (value != null) {
      result
        ..add('isTNCChecked')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.numberOfFollowers;
    if (value != null) {
      result
        ..add('number_of_followers')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.wallPicture;
    if (value != null) {
      result
        ..add('wall_picture')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.tips;
    if (value != null) {
      result
        ..add('tips')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.bio;
    if (value != null) {
      result
        ..add('bio')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.websiteLink;
    if (value != null) {
      result
        ..add('website_link')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.location;
    if (value != null) {
      result
        ..add('location')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.dobTimeStamp;
    if (value != null) {
      result
        ..add('dobTimeStamp')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
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
  UsersRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UsersRecordBuilder();

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
        case 'photo_url':
          result.photoUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'created_time':
          result.createdTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'phone_number':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'isTNCChecked':
          result.isTNCChecked = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'number_of_followers':
          result.numberOfFollowers = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'wall_picture':
          result.wallPicture = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'tips':
          result.tips = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'bio':
          result.bio = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'website_link':
          result.websiteLink = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'location':
          result.location = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'dobTimeStamp':
          result.dobTimeStamp = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
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

class _$UsersRecord extends UsersRecord {
  @override
  final String? email;
  @override
  final String? displayName;
  @override
  final String? photoUrl;
  @override
  final String? uid;
  @override
  final DateTime? createdTime;
  @override
  final String? phoneNumber;
  @override
  final bool? isTNCChecked;
  @override
  final int? numberOfFollowers;
  @override
  final String? wallPicture;
  @override
  final bool? tips;
  @override
  final String? bio;
  @override
  final String? websiteLink;
  @override
  final String? location;
  @override
  final DateTime? dobTimeStamp;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$UsersRecord([void Function(UsersRecordBuilder)? updates]) =>
      (new UsersRecordBuilder()..update(updates))._build();

  _$UsersRecord._(
      {this.email,
      this.displayName,
      this.photoUrl,
      this.uid,
      this.createdTime,
      this.phoneNumber,
      this.isTNCChecked,
      this.numberOfFollowers,
      this.wallPicture,
      this.tips,
      this.bio,
      this.websiteLink,
      this.location,
      this.dobTimeStamp,
      this.ffRef})
      : super._();

  @override
  UsersRecord rebuild(void Function(UsersRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UsersRecordBuilder toBuilder() => new UsersRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UsersRecord &&
        email == other.email &&
        displayName == other.displayName &&
        photoUrl == other.photoUrl &&
        uid == other.uid &&
        createdTime == other.createdTime &&
        phoneNumber == other.phoneNumber &&
        isTNCChecked == other.isTNCChecked &&
        numberOfFollowers == other.numberOfFollowers &&
        wallPicture == other.wallPicture &&
        tips == other.tips &&
        bio == other.bio &&
        websiteLink == other.websiteLink &&
        location == other.location &&
        dobTimeStamp == other.dobTimeStamp &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(0,
                                                                email.hashCode),
                                                            displayName
                                                                .hashCode),
                                                        photoUrl.hashCode),
                                                    uid.hashCode),
                                                createdTime.hashCode),
                                            phoneNumber.hashCode),
                                        isTNCChecked.hashCode),
                                    numberOfFollowers.hashCode),
                                wallPicture.hashCode),
                            tips.hashCode),
                        bio.hashCode),
                    websiteLink.hashCode),
                location.hashCode),
            dobTimeStamp.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UsersRecord')
          ..add('email', email)
          ..add('displayName', displayName)
          ..add('photoUrl', photoUrl)
          ..add('uid', uid)
          ..add('createdTime', createdTime)
          ..add('phoneNumber', phoneNumber)
          ..add('isTNCChecked', isTNCChecked)
          ..add('numberOfFollowers', numberOfFollowers)
          ..add('wallPicture', wallPicture)
          ..add('tips', tips)
          ..add('bio', bio)
          ..add('websiteLink', websiteLink)
          ..add('location', location)
          ..add('dobTimeStamp', dobTimeStamp)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class UsersRecordBuilder implements Builder<UsersRecord, UsersRecordBuilder> {
  _$UsersRecord? _$v;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _displayName;
  String? get displayName => _$this._displayName;
  set displayName(String? displayName) => _$this._displayName = displayName;

  String? _photoUrl;
  String? get photoUrl => _$this._photoUrl;
  set photoUrl(String? photoUrl) => _$this._photoUrl = photoUrl;

  String? _uid;
  String? get uid => _$this._uid;
  set uid(String? uid) => _$this._uid = uid;

  DateTime? _createdTime;
  DateTime? get createdTime => _$this._createdTime;
  set createdTime(DateTime? createdTime) => _$this._createdTime = createdTime;

  String? _phoneNumber;
  String? get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String? phoneNumber) => _$this._phoneNumber = phoneNumber;

  bool? _isTNCChecked;
  bool? get isTNCChecked => _$this._isTNCChecked;
  set isTNCChecked(bool? isTNCChecked) => _$this._isTNCChecked = isTNCChecked;

  int? _numberOfFollowers;
  int? get numberOfFollowers => _$this._numberOfFollowers;
  set numberOfFollowers(int? numberOfFollowers) =>
      _$this._numberOfFollowers = numberOfFollowers;

  String? _wallPicture;
  String? get wallPicture => _$this._wallPicture;
  set wallPicture(String? wallPicture) => _$this._wallPicture = wallPicture;

  bool? _tips;
  bool? get tips => _$this._tips;
  set tips(bool? tips) => _$this._tips = tips;

  String? _bio;
  String? get bio => _$this._bio;
  set bio(String? bio) => _$this._bio = bio;

  String? _websiteLink;
  String? get websiteLink => _$this._websiteLink;
  set websiteLink(String? websiteLink) => _$this._websiteLink = websiteLink;

  String? _location;
  String? get location => _$this._location;
  set location(String? location) => _$this._location = location;

  DateTime? _dobTimeStamp;
  DateTime? get dobTimeStamp => _$this._dobTimeStamp;
  set dobTimeStamp(DateTime? dobTimeStamp) =>
      _$this._dobTimeStamp = dobTimeStamp;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  UsersRecordBuilder() {
    UsersRecord._initializeBuilder(this);
  }

  UsersRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _displayName = $v.displayName;
      _photoUrl = $v.photoUrl;
      _uid = $v.uid;
      _createdTime = $v.createdTime;
      _phoneNumber = $v.phoneNumber;
      _isTNCChecked = $v.isTNCChecked;
      _numberOfFollowers = $v.numberOfFollowers;
      _wallPicture = $v.wallPicture;
      _tips = $v.tips;
      _bio = $v.bio;
      _websiteLink = $v.websiteLink;
      _location = $v.location;
      _dobTimeStamp = $v.dobTimeStamp;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UsersRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UsersRecord;
  }

  @override
  void update(void Function(UsersRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UsersRecord build() => _build();

  _$UsersRecord _build() {
    final _$result = _$v ??
        new _$UsersRecord._(
            email: email,
            displayName: displayName,
            photoUrl: photoUrl,
            uid: uid,
            createdTime: createdTime,
            phoneNumber: phoneNumber,
            isTNCChecked: isTNCChecked,
            numberOfFollowers: numberOfFollowers,
            wallPicture: wallPicture,
            tips: tips,
            bio: bio,
            websiteLink: websiteLink,
            location: location,
            dobTimeStamp: dobTimeStamp,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
