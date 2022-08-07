import '../create_account/create_account_widget.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../sign_up_create_page/sign_up_create_page_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class TNCPageWidget extends StatefulWidget {
  const TNCPageWidget({
    Key? key,
    this.userName,
    this.emailAddress,
    this.dob,
    this.password,
    this.dobTimeStamp,
  }) : super(key: key);

  final String? userName;
  final String? emailAddress;
  final String? dob;
  final String? password;
  final DateTime? dobTimeStamp;

  @override
  _TNCPageWidgetState createState() => _TNCPageWidgetState();
}

class _TNCPageWidgetState extends State<TNCPageWidget> {
  bool? checkboxListTileValue;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).cardBackGround,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FlutterFlowIconButton(
                      borderColor: Colors.transparent,
                      borderRadius: 30,
                      borderWidth: 1,
                      buttonSize: 50,
                      icon: FaIcon(
                        FontAwesomeIcons.arrowLeft,
                        color: FlutterFlowTheme.of(context).primaryText,
                        size: 20,
                      ),
                      onPressed: () async {
                        await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CreateAccountWidget(),
                          ),
                        );
                      },
                    ),
                    FlutterFlowIconButton(
                      borderColor: Colors.transparent,
                      borderRadius: 30,
                      borderWidth: 1,
                      buttonSize: 60,
                      icon: FaIcon(
                        FontAwesomeIcons.twitter,
                        color: FlutterFlowTheme.of(context).secondaryColor,
                        size: 30,
                      ),
                      onPressed: () {
                        print('IconButton pressed ...');
                      },
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(30, 0, 30, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'Customize your experience',
                      style: FlutterFlowTheme.of(context).title3.override(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(30, 30, 30, 30),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Text(
                        'Track where you see Twitter content across the web',
                        style: FlutterFlowTheme.of(context).bodyText1,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(30, 0, 20, 0),
                child: Theme(
                  data: ThemeData(
                    unselectedWidgetColor: Color(0xFF1D9BF0),
                  ),
                  child: CheckboxListTile(
                    value: checkboxListTileValue ??= false,
                    onChanged: (newValue) =>
                        setState(() => checkboxListTileValue = newValue!),
                    title: Text(
                      'Twitter uses this data to personalize your experience. This wb browsing history will never be stored with your name, email, or phone number.',
                      style: FlutterFlowTheme.of(context).subtitle2.override(
                            fontFamily: 'Poppins',
                            color: FlutterFlowTheme.of(context).tertiaryColor,
                            fontSize: 13,
                          ),
                    ),
                    tileColor: FlutterFlowTheme.of(context).cardBackGround,
                    activeColor: Color(0xFF2B08F6),
                    dense: false,
                    controlAffinity: ListTileControlAffinity.trailing,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(70, 10, 30, 30),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Text(
                        'By Signing up, you agree to our Terms, Privacy Policy and cookie use. Twitter may use contact information, including your email address and phone number for purpose outlined in our Privacy Policy. Learn more',
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Poppins',
                              fontSize: 12,
                              fontWeight: FontWeight.normal,
                            ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [],
                ),
              ),
              Container(
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).cardBackGround,
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xB169768F),
                    )
                  ],
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      FFButtonWidget(
                        onPressed: () async {
                          await Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SignUpCreatePageWidget(
                                userName: widget.userName,
                                emailId: widget.emailAddress,
                                dob: widget.dob,
                                isTNC: checkboxListTileValue,
                                password: widget.password,
                                dobTimeStamp: widget.dobTimeStamp,
                              ),
                            ),
                          );
                        },
                        text: 'Next',
                        options: FFButtonOptions(
                          width: 90,
                          height: 50,
                          color: FlutterFlowTheme.of(context).cardBackGround,
                          textStyle: FlutterFlowTheme.of(context)
                              .subtitle2
                              .override(
                                fontFamily: 'Poppins',
                                color:
                                    FlutterFlowTheme.of(context).tertiaryColor,
                              ),
                          borderSide: BorderSide(
                            color: Color(0xFF666666),
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
