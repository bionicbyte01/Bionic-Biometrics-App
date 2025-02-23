import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'home_page_model.dart';
export 'home_page_model.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({super.key});

  static String routeName = 'HomePage';
  static String routePath = '/homePage';

  @override
  State<HomePageWidget> createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget>
    with TickerProviderStateMixin {
  late HomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageModel());

    _model.switchValue1 = true;
    _model.switchValue2 = true;
    animationsMap.addAll({
      'iconButtonOnActionTriggerAnimation': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          RotateEffect(
            curve: Curves.bounceOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'floatingActionButtonOnPageLoadAnimation': AnimationInfo(
        loop: true,
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 0.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'iconOnPageLoadAnimation': AnimationInfo(
        loop: true,
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.bounceOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(1.0, 1.0),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
    });
    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );

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
        backgroundColor: Color(0xFF0C74FF),
        floatingActionButton: FloatingActionButton(
          onPressed: () async {
            await launchUrl(Uri(
              scheme: 'tel',
              path: '0677489845',
            ));
          },
          backgroundColor: Color(0xFFFF9606),
          elevation: 8.0,
          child: Icon(
            Icons.call_rounded,
            color: Color(0xFF900DCC),
            size: 24.0,
          ).animateOnPageLoad(animationsMap['iconOnPageLoadAnimation']!),
        ).animateOnPageLoad(
            animationsMap['floatingActionButtonOnPageLoadAnimation']!),
        drawer: Container(
          width: 260.0,
          child: Drawer(
            elevation: 16.0,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 90.0, 0.0, 0.0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          context.pushNamed(
                            TimerWidget.routeName,
                            extra: <String, dynamic>{
                              kTransitionInfoKey: TransitionInfo(
                                hasTransition: true,
                                transitionType: PageTransitionType.fade,
                                duration: Duration(milliseconds: 0),
                              ),
                            },
                          );
                        },
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  10.0, 0.0, 5.0, 0.0),
                              child: Icon(
                                Icons.timer_rounded,
                                color: Color(0xFFE300A2),
                                size: 34.0,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 7.0, 0.0, 0.0),
                              child: Text(
                                'Timer page',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Lora',
                                      color: Color(0xFFF68708),
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 40.0, 0.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                10.0, 0.0, 5.0, 0.0),
                            child: Icon(
                              Icons.space_dashboard,
                              color: Color(0xFFC000E3),
                              size: 34.0,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 7.0, 0.0, 0.0),
                            child: Text(
                              'Dashboard',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Lora',
                                    color: Color(0xFFF68708),
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 40.0, 0.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                10.0, 0.0, 5.0, 0.0),
                            child: Icon(
                              Icons.star_rate_rounded,
                              color: Color(0xFFDEE300),
                              size: 34.0,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 7.0, 0.0, 0.0),
                            child: Text(
                              'Rate us',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Lobster',
                                    color: Color(0xFFF68708),
                                    fontSize: 18.0,
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 40.0, 0.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                10.0, 0.0, 5.0, 0.0),
                            child: Icon(
                              Icons.settings_rounded,
                              color: Color(0xFF00E34E),
                              size: 34.0,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 7.0, 0.0, 0.0),
                            child: Text(
                              'Settings',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Lora',
                                    color: Color(0xFFF68708),
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 40.0, 0.0, 0.0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          await launchUrl(Uri(
                            scheme: 'tel',
                            path: '0677489845',
                          ));
                        },
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  10.0, 0.0, 5.0, 0.0),
                              child: Icon(
                                Icons.call_sharp,
                                color: Color(0xFFE33F00),
                                size: 34.0,
                              ),
                            ),
                            Text(
                              'Call us',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Lobster Two',
                                    color: Color(0xFFF68708),
                                    fontSize: 20.0,
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(10.0, 40.0, 0.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Switch.adaptive(
                          value: _model.switchValue2!,
                          onChanged: (newValue) async {
                            safeSetState(() => _model.switchValue2 = newValue);
                            if (newValue) {
                              setDarkModeSetting(context, ThemeMode.dark);
                            } else {
                              setDarkModeSetting(context, ThemeMode.light);
                            }
                          },
                          activeColor: FlutterFlowTheme.of(context).primary,
                          activeTrackColor:
                              FlutterFlowTheme.of(context).primary,
                          inactiveTrackColor:
                              FlutterFlowTheme.of(context).alternate,
                          inactiveThumbColor:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: Text(
                            'Light/ Dark mode',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Mukta',
                                  color: Color(0xFF00FDC0),
                                  letterSpacing: 0.0,
                                ),
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
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).accent1,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.menu_open_sharp,
              color: Color(0xFFE9E82B),
              size: 30.0,
            ),
            onPressed: () async {
              scaffoldKey.currentState!.openDrawer();
            },
          ).animateOnActionTrigger(
            animationsMap['iconButtonOnActionTriggerAnimation']!,
          ),
          title: Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Text(
              'Date & Time Picker',
              style: FlutterFlowTheme.of(context).headlineMedium.override(
                    fontFamily: 'Lobster',
                    color: Colors.white,
                    fontSize: 22.0,
                    letterSpacing: 0.0,
                  ),
            ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: Text(
                  'Pick your time ⌚ 👇',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Inter',
                        fontSize: 16.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                child: FFButtonWidget(
                  onPressed: () async {
                    await showModalBottomSheet<bool>(
                        context: context,
                        builder: (context) {
                          final _datePickedCupertinoTheme =
                              CupertinoTheme.of(context);
                          return ScrollConfiguration(
                            behavior: const MaterialScrollBehavior().copyWith(
                              dragDevices: {
                                PointerDeviceKind.mouse,
                                PointerDeviceKind.touch,
                                PointerDeviceKind.stylus,
                                PointerDeviceKind.unknown
                              },
                            ),
                            child: Container(
                              height: MediaQuery.of(context).size.height / 3,
                              width: MediaQuery.of(context).size.width,
                              color: Color(0xFF2FEAD7),
                              child: CupertinoTheme(
                                data: _datePickedCupertinoTheme.copyWith(
                                  textTheme: _datePickedCupertinoTheme.textTheme
                                      .copyWith(
                                    dateTimePickerTextStyle:
                                        FlutterFlowTheme.of(context)
                                            .headlineMedium
                                            .override(
                                              fontFamily: 'Lobster Two',
                                              color: Color(0xFFD825F9),
                                              letterSpacing: 0.0,
                                            ),
                                  ),
                                ),
                                child: CupertinoDatePicker(
                                  mode: CupertinoDatePickerMode.dateAndTime,
                                  minimumDate: DateTime(1900),
                                  initialDateTime: getCurrentTimestamp,
                                  maximumDate: DateTime(2050),
                                  backgroundColor: Color(0xFF2FEAD7),
                                  use24hFormat: false,
                                  onDateTimeChanged: (newDateTime) =>
                                      safeSetState(() {
                                    _model.datePicked = newDateTime;
                                  }),
                                ),
                              ),
                            ),
                          );
                        });
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                          'You picked  👉 :',
                          style: GoogleFonts.getFont(
                            'Lobster',
                            color: Color(0xFF510567),
                            fontSize: 12.0,
                          ),
                        ),
                        duration: Duration(milliseconds: 6250),
                        backgroundColor: FlutterFlowTheme.of(context).secondary,
                      ),
                    );
                  },
                  text: 'Click me!',
                  options: FFButtonOptions(
                    height: 40.0,
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: Color(0xFFEF39C3),
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Lobster Two',
                          color: Color(0xFFDDE930),
                          letterSpacing: 0.0,
                        ),
                    elevation: 0.0,
                    borderRadius: BorderRadius.circular(18.0),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 27.0, 0.0, 0.0),
                child: Switch.adaptive(
                  value: _model.switchValue1!,
                  onChanged: (newValue) async {
                    safeSetState(() => _model.switchValue1 = newValue);
                    if (newValue) {
                      setDarkModeSetting(context, ThemeMode.dark);
                    } else {
                      setDarkModeSetting(context, ThemeMode.light);
                    }
                  },
                  activeColor: FlutterFlowTheme.of(context).primary,
                  activeTrackColor: FlutterFlowTheme.of(context).primary,
                  inactiveTrackColor: FlutterFlowTheme.of(context).alternate,
                  inactiveThumbColor:
                      FlutterFlowTheme.of(context).secondaryBackground,
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.0, 1.0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 40.0, 0.0, 0.0),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      context.pushNamed(
                        LoginWidget.routeName,
                        extra: <String, dynamic>{
                          kTransitionInfoKey: TransitionInfo(
                            hasTransition: true,
                            transitionType: PageTransitionType.topToBottom,
                            duration: Duration(milliseconds: 1000),
                          ),
                        },
                      );
                    },
                    child: Icon(
                      Icons.logout,
                      color: Color(0xFF62CC0C),
                      size: 50.0,
                    ),
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
