// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'toggle_struct.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ToggleStruct> _$toggleStructSerializer =
    new _$ToggleStructSerializer();

class _$ToggleStructSerializer implements StructuredSerializer<ToggleStruct> {
  @override
  final Iterable<Type> types = const [ToggleStruct, _$ToggleStruct];
  @override
  final String wireName = 'ToggleStruct';

  @override
  Iterable<Object?> serialize(Serializers serializers, ToggleStruct object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'firestoreUtilData',
      serializers.serialize(object.firestoreUtilData,
          specifiedType: const FullType(FirestoreUtilData)),
    ];
    Object? value;
    value = object.switchListTileValue;
    if (value != null) {
      result
        ..add('switchListTileValue')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  ToggleStruct deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ToggleStructBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'switchListTileValue':
          result.switchListTileValue = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'firestoreUtilData':
          result.firestoreUtilData = serializers.deserialize(value,
                  specifiedType: const FullType(FirestoreUtilData))!
              as FirestoreUtilData;
          break;
      }
    }

    return result.build();
  }
}

class _$ToggleStruct extends ToggleStruct {
  @override
  final bool? switchListTileValue;
  @override
  final FirestoreUtilData firestoreUtilData;

  factory _$ToggleStruct([void Function(ToggleStructBuilder)? updates]) =>
      (new ToggleStructBuilder()..update(updates))._build();

  _$ToggleStruct._({this.switchListTileValue, required this.firestoreUtilData})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        firestoreUtilData, r'ToggleStruct', 'firestoreUtilData');
  }

  @override
  ToggleStruct rebuild(void Function(ToggleStructBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ToggleStructBuilder toBuilder() => new ToggleStructBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ToggleStruct &&
        switchListTileValue == other.switchListTileValue &&
        firestoreUtilData == other.firestoreUtilData;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc(0, switchListTileValue.hashCode), firestoreUtilData.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ToggleStruct')
          ..add('switchListTileValue', switchListTileValue)
          ..add('firestoreUtilData', firestoreUtilData))
        .toString();
  }
}

class ToggleStructBuilder
    implements Builder<ToggleStruct, ToggleStructBuilder> {
  _$ToggleStruct? _$v;

  bool? _switchListTileValue;
  bool? get switchListTileValue => _$this._switchListTileValue;
  set switchListTileValue(bool? switchListTileValue) =>
      _$this._switchListTileValue = switchListTileValue;

  FirestoreUtilData? _firestoreUtilData;
  FirestoreUtilData? get firestoreUtilData => _$this._firestoreUtilData;
  set firestoreUtilData(FirestoreUtilData? firestoreUtilData) =>
      _$this._firestoreUtilData = firestoreUtilData;

  ToggleStructBuilder() {
    ToggleStruct._initializeBuilder(this);
  }

  ToggleStructBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _switchListTileValue = $v.switchListTileValue;
      _firestoreUtilData = $v.firestoreUtilData;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ToggleStruct other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ToggleStruct;
  }

  @override
  void update(void Function(ToggleStructBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ToggleStruct build() => _build();

  _$ToggleStruct _build() {
    final _$result = _$v ??
        new _$ToggleStruct._(
            switchListTileValue: switchListTileValue,
            firestoreUtilData: BuiltValueNullFieldError.checkNotNull(
                firestoreUtilData, r'ToggleStruct', 'firestoreUtilData'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
