import '../flutter_flow/flutter_flow_radio_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DartModeBottomSheetWidget extends StatefulWidget {
  const DartModeBottomSheetWidget({Key? key}) : super(key: key);

  @override
  _DartModeBottomSheetWidgetState createState() =>
      _DartModeBottomSheetWidgetState();
}

class _DartModeBottomSheetWidgetState extends State<DartModeBottomSheetWidget> {
  String? darkModeRadioButtonValue;
  String? darkThemeRadioButtonValue;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(0),
          bottomRight: Radius.circular(0),
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
      ),
      child: Container(
        width: double.infinity,
        height: 390,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).cardBackGround,
          boxShadow: [
            BoxShadow(
              blurRadius: 4,
              color: FlutterFlowTheme.of(context).secondaryBackground,
              offset: Offset(0, 2),
            )
          ],
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(0),
            bottomRight: Radius.circular(0),
            topLeft: Radius.circular(16),
            topRight: Radius.circular(16),
          ),
          border: Border.all(
            color: FlutterFlowTheme.of(context).secondaryBackground,
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
              child: Container(
                width: 50,
                height: 4,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).lineColor,
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    'Dark mode',
                    style: FlutterFlowTheme.of(context).title2.override(
                          fontFamily: 'Poppins',
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                  ),
                ],
              ),
            ),
            Divider(
              height: 1,
              thickness: 1,
              indent: 10,
              endIndent: 10,
              color: Color(0xFFB2ADAD),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: FlutterFlowRadioButton(
                    options: ['On', 'Off', 'Use device Setting'].toList(),
                    initialValue: 'Use device Setting',
                    onChanged: (value) {
                      setState(() => darkModeRadioButtonValue = value);
                    },
                    optionHeight: 40,
                    textStyle: FlutterFlowTheme.of(context).title1.override(
                          fontFamily: 'Poppins',
                          fontSize: 26,
                          fontWeight: FontWeight.w500,
                        ),
                    textPadding: EdgeInsetsDirectional.fromSTEB(0, 0, 40, 0),
                    buttonPosition: RadioButtonPosition.left,
                    direction: Axis.vertical,
                    radioButtonColor: Colors.blue,
                    inactiveRadioButtonColor:
                        FlutterFlowTheme.of(context).secondaryBackground,
                    toggleable: false,
                    horizontalAlignment: WrapAlignment.end,
                    verticalAlignment: WrapCrossAlignment.start,
                  ),
                ),
              ],
            ),
            Divider(
              height: 1,
              thickness: 1,
              indent: 10,
              endIndent: 10,
              color: Color(0xFFB2ADAD),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    'Dark theme',
                    style: FlutterFlowTheme.of(context).title2.override(
                          fontFamily: 'Poppins',
                          color: FlutterFlowTheme.of(context).customColor4,
                        ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 5),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FlutterFlowRadioButton(
                    options: ['Light out', 'Dim'].toList(),
                    initialValue: 'Light out',
                    onChanged: (value) {
                      setState(() => darkThemeRadioButtonValue = value);
                    },
                    optionHeight: 40,
                    textStyle: FlutterFlowTheme.of(context).title1.override(
                          fontFamily: 'Poppins',
                          fontSize: 26,
                          fontWeight: FontWeight.w500,
                        ),
                    textPadding: EdgeInsetsDirectional.fromSTEB(0, 0, 40, 0),
                    buttonPosition: RadioButtonPosition.left,
                    direction: Axis.vertical,
                    radioButtonColor: Colors.blue,
                    inactiveRadioButtonColor:
                        FlutterFlowTheme.of(context).secondaryBackground,
                    toggleable: false,
                    horizontalAlignment: WrapAlignment.end,
                    verticalAlignment: WrapCrossAlignment.start,
                  ),
                ],
              ),
            ),
            Divider(
              height: 1,
              thickness: 1,
              indent: 10,
              endIndent: 10,
              color: Color(0xFFB2ADAD),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
              child: FFButtonWidget(
                onPressed: () async {
                  if (darkModeRadioButtonValue == 'On') {
                    setDarkModeSetting(context, ThemeMode.dark);
                  } else {
                    if (darkModeRadioButtonValue == 'Off') {
                      setDarkModeSetting(context, ThemeMode.light);
                    } else {
                      setDarkModeSetting(context, ThemeMode.system);
                    }
                  }
                },
                text: 'Apply',
                options: FFButtonOptions(
                  width: 230,
                  height: 45,
                  color: FlutterFlowTheme.of(context).primaryBackground,
                  textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                        fontFamily: 'Poppins',
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                  elevation: 2,
                  borderSide: BorderSide(
                    color: Color(0xFFB2ADAD),
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
