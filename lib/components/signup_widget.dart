import '../auth/auth_util.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SignupWidget extends StatefulWidget {
  const SignupWidget({Key? key}) : super(key: key);

  @override
  _SignupWidgetState createState() => _SignupWidgetState();
}

class _SignupWidgetState extends State<SignupWidget> {
  TextEditingController? confirmPasswordTextController;
  late bool passwordVisibility2;
  TextEditingController? passwordTextController;
  late bool passwordVisibility1;
  TextEditingController? emailnputController;
  TextEditingController? nameInputController;

  @override
  void initState() {
    super.initState();
    confirmPasswordTextController = TextEditingController();
    passwordVisibility2 = false;
    passwordTextController = TextEditingController();
    passwordVisibility1 = false;
    emailnputController = TextEditingController();
    nameInputController = TextEditingController();
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    confirmPasswordTextController?.dispose();
    passwordTextController?.dispose();
    emailnputController?.dispose();
    nameInputController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(0, 33, 0, 0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            if (FFAppState().SignupStep == 1)
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  TextFormField(
                    controller: nameInputController,
                    obscureText: false,
                    decoration: InputDecoration(
                      hintText: 'Hi 👋 what’s your name?',
                      hintStyle: FlutterFlowTheme.of(context).bodyText2,
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1,
                        ),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(4.0),
                          topRight: Radius.circular(4.0),
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1,
                        ),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(4.0),
                          topRight: Radius.circular(4.0),
                        ),
                      ),
                      errorBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1,
                        ),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(4.0),
                          topRight: Radius.circular(4.0),
                        ),
                      ),
                      focusedErrorBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1,
                        ),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(4.0),
                          topRight: Radius.circular(4.0),
                        ),
                      ),
                    ),
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Outfit',
                          fontSize: 28,
                        ),
                    textAlign: TextAlign.center,
                  ),
                  Divider(
                    thickness: 1,
                    color: FlutterFlowTheme.of(context).primaryText,
                  ),
                ],
              ),
            if (FFAppState().SignupStep == 2)
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  TextFormField(
                    controller: emailnputController,
                    obscureText: false,
                    decoration: InputDecoration(
                      hintText: 'enter your email',
                      hintStyle: FlutterFlowTheme.of(context).bodyText2,
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1,
                        ),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(4.0),
                          topRight: Radius.circular(4.0),
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1,
                        ),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(4.0),
                          topRight: Radius.circular(4.0),
                        ),
                      ),
                      errorBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1,
                        ),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(4.0),
                          topRight: Radius.circular(4.0),
                        ),
                      ),
                      focusedErrorBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1,
                        ),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(4.0),
                          topRight: Radius.circular(4.0),
                        ),
                      ),
                    ),
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Outfit',
                          fontSize: 28,
                        ),
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.emailAddress,
                  ),
                  Divider(
                    thickness: 1,
                    color: FlutterFlowTheme.of(context).primaryText,
                  ),
                ],
              ),
            if (FFAppState().SignupStep == 3)
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  TextFormField(
                    controller: passwordTextController,
                    obscureText: !passwordVisibility1,
                    decoration: InputDecoration(
                      hintText: 'choose your password',
                      hintStyle: FlutterFlowTheme.of(context).bodyText2,
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1,
                        ),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(4.0),
                          topRight: Radius.circular(4.0),
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1,
                        ),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(4.0),
                          topRight: Radius.circular(4.0),
                        ),
                      ),
                      errorBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1,
                        ),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(4.0),
                          topRight: Radius.circular(4.0),
                        ),
                      ),
                      focusedErrorBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1,
                        ),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(4.0),
                          topRight: Radius.circular(4.0),
                        ),
                      ),
                      suffixIcon: InkWell(
                        onTap: () => setState(
                          () => passwordVisibility1 = !passwordVisibility1,
                        ),
                        focusNode: FocusNode(skipTraversal: true),
                        child: Icon(
                          passwordVisibility1
                              ? Icons.visibility_outlined
                              : Icons.visibility_off_outlined,
                          color: Color(0xFF757575),
                          size: 20,
                        ),
                      ),
                    ),
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Outfit',
                          fontSize: 28,
                        ),
                    textAlign: TextAlign.center,
                  ),
                  Divider(
                    thickness: 1,
                    color: FlutterFlowTheme.of(context).primaryText,
                  ),
                  TextFormField(
                    controller: confirmPasswordTextController,
                    obscureText: !passwordVisibility2,
                    decoration: InputDecoration(
                      hintText: 'confirm your pasword',
                      hintStyle: FlutterFlowTheme.of(context).bodyText2,
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1,
                        ),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(4.0),
                          topRight: Radius.circular(4.0),
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1,
                        ),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(4.0),
                          topRight: Radius.circular(4.0),
                        ),
                      ),
                      errorBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1,
                        ),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(4.0),
                          topRight: Radius.circular(4.0),
                        ),
                      ),
                      focusedErrorBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1,
                        ),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(4.0),
                          topRight: Radius.circular(4.0),
                        ),
                      ),
                      suffixIcon: InkWell(
                        onTap: () => setState(
                          () => passwordVisibility2 = !passwordVisibility2,
                        ),
                        focusNode: FocusNode(skipTraversal: true),
                        child: Icon(
                          passwordVisibility2
                              ? Icons.visibility_outlined
                              : Icons.visibility_off_outlined,
                          color: Color(0xFF757575),
                          size: 20,
                        ),
                      ),
                    ),
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Outfit',
                          fontSize: 28,
                        ),
                    textAlign: TextAlign.center,
                  ),
                  Divider(
                    thickness: 1,
                    color: FlutterFlowTheme.of(context).primaryText,
                  ),
                ],
              ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
              child: FFButtonWidget(
                onPressed: () async {
                  if (FFAppState().SignupStep == 1) {
                    FFAppState().SurveyStepNumber =
                        FFAppState().SurveyStepNumber + 1;
                  } else {
                    if (FFAppState().SignupStep == 2) {
                      FFAppState().SurveyStepNumber =
                          FFAppState().SurveyStepNumber + 1;
                    } else {
                      if (FFAppState().SignupStep == 3) {
                        GoRouter.of(context).prepareAuthEvent();
                        if (passwordTextController?.text !=
                            confirmPasswordTextController?.text) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                'Passwords don\'t match!',
                              ),
                            ),
                          );
                          return;
                        }

                        final user = await createAccountWithEmail(
                          context,
                          emailnputController!.text,
                          passwordTextController!.text,
                        );
                        if (user == null) {
                          return;
                        }
                      }
                    }
                  }

                  context.goNamedAuth('pageStation', mounted);
                },
                text: 'Continue',
                icon: Icon(
                  Icons.assistant_navigation,
                  size: 15,
                ),
                options: FFButtonOptions(
                  width: 130,
                  height: 40,
                  color: FlutterFlowTheme.of(context).primaryColor,
                  textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                        fontFamily: 'Outfit',
                        color: Colors.white,
                      ),
                  borderSide: BorderSide(
                    color: Colors.transparent,
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
