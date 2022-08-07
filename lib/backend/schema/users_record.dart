import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'users_record.g.dart';

abstract class UsersRecord implements Built<UsersRecord, UsersRecordBuilder> {
  static Serializer<UsersRecord> get serializer => _$usersRecordSerializer;

  String? get email;

  @BuiltValueField(wireName: 'display_name')
  String? get displayName;

  @BuiltValueField(wireName: 'photo_url')
  String? get photoUrl;

  String? get uid;

  @BuiltValueField(wireName: 'created_time')
  DateTime? get createdTime;

  @BuiltValueField(wireName: 'phone_number')
  String? get phoneNumber;

  bool? get isTNCChecked;

  @BuiltValueField(wireName: 'number_of_followers')
  int? get numberOfFollowers;

  @BuiltValueField(wireName: 'wall_picture')
  String? get wallPicture;

  bool? get tips;

  String? get bio;

  @BuiltValueField(wireName: 'website_link')
  String? get websiteLink;

  String? get location;

  DateTime? get dobTimeStamp;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(UsersRecordBuilder builder) => builder
    ..email = ''
    ..displayName = ''
    ..photoUrl = ''
    ..uid = ''
    ..phoneNumber = ''
    ..isTNCChecked = false
    ..numberOfFollowers = 0
    ..wallPicture = ''
    ..tips = false
    ..bio = ''
    ..websiteLink = ''
    ..location = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  UsersRecord._();
  factory UsersRecord([void Function(UsersRecordBuilder) updates]) =
      _$UsersRecord;

  static UsersRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createUsersRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  bool? isTNCChecked,
  int? numberOfFollowers,
  String? wallPicture,
  bool? tips,
  String? bio,
  String? websiteLink,
  String? location,
  DateTime? dobTimeStamp,
}) {
  final firestoreData = serializers.toFirestore(
    UsersRecord.serializer,
    UsersRecord(
      (u) => u
        ..email = email
        ..displayName = displayName
        ..photoUrl = photoUrl
        ..uid = uid
        ..createdTime = createdTime
        ..phoneNumber = phoneNumber
        ..isTNCChecked = isTNCChecked
        ..numberOfFollowers = numberOfFollowers
        ..wallPicture = wallPicture
        ..tips = tips
        ..bio = bio
        ..websiteLink = websiteLink
        ..location = location
        ..dobTimeStamp = dobTimeStamp,
    ),
  );

  return firestoreData;
}
