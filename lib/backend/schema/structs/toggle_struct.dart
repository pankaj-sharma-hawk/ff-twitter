import 'dart:async';

import '../index.dart';
import '../serializers.dart';
import 'package:built_value/built_value.dart';

part 'toggle_struct.g.dart';

abstract class ToggleStruct
    implements Built<ToggleStruct, ToggleStructBuilder> {
  static Serializer<ToggleStruct> get serializer => _$toggleStructSerializer;

  bool? get switchListTileValue;

  /// Utility class for Firestore updates
  FirestoreUtilData get firestoreUtilData;

  static void _initializeBuilder(ToggleStructBuilder builder) => builder
    ..switchListTileValue = false
    ..firestoreUtilData = FirestoreUtilData();

  ToggleStruct._();
  factory ToggleStruct([void Function(ToggleStructBuilder) updates]) =
      _$ToggleStruct;
}

ToggleStruct createToggleStruct({
  bool? switchListTileValue,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ToggleStruct(
      (t) => t
        ..switchListTileValue = switchListTileValue
        ..firestoreUtilData = FirestoreUtilData(
          clearUnsetFields: clearUnsetFields,
          create: create,
          delete: delete,
          fieldValues: fieldValues,
        ),
    );

ToggleStruct? updateToggleStruct(
  ToggleStruct? toggle, {
  bool clearUnsetFields = true,
}) =>
    toggle != null
        ? (toggle.toBuilder()
              ..firestoreUtilData =
                  FirestoreUtilData(clearUnsetFields: clearUnsetFields))
            .build()
        : null;

void addToggleStructData(
  Map<String, dynamic> firestoreData,
  ToggleStruct? toggle,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (toggle == null) {
    return;
  }
  if (toggle.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue && toggle.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = {};
  }
  final toggleData = getToggleFirestoreData(toggle, forFieldValue);
  final nestedData = toggleData.map((k, v) => MapEntry('$fieldName.$k', v));

  final create = toggle.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);

  return;
}

Map<String, dynamic> getToggleFirestoreData(
  ToggleStruct? toggle, [
  bool forFieldValue = false,
]) {
  if (toggle == null) {
    return {};
  }
  final firestoreData =
      serializers.toFirestore(ToggleStruct.serializer, toggle);

  // Add any Firestore field values
  toggle.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getToggleListFirestoreData(
  List<ToggleStruct>? toggles,
) =>
    toggles?.map((t) => getToggleFirestoreData(t, true)).toList() ?? [];
