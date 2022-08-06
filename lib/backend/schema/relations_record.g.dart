// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'relations_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<RelationsRecord> _$relationsRecordSerializer =
    new _$RelationsRecordSerializer();

class _$RelationsRecordSerializer
    implements StructuredSerializer<RelationsRecord> {
  @override
  final Iterable<Type> types = const [RelationsRecord, _$RelationsRecord];
  @override
  final String wireName = 'RelationsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, RelationsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.userObject;
    if (value != null) {
      result
        ..add('user_object')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.followedIds;
    if (value != null) {
      result
        ..add('followed_ids')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  DocumentReference, const [const FullType.nullable(Object)])
            ])));
    }
    value = object.followerIds;
    if (value != null) {
      result
        ..add('follower_ids')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  DocumentReference, const [const FullType.nullable(Object)])
            ])));
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
  RelationsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RelationsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'user_object':
          result.userObject = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'followed_ids':
          result.followedIds.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType.nullable(Object)])
              ]))! as BuiltList<Object?>);
          break;
        case 'follower_ids':
          result.followerIds.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType.nullable(Object)])
              ]))! as BuiltList<Object?>);
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

class _$RelationsRecord extends RelationsRecord {
  @override
  final DocumentReference<Object?>? userObject;
  @override
  final BuiltList<DocumentReference<Object?>>? followedIds;
  @override
  final BuiltList<DocumentReference<Object?>>? followerIds;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$RelationsRecord([void Function(RelationsRecordBuilder)? updates]) =>
      (new RelationsRecordBuilder()..update(updates))._build();

  _$RelationsRecord._(
      {this.userObject, this.followedIds, this.followerIds, this.ffRef})
      : super._();

  @override
  RelationsRecord rebuild(void Function(RelationsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RelationsRecordBuilder toBuilder() =>
      new RelationsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RelationsRecord &&
        userObject == other.userObject &&
        followedIds == other.followedIds &&
        followerIds == other.followerIds &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, userObject.hashCode), followedIds.hashCode),
            followerIds.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RelationsRecord')
          ..add('userObject', userObject)
          ..add('followedIds', followedIds)
          ..add('followerIds', followerIds)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class RelationsRecordBuilder
    implements Builder<RelationsRecord, RelationsRecordBuilder> {
  _$RelationsRecord? _$v;

  DocumentReference<Object?>? _userObject;
  DocumentReference<Object?>? get userObject => _$this._userObject;
  set userObject(DocumentReference<Object?>? userObject) =>
      _$this._userObject = userObject;

  ListBuilder<DocumentReference<Object?>>? _followedIds;
  ListBuilder<DocumentReference<Object?>> get followedIds =>
      _$this._followedIds ??= new ListBuilder<DocumentReference<Object?>>();
  set followedIds(ListBuilder<DocumentReference<Object?>>? followedIds) =>
      _$this._followedIds = followedIds;

  ListBuilder<DocumentReference<Object?>>? _followerIds;
  ListBuilder<DocumentReference<Object?>> get followerIds =>
      _$this._followerIds ??= new ListBuilder<DocumentReference<Object?>>();
  set followerIds(ListBuilder<DocumentReference<Object?>>? followerIds) =>
      _$this._followerIds = followerIds;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  RelationsRecordBuilder() {
    RelationsRecord._initializeBuilder(this);
  }

  RelationsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userObject = $v.userObject;
      _followedIds = $v.followedIds?.toBuilder();
      _followerIds = $v.followerIds?.toBuilder();
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RelationsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RelationsRecord;
  }

  @override
  void update(void Function(RelationsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RelationsRecord build() => _build();

  _$RelationsRecord _build() {
    _$RelationsRecord _$result;
    try {
      _$result = _$v ??
          new _$RelationsRecord._(
              userObject: userObject,
              followedIds: _followedIds?.build(),
              followerIds: _followerIds?.build(),
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'followedIds';
        _followedIds?.build();
        _$failedField = 'followerIds';
        _followerIds?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'RelationsRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
