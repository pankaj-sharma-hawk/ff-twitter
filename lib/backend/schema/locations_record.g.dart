// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'locations_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<LocationsRecord> _$locationsRecordSerializer =
    new _$LocationsRecordSerializer();

class _$LocationsRecordSerializer
    implements StructuredSerializer<LocationsRecord> {
  @override
  final Iterable<Type> types = const [LocationsRecord, _$LocationsRecord];
  @override
  final String wireName = 'LocationsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, LocationsRecord object,
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
  LocationsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LocationsRecordBuilder();

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

class _$LocationsRecord extends LocationsRecord {
  @override
  final String? name;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$LocationsRecord([void Function(LocationsRecordBuilder)? updates]) =>
      (new LocationsRecordBuilder()..update(updates))._build();

  _$LocationsRecord._({this.name, this.ffRef}) : super._();

  @override
  LocationsRecord rebuild(void Function(LocationsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LocationsRecordBuilder toBuilder() =>
      new LocationsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LocationsRecord &&
        name == other.name &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, name.hashCode), ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LocationsRecord')
          ..add('name', name)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class LocationsRecordBuilder
    implements Builder<LocationsRecord, LocationsRecordBuilder> {
  _$LocationsRecord? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  LocationsRecordBuilder() {
    LocationsRecord._initializeBuilder(this);
  }

  LocationsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LocationsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LocationsRecord;
  }

  @override
  void update(void Function(LocationsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LocationsRecord build() => _build();

  _$LocationsRecord _build() {
    final _$result = _$v ?? new _$LocationsRecord._(name: name, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
