// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tweets_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TweetsRecord> _$tweetsRecordSerializer =
    new _$TweetsRecordSerializer();

class _$TweetsRecordSerializer implements StructuredSerializer<TweetsRecord> {
  @override
  final Iterable<Type> types = const [TweetsRecord, _$TweetsRecord];
  @override
  final String wireName = 'TweetsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, TweetsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.content;
    if (value != null) {
      result
        ..add('content')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.tweetedBy;
    if (value != null) {
      result
        ..add('tweeted_by')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.likedBy;
    if (value != null) {
      result
        ..add('liked_by')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  DocumentReference, const [const FullType.nullable(Object)])
            ])));
    }
    value = object.reTweetedBy;
    if (value != null) {
      result
        ..add('re_tweeted_by')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  DocumentReference, const [const FullType.nullable(Object)])
            ])));
    }
    value = object.createdBy;
    if (value != null) {
      result
        ..add('created_by')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.updatedBy;
    if (value != null) {
      result
        ..add('updated_by')
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
  TweetsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TweetsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'content':
          result.content = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'tweeted_by':
          result.tweetedBy = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'liked_by':
          result.likedBy.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType.nullable(Object)])
              ]))! as BuiltList<Object?>);
          break;
        case 're_tweeted_by':
          result.reTweetedBy.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType.nullable(Object)])
              ]))! as BuiltList<Object?>);
          break;
        case 'created_by':
          result.createdBy = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'updated_by':
          result.updatedBy = serializers.deserialize(value,
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

class _$TweetsRecord extends TweetsRecord {
  @override
  final String? content;
  @override
  final DocumentReference<Object?>? tweetedBy;
  @override
  final BuiltList<DocumentReference<Object?>>? likedBy;
  @override
  final BuiltList<DocumentReference<Object?>>? reTweetedBy;
  @override
  final DateTime? createdBy;
  @override
  final DateTime? updatedBy;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$TweetsRecord([void Function(TweetsRecordBuilder)? updates]) =>
      (new TweetsRecordBuilder()..update(updates))._build();

  _$TweetsRecord._(
      {this.content,
      this.tweetedBy,
      this.likedBy,
      this.reTweetedBy,
      this.createdBy,
      this.updatedBy,
      this.ffRef})
      : super._();

  @override
  TweetsRecord rebuild(void Function(TweetsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TweetsRecordBuilder toBuilder() => new TweetsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TweetsRecord &&
        content == other.content &&
        tweetedBy == other.tweetedBy &&
        likedBy == other.likedBy &&
        reTweetedBy == other.reTweetedBy &&
        createdBy == other.createdBy &&
        updatedBy == other.updatedBy &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, content.hashCode), tweetedBy.hashCode),
                        likedBy.hashCode),
                    reTweetedBy.hashCode),
                createdBy.hashCode),
            updatedBy.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TweetsRecord')
          ..add('content', content)
          ..add('tweetedBy', tweetedBy)
          ..add('likedBy', likedBy)
          ..add('reTweetedBy', reTweetedBy)
          ..add('createdBy', createdBy)
          ..add('updatedBy', updatedBy)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class TweetsRecordBuilder
    implements Builder<TweetsRecord, TweetsRecordBuilder> {
  _$TweetsRecord? _$v;

  String? _content;
  String? get content => _$this._content;
  set content(String? content) => _$this._content = content;

  DocumentReference<Object?>? _tweetedBy;
  DocumentReference<Object?>? get tweetedBy => _$this._tweetedBy;
  set tweetedBy(DocumentReference<Object?>? tweetedBy) =>
      _$this._tweetedBy = tweetedBy;

  ListBuilder<DocumentReference<Object?>>? _likedBy;
  ListBuilder<DocumentReference<Object?>> get likedBy =>
      _$this._likedBy ??= new ListBuilder<DocumentReference<Object?>>();
  set likedBy(ListBuilder<DocumentReference<Object?>>? likedBy) =>
      _$this._likedBy = likedBy;

  ListBuilder<DocumentReference<Object?>>? _reTweetedBy;
  ListBuilder<DocumentReference<Object?>> get reTweetedBy =>
      _$this._reTweetedBy ??= new ListBuilder<DocumentReference<Object?>>();
  set reTweetedBy(ListBuilder<DocumentReference<Object?>>? reTweetedBy) =>
      _$this._reTweetedBy = reTweetedBy;

  DateTime? _createdBy;
  DateTime? get createdBy => _$this._createdBy;
  set createdBy(DateTime? createdBy) => _$this._createdBy = createdBy;

  DateTime? _updatedBy;
  DateTime? get updatedBy => _$this._updatedBy;
  set updatedBy(DateTime? updatedBy) => _$this._updatedBy = updatedBy;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  TweetsRecordBuilder() {
    TweetsRecord._initializeBuilder(this);
  }

  TweetsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _content = $v.content;
      _tweetedBy = $v.tweetedBy;
      _likedBy = $v.likedBy?.toBuilder();
      _reTweetedBy = $v.reTweetedBy?.toBuilder();
      _createdBy = $v.createdBy;
      _updatedBy = $v.updatedBy;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TweetsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TweetsRecord;
  }

  @override
  void update(void Function(TweetsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TweetsRecord build() => _build();

  _$TweetsRecord _build() {
    _$TweetsRecord _$result;
    try {
      _$result = _$v ??
          new _$TweetsRecord._(
              content: content,
              tweetedBy: tweetedBy,
              likedBy: _likedBy?.build(),
              reTweetedBy: _reTweetedBy?.build(),
              createdBy: createdBy,
              updatedBy: updatedBy,
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'likedBy';
        _likedBy?.build();
        _$failedField = 'reTweetedBy';
        _reTweetedBy?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'TweetsRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
