import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:local_auth/local_auth.dart';
import 'login_model.dart';
export 'login_model.dart';

class LoginWidget extends StatefulWidget {
  const LoginWidget({super.key});

  static String routeName = 'login';
  static String routePath = '/login';

  @override
  State<LoginWidget> createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget>
    with TickerProviderStateMixin {
  late LoginModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LoginModel());

    _model.emailAddressTextController ??= TextEditingController();
    _model.emailAddressFocusNode ??= FocusNode();

    _model.passwordTextController ??= TextEditingController();
    _model.passwordFocusNode ??= FocusNode();

    animationsMap.addAll({
      'textOnPageLoadAnimation': AnimationInfo(
        loop: true,
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(1.0, 1.0),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
      'columnOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 300.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 300.0.ms,
            duration: 400.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 300.0.ms,
            duration: 400.0.ms,
            begin: Offset(0.0, 20.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0xFFFFFEFE),
        body: SafeArea(
          top: true,
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(24.0, 40.0, 24.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 16.0, 0.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(
                          'assets/images/fingerprint-scan.gif',
                          width: 110.0,
                          height: 170.0,
                          fit: BoxFit.contain,
                          alignment: Alignment(0.0, 0.0),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 32.0, 0.0, 16.0),
                      child: Text(
                        'Login to your account',
                        style:
                            FlutterFlowTheme.of(context).headlineSmall.override(
                                  fontFamily: 'Lobster',
                                  color: Color(0xFF4C12C5),
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.bold,
                                ),
                      ).animateOnPageLoad(
                          animationsMap['textOnPageLoadAnimation']!),
                    ),
                  ],
                ),
                Align(
                  alignment: AlignmentDirectional(0.0, -1.0),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        if (responsiveVisibility(
                          context: context,
                          phone: false,
                          tablet: false,
                        ))
                          Container(
                            width: 230.0,
                            height: 16.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                            ),
                          ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 16.0),
                                  child: Container(
                                    width: double.infinity,
                                    child: TextFormField(
                                      controller:
                                          _model.emailAddressTextController,
                                      focusNode: _model.emailAddressFocusNode,
                                      autofocus: true,
                                      autofillHints: [AutofillHints.email],
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        isDense: true,
                                        labelText: 'Email',
                                        labelStyle: FlutterFlowTheme.of(context)
                                            .titleMedium
                                            .override(
                                              fontFamily: 'Inter Tight',
                                              color: Color(0xD157636C),
                                              fontSize: 14.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00E0E3E7),
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(24.0),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(24.0),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(24.0),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(24.0),
                                        ),
                                        filled: true,
                                        fillColor: Color(0xFFF6F6F6),
                                        contentPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                64.0, 24.0, 24.0, 24.0),
                                        prefixIcon: Icon(
                                          Icons.mail_rounded,
                                          color: Color(0xFF9B9B9C),
                                        ),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .titleMedium
                                          .override(
                                            fontFamily: 'Inter Tight',
                                            letterSpacing: 0.0,
                                          ),
                                      textAlign: TextAlign.start,
                                      keyboardType: TextInputType.emailAddress,
                                      validator: _model
                                          .emailAddressTextControllerValidator
                                          .asValidator(context),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 16.0),
                                  child: Container(
                                    width: double.infinity,
                                    child: TextFormField(
                                      controller: _model.passwordTextController,
                                      focusNode: _model.passwordFocusNode,
                                      autofocus: true,
                                      autofillHints: [AutofillHints.password],
                                      obscureText: !_model.passwordVisibility,
                                      decoration: InputDecoration(
                                        isDense: true,
                                        labelText: 'Password',
                                        labelStyle: FlutterFlowTheme.of(context)
                                            .titleMedium
                                            .override(
                                              fontFamily: 'Inter Tight',
                                              color: Color(0xD157636C),
                                              fontSize: 14.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00E0E3E7),
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(24.0),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(24.0),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(24.0),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(24.0),
                                        ),
                                        filled: true,
                                        fillColor: Color(0xFFF6F6F6),
                                        contentPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                64.0, 24.0, 24.0, 24.0),
                                        prefixIcon: Icon(
                                          Icons.lock,
                                          color: Color(0xFF9B9B9C),
                                        ),
                                        suffixIcon: InkWell(
                                          onTap: () => safeSetState(
                                            () => _model.passwordVisibility =
                                                !_model.passwordVisibility,
                                          ),
                                          focusNode:
                                              FocusNode(skipTraversal: true),
                                          child: Icon(
                                            _model.passwordVisibility
                                                ? Icons.visibility_outlined
                                                : Icons.visibility_off_outlined,
                                            color: Color(0xFF757575),
                                            size: 22.0,
                                          ),
                                        ),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .titleMedium
                                          .override(
                                            fontFamily: 'Inter Tight',
                                            letterSpacing: 0.0,
                                          ),
                                      textAlign: TextAlign.start,
                                      keyboardType: TextInputType.emailAddress,
                                      validator: _model
                                          .passwordTextControllerValidator
                                          .asValidator(context),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Theme(
                                  data: ThemeData(
                                    checkboxTheme: CheckboxThemeData(
                                      visualDensity: VisualDensity.compact,
                                      materialTapTargetSize:
                                          MaterialTapTargetSize.shrinkWrap,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(6.0),
                                      ),
                                    ),
                                    unselectedWidgetColor: Color(0xFF746DF7),
                                  ),
                                  child: Checkbox(
                                    value: _model.checkboxValue ??= false,
                                    onChanged: (newValue) async {
                                      safeSetState(() =>
                                          _model.checkboxValue = newValue!);
                                    },
                                    side: BorderSide(
                                      width: 2,
                                      color: Color(0xFF746DF7),
                                    ),
                                    activeColor:
                                        FlutterFlowTheme.of(context).primary,
                                    checkColor:
                                        FlutterFlowTheme.of(context).info,
                                  ),
                                ),
                                Text(
                                  'remember me',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Inter',
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ).animateOnPageLoad(
                      animationsMap['columnOnPageLoadAnimation']!),
                ),
                Container(
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  height: 72.0,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Color(0xFF1A0D36), Color(0xFF332B42)],
                      stops: [0.0, 1.0],
                      begin: AlignmentDirectional(0.28, -1.0),
                      end: AlignmentDirectional(-0.28, 1.0),
                    ),
                    borderRadius: BorderRadius.circular(24.0),
                  ),
                  child: FFButtonWidget(
                    onPressed: () async {
                      context.pushNamed(
                        HomePageWidget.routeName,
                        extra: <String, dynamic>{
                          kTransitionInfoKey: TransitionInfo(
                            hasTransition: true,
                            transitionType: PageTransitionType.leftToRight,
                            duration: Duration(milliseconds: 1000),
                          ),
                        },
                      );
                    },
                    text: 'Login',
                    options: FFButtonOptions(
                      width: MediaQuery.sizeOf(context).width * 1.0,
                      height: 72.0,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: Color(0x001A0D36),
                      textStyle:
                          FlutterFlowTheme.of(context).titleMedium.override(
                                fontFamily: 'Inter Tight',
                                color: Color(0xFFE91AB2),
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.bold,
                              ),
                      elevation: 0.0,
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(24.0),
                    ),
                  ),
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          final _localAuth = LocalAuthentication();
                          bool _isBiometricSupported =
                              await _localAuth.isDeviceSupported();

                          if (_isBiometricSupported) {
                            try {
                              _model.biometrics = await _localAuth.authenticate(
                                  localizedReason:
                                      'Verify with your fingerprint to proceed to next page!');
                            } on PlatformException {
                              _model.biometrics = false;
                            }
                            safeSetState(() {});
                          }

                          if (_model.biometrics) {
                            context.pushNamed(
                              HomePageWidget.routeName,
                              extra: <String, dynamic>{
                                kTransitionInfoKey: TransitionInfo(
                                  hasTransition: true,
                                  transitionType:
                                      PageTransitionType.bottomToTop,
                                  duration: Duration(milliseconds: 2000),
                                ),
                              },
                            );
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  'Access Denied!',
                                  style: GoogleFonts.getFont(
                                    'Lobster',
                                    color: Color(0xFFF0092B),
                                  ),
                                ),
                                duration: Duration(milliseconds: 4000),
                                backgroundColor:
                                    FlutterFlowTheme.of(context).secondary,
                              ),
                            );
                          }

                          safeSetState(() {});
                        },
                        child: Icon(
                          Icons.fingerprint_rounded,
                          color: Color(0xFF13C7C7),
                          size: 60.0,
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 64.0, 0.0, 0.0),
                      child: RichText(
                        textScaler: MediaQuery.of(context).textScaler,
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'Don’t  have account ? ',
                              style: TextStyle(),
                            ),
                            TextSpan(
                              text: 'Register',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Inter',
                                    color: Color(0xFF746DF7),
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                            )
                          ],
                          style:
                              FlutterFlowTheme.of(context).bodyLarge.override(
                                    fontFamily: 'Inter',
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ),
                    ),
                  ],
                ),
              ].divide(SizedBox(height: 32.0)),
            ),
          ),
        ),
      ),
    );
  }
}
