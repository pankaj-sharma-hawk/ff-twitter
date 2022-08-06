import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'tweets_record.g.dart';

abstract class TweetsRecord
    implements Built<TweetsRecord, TweetsRecordBuilder> {
  static Serializer<TweetsRecord> get serializer => _$tweetsRecordSerializer;

  String? get content;

  @BuiltValueField(wireName: 'tweeted_by')
  DocumentReference? get tweetedBy;

  @BuiltValueField(wireName: 'liked_by')
  BuiltList<DocumentReference>? get likedBy;

  @BuiltValueField(wireName: 're_tweeted_by')
  BuiltList<DocumentReference>? get reTweetedBy;

  @BuiltValueField(wireName: 'created_by')
  DateTime? get createdBy;

  @BuiltValueField(wireName: 'updated_by')
  DateTime? get updatedBy;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(TweetsRecordBuilder builder) => builder
    ..content = ''
    ..likedBy = ListBuilder()
    ..reTweetedBy = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('tweets');

  static Stream<TweetsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<TweetsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  TweetsRecord._();
  factory TweetsRecord([void Function(TweetsRecordBuilder) updates]) =
      _$TweetsRecord;

  static TweetsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createTweetsRecordData({
  String? content,
  DocumentReference? tweetedBy,
  DateTime? createdBy,
  DateTime? updatedBy,
}) {
  final firestoreData = serializers.toFirestore(
    TweetsRecord.serializer,
    TweetsRecord(
      (t) => t
        ..content = content
        ..tweetedBy = tweetedBy
        ..likedBy = null
        ..reTweetedBy = null
        ..createdBy = createdBy
        ..updatedBy = updatedBy,
    ),
  );

  return firestoreData;
}
