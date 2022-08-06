import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'relations_record.g.dart';

abstract class RelationsRecord
    implements Built<RelationsRecord, RelationsRecordBuilder> {
  static Serializer<RelationsRecord> get serializer =>
      _$relationsRecordSerializer;

  @BuiltValueField(wireName: 'user_object')
  DocumentReference? get userObject;

  @BuiltValueField(wireName: 'followed_ids')
  BuiltList<DocumentReference>? get followedIds;

  @BuiltValueField(wireName: 'follower_ids')
  BuiltList<DocumentReference>? get followerIds;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(RelationsRecordBuilder builder) => builder
    ..followedIds = ListBuilder()
    ..followerIds = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('relations');

  static Stream<RelationsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<RelationsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  RelationsRecord._();
  factory RelationsRecord([void Function(RelationsRecordBuilder) updates]) =
      _$RelationsRecord;

  static RelationsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createRelationsRecordData({
  DocumentReference? userObject,
}) {
  final firestoreData = serializers.toFirestore(
    RelationsRecord.serializer,
    RelationsRecord(
      (r) => r
        ..userObject = userObject
        ..followedIds = null
        ..followerIds = null,
    ),
  );

  return firestoreData;
}
