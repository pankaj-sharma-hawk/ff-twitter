// Automatic FlutterFlow imports
import '../../backend/backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '../../flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:flutter/material.dart';

class TypeAheadWidget extends StatefulWidget {
  const TypeAheadWidget({
    Key? key,
    this.width,
    this.height,
    this.cities,
  }) : super(key: key);

  final double? width;
  final double? height;
  final List<String>? cities;

  @override
  _TypeAheadWidgetState createState() => _TypeAheadWidgetState();
}

class _TypeAheadWidgetState extends State<TypeAheadWidget> {
  final TextEditingController _typeAheadController = TextEditingController();
  String? _selectedCity;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: TypeAheadFormField(
      textFieldConfiguration: TextFieldConfiguration(
        decoration: InputDecoration(labelText: 'City'),
        controller: this._typeAheadController,
      ),
      suggestionsCallback: (pattern) {
        //List of Cities
        return getSuggestions(pattern);
      },
      itemBuilder: (context, String suggestion) {
        return ListTile(
          title: Text(suggestion),
        );
      },
      transitionBuilder: (context, suggestionsBox, controller) {
        return suggestionsBox;
      },
      onSuggestionSelected: (String suggestion) {
        _typeAheadController?.text = suggestion;
      },
      validator: (value) => value!.isEmpty ? 'Please select a city' : null,
      onSaved: (value) => this._selectedCity = value,
    ));
  }

  List<String> getSuggestions(String query) {
    List<String> matches = <String>[];
    matches.addAll(this.widget.cities!);

    matches.retainWhere((s) => s.toLowerCase().contains(query.toLowerCase()));
    return matches;
  }
}
