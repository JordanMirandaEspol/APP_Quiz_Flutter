import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flip_card/flip_card.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:just_audio/just_audio.dart';
import 'package:lottie/lottie.dart';
import '/quiz/quiz_screen.dart';

class PdfCopyWidget extends StatefulWidget {
  const PdfCopyWidget({Key? key}) : super(key: key);

  @override
  _PdfCopyWidgetState createState() => _PdfCopyWidgetState();
}

class _PdfCopyWidgetState extends State<PdfCopyWidget> {
  AudioPlayer? soundPlayer10;
  AudioPlayer? soundPlayer9;
  AudioPlayer? soundPlayer11;
  AudioPlayer? soundPlayer12;
  AudioPlayer? soundPlayer1;
  AudioPlayer? soundPlayer2;
  AudioPlayer? soundPlayer3;
  AudioPlayer? soundPlayer4;
  PageController? pageViewController;
  AudioPlayer? soundPlayer5;
  AudioPlayer? soundPlayer6;
  AudioPlayer? soundPlayer7;
  AudioPlayer? soundPlayer8;
  AudioPlayer? soundPlayer13;
  AudioPlayer? soundPlayer14;
  AudioPlayer? soundPlayer15;
  AudioPlayer? soundPlayer16;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30,
          borderWidth: 1,
          buttonSize: 60,
          icon: Icon(
            Icons.arrow_back_rounded,
            color: Color(0xFF1D2429),
            size: 30,
          ),
          onPressed: () async {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Estado de perdidas y ganancias',
          style: FlutterFlowTheme.of(context).subtitle1.override(
                fontFamily: 'Outfit',
                color: Color(0xFF1D2429),
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 0,
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 40),
                child: Container(
                  width: double.infinity,
                  height: 500,
                  child: Stack(
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 50),
                        child: PageView(
                          controller: pageViewController ??=
                              PageController(initialPage: 0),
                          scrollDirection: Axis.horizontal,
                          children: [
                            FlipCard(
                              fill: Fill.fillBack,
                              direction: FlipDirection.HORIZONTAL,
                              speed: 400,
                              front: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    10, 70, 10, 0),
                                child: Container(
                                  width: 100,
                                  height: 80,
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: [
                                        FlutterFlowTheme.of(context)
                                            .primaryColor,
                                        FlutterFlowTheme.of(context)
                                            .secondaryColor
                                      ],
                                      stops: [0, 1],
                                      begin: AlignmentDirectional(0, -1),
                                      end: AlignmentDirectional(0, 1),
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            20, 20, 0, 0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 0, 20, 0),
                                              child: FlutterFlowIconButton(
                                                borderColor: Colors.transparent,
                                                borderRadius: 30,
                                                borderWidth: 1,
                                                buttonSize: 60,
                                                icon: Icon(
                                                  Icons.play_arrow,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  size: 30,
                                                ),
                                                onPressed: () async {
                                                  soundPlayer1 ??=
                                                      AudioPlayer();
                                                  if (soundPlayer1!.playing) {
                                                    await soundPlayer1!.stop();
                                                  }
                                                  soundPlayer1!.setVolume(1);
                                                  soundPlayer1!
                                                      .setAsset(
                                                          'assets/audios/ttsMP3.com_VoiceText_2022-11-28_4_47_50.mp3')
                                                      .then((_) =>
                                                          soundPlayer1!.play());
                                                },
                                              ),
                                            ),
                                            FlutterFlowIconButton(
                                              borderColor: Colors.transparent,
                                              borderRadius: 30,
                                              borderWidth: 1,
                                              buttonSize: 60,
                                              icon: Icon(
                                                Icons.pause,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                size: 30,
                                              ),
                                              onPressed: () async {
                                                soundPlayer2 ??= AudioPlayer();
                                                if (soundPlayer2!.playing) {
                                                  await soundPlayer2!.stop();
                                                }
                                                soundPlayer2!.setVolume(0);
                                                soundPlayer2!
                                                    .setAsset(
                                                        'assets/audios/ttsMP3.com_VoiceText_2022-11-28_4_26_44.mp3')
                                                    .then((_) =>
                                                        soundPlayer2!.play());
                                              },
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 50, 0, 0),
                                        child: AutoSizeText(
                                          '¿Que es un estado de perdidas y ganancias?',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'Outfit',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                                fontSize: 18,
                                              ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 100, 0, 0),
                                        child: Lottie.network(
                                          'https://assets8.lottiefiles.com/packages/lf20_G2XAygvB2h.json',
                                          width: 200,
                                          height: 200,
                                          fit: BoxFit.contain,
                                          animate: true,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              back: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    10, 70, 10, 0),
                                child: Container(
                                  width: 100,
                                  height: 80,
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: [
                                        FlutterFlowTheme.of(context)
                                            .primaryColor,
                                        FlutterFlowTheme.of(context)
                                            .secondaryColor
                                      ],
                                      stops: [0, 1],
                                      begin: AlignmentDirectional(0, -1),
                                      end: AlignmentDirectional(0, 1),
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            20, 20, 0, 0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 0, 20, 0),
                                              child: FlutterFlowIconButton(
                                                borderColor: Colors.transparent,
                                                borderRadius: 30,
                                                borderWidth: 1,
                                                buttonSize: 60,
                                                icon: Icon(
                                                  Icons.play_arrow,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  size: 30,
                                                ),
                                                onPressed: () async {
                                                  soundPlayer3 ??=
                                                      AudioPlayer();
                                                  if (soundPlayer3!.playing) {
                                                    await soundPlayer3!.stop();
                                                  }
                                                  soundPlayer3!.setVolume(100);
                                                  soundPlayer3!
                                                      .setAsset(
                                                          'assets/audios/ttsMP3.com_VoiceText_2022-11-28_4_47_50.mp3')
                                                      .then((_) =>
                                                          soundPlayer3!.play());
                                                },
                                              ),
                                            ),
                                            FlutterFlowIconButton(
                                              borderColor: Colors.transparent,
                                              borderRadius: 30,
                                              borderWidth: 1,
                                              buttonSize: 60,
                                              icon: Icon(
                                                Icons.pause,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                size: 30,
                                              ),
                                              onPressed: () async {
                                                soundPlayer4 ??= AudioPlayer();
                                                if (soundPlayer4!.playing) {
                                                  await soundPlayer4!.stop();
                                                }
                                                soundPlayer4!.setVolume(0);
                                                await soundPlayer4!
                                                    .setAsset(
                                                        'assets/audios/ttsMP3.com_VoiceText_2022-11-28_4_47_50.mp3')
                                                    .then((_) =>
                                                        soundPlayer4!.play());
                                              },
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            5, 30, 5, 0),
                                        child: AutoSizeText(
                                          'Un estado de perdidas y ganancias detalla los ingresos, los gastos de capital y los gastos operativos en los que se incurre durante un período determinado. Normalmente, se genera de forma trimestral o anual.',
                                          textAlign: TextAlign.justify,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'Outfit',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                                fontSize: 18,
                                              ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 20, 0, 0),
                                        child: Lottie.network(
                                          'https://assets6.lottiefiles.com/private_files/lf30_nIhxTu.json',
                                          width: 250,
                                          height: 230,
                                          fit: BoxFit.cover,
                                          animate: true,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            FlipCard(
                              fill: Fill.fillBack,
                              direction: FlipDirection.HORIZONTAL,
                              speed: 400,
                              front: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    10, 70, 10, 0),
                                child: Container(
                                  width: 100,
                                  height: 80,
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: [
                                        FlutterFlowTheme.of(context)
                                            .primaryColor,
                                        FlutterFlowTheme.of(context)
                                            .secondaryColor
                                      ],
                                      stops: [0, 1],
                                      begin: AlignmentDirectional(0, -1),
                                      end: AlignmentDirectional(0, 1),
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            20, 20, 0, 0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 0, 20, 0),
                                              child: FlutterFlowIconButton(
                                                borderColor: Colors.transparent,
                                                borderRadius: 30,
                                                borderWidth: 1,
                                                buttonSize: 60,
                                                icon: Icon(
                                                  Icons.play_arrow,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  size: 30,
                                                ),
                                                onPressed: () async {
                                                  soundPlayer5 ??=
                                                      AudioPlayer();
                                                  if (soundPlayer5!.playing) {
                                                    await soundPlayer5!.stop();
                                                  }
                                                  soundPlayer5!.setVolume(100);
                                                  soundPlayer5!
                                                      .setAsset(
                                                          'assets/audios/ttsMP3.com_VoiceText_2022-11-29_1_12_12.mp3')
                                                      .then((_) =>
                                                          soundPlayer5!.play());
                                                },
                                              ),
                                            ),
                                            FlutterFlowIconButton(
                                              borderColor: Colors.transparent,
                                              borderRadius: 30,
                                              borderWidth: 1,
                                              buttonSize: 60,
                                              icon: Icon(
                                                Icons.pause,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                size: 30,
                                              ),
                                              onPressed: () async {
                                                soundPlayer6 ??= AudioPlayer();
                                                if (soundPlayer6!.playing) {
                                                  await soundPlayer6!.stop();
                                                }
                                                soundPlayer6!.setVolume(0);
                                                soundPlayer6!
                                                    .setAsset(
                                                        'assets/audios/ttsMP3.com_VoiceText_2022-11-28_4_26_44.mp3')
                                                    .then((_) =>
                                                        soundPlayer6!.play());
                                              },
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 50, 0, 0),
                                        child: AutoSizeText(
                                          '¿Que puede incluir un estado de ingresos?',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'Outfit',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                                fontSize: 18,
                                              ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 100, 0, 0),
                                        child: Lottie.network(
                                          'https://assets8.lottiefiles.com/packages/lf20_G2XAygvB2h.json',
                                          width: 200,
                                          height: 200,
                                          fit: BoxFit.contain,
                                          animate: true,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              back: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    10, 70, 10, 0),
                                child: Container(
                                  width: 100,
                                  height: 80,
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: [
                                        FlutterFlowTheme.of(context)
                                            .primaryColor,
                                        FlutterFlowTheme.of(context)
                                            .secondaryColor
                                      ],
                                      stops: [0, 1],
                                      begin: AlignmentDirectional(0, -1),
                                      end: AlignmentDirectional(0, 1),
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            20, 20, 0, 0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 0, 20, 0),
                                              child: FlutterFlowIconButton(
                                                borderColor: Colors.transparent,
                                                borderRadius: 30,
                                                borderWidth: 1,
                                                buttonSize: 60,
                                                icon: Icon(
                                                  Icons.play_arrow,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  size: 30,
                                                ),
                                                onPressed: () async {
                                                  soundPlayer7 ??=
                                                      AudioPlayer();
                                                  if (soundPlayer7!.playing) {
                                                    await soundPlayer7!.stop();
                                                  }
                                                  soundPlayer7!.setVolume(100);
                                                  soundPlayer7!
                                                      .setAsset(
                                                          'assets/audios/ttsMP3.com_VoiceText_2022-11-29_1_22_38.mp3')
                                                      .then((_) =>
                                                          soundPlayer7!.play());
                                                },
                                              ),
                                            ),
                                            FlutterFlowIconButton(
                                              borderColor: Colors.transparent,
                                              borderRadius: 30,
                                              borderWidth: 1,
                                              buttonSize: 60,
                                              icon: Icon(
                                                Icons.pause,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                size: 30,
                                              ),
                                              onPressed: () async {
                                                soundPlayer8 ??= AudioPlayer();
                                                if (soundPlayer8!.playing) {
                                                  await soundPlayer8!.stop();
                                                }
                                                soundPlayer8!.setVolume(0);
                                                soundPlayer8!
                                                    .setAsset(
                                                        'assets/audios/ttsMP3.com_VoiceText_2022-11-29_1_22_38.mp3')
                                                    .then((_) =>
                                                        soundPlayer8!.play());
                                              },
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            5, 30, 5, 0),
                                        child: AutoSizeText(
                                          'Un estado de ingresos incluye:\n- Ingresos operativos\n- Ingresos no operativos',
                                          textAlign: TextAlign.start,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'Outfit',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                                fontSize: 18,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            FlipCard(
                              fill: Fill.fillBack,
                              direction: FlipDirection.HORIZONTAL,
                              speed: 400,
                              front: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    10, 70, 10, 0),
                                child: Container(
                                  width: 100,
                                  height: 80,
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: [
                                        FlutterFlowTheme.of(context)
                                            .primaryColor,
                                        FlutterFlowTheme.of(context)
                                            .secondaryColor
                                      ],
                                      stops: [0, 1],
                                      begin: AlignmentDirectional(0, -1),
                                      end: AlignmentDirectional(0, 1),
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            20, 20, 0, 0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 0, 20, 0),
                                              child: FlutterFlowIconButton(
                                                borderColor: Colors.transparent,
                                                borderRadius: 30,
                                                borderWidth: 1,
                                                buttonSize: 60,
                                                icon: Icon(
                                                  Icons.play_arrow,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  size: 30,
                                                ),
                                                onPressed: () async {
                                                  soundPlayer9 ??=
                                                      AudioPlayer();
                                                  if (soundPlayer9!.playing) {
                                                    await soundPlayer9!.stop();
                                                  }
                                                  soundPlayer9!.setVolume(100);
                                                  soundPlayer9!
                                                      .setAsset(
                                                          'assets/audios/ttsMP3.com_VoiceText_2022-11-29_1_26_21.mp3')
                                                      .then((_) =>
                                                          soundPlayer9!.play());
                                                },
                                              ),
                                            ),
                                            FlutterFlowIconButton(
                                              borderColor: Colors.transparent,
                                              borderRadius: 30,
                                              borderWidth: 1,
                                              buttonSize: 60,
                                              icon: Icon(
                                                Icons.pause,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                size: 30,
                                              ),
                                              onPressed: () async {
                                                soundPlayer10 ??= AudioPlayer();
                                                if (soundPlayer10!.playing) {
                                                  await soundPlayer10!.stop();
                                                }
                                                soundPlayer10!.setVolume(0);
                                                soundPlayer10!
                                                    .setAsset(
                                                        'assets/audios/ttsMP3.com_VoiceText_2022-11-29_1_26_21.mp3')
                                                    .then((_) =>
                                                        soundPlayer10!.play());
                                              },
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 50, 0, 0),
                                        child: AutoSizeText(
                                          '¿Que es un ingreso operativo?',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'Outfit',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                                fontSize: 18,
                                              ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 100, 0, 0),
                                        child: Lottie.network(
                                          'https://assets8.lottiefiles.com/packages/lf20_G2XAygvB2h.json',
                                          width: 200,
                                          height: 200,
                                          fit: BoxFit.contain,
                                          animate: true,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              back: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    10, 70, 10, 0),
                                child: Container(
                                  width: 100,
                                  height: 80,
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: [
                                        FlutterFlowTheme.of(context)
                                            .primaryColor,
                                        FlutterFlowTheme.of(context)
                                            .secondaryColor
                                      ],
                                      stops: [0, 1],
                                      begin: AlignmentDirectional(0, -1),
                                      end: AlignmentDirectional(0, 1),
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            20, 20, 0, 0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 0, 20, 0),
                                              child: FlutterFlowIconButton(
                                                borderColor: Colors.transparent,
                                                borderRadius: 30,
                                                borderWidth: 1,
                                                buttonSize: 60,
                                                icon: Icon(
                                                  Icons.play_arrow,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  size: 30,
                                                ),
                                                onPressed: () async {
                                                  soundPlayer11 ??=
                                                      AudioPlayer();
                                                  if (soundPlayer11!.playing) {
                                                    await soundPlayer11!.stop();
                                                  }
                                                  soundPlayer11!.setVolume(100);
                                                  soundPlayer11!
                                                      .setAsset(
                                                          'assets/audios/ttsMP3.com_VoiceText_2022-11-29_1_28_36.mp3')
                                                      .then((_) =>
                                                          soundPlayer11!
                                                              .play());
                                                },
                                              ),
                                            ),
                                            FlutterFlowIconButton(
                                              borderColor: Colors.transparent,
                                              borderRadius: 30,
                                              borderWidth: 1,
                                              buttonSize: 60,
                                              icon: Icon(
                                                Icons.pause,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                size: 30,
                                              ),
                                              onPressed: () async {
                                                soundPlayer12 ??= AudioPlayer();
                                                if (soundPlayer12!.playing) {
                                                  await soundPlayer12!.stop();
                                                }
                                                soundPlayer12!.setVolume(0);
                                                soundPlayer12!
                                                    .setAsset(
                                                        'assets/audios/ttsMP3.com_VoiceText_2022-11-29_1_28_36.mp3')
                                                    .then((_) =>
                                                        soundPlayer12!.play());
                                              },
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 30, 0, 0),
                                        child: AutoSizeText(
                                          'Ingresos y gastos relacionados con la operación del negocio, como la venta de un producto.',
                                          textAlign: TextAlign.justify,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'Outfit',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                                fontSize: 18,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            FlipCard(
                              fill: Fill.fillBack,
                              direction: FlipDirection.HORIZONTAL,
                              speed: 400,
                              front: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    10, 70, 10, 0),
                                child: Container(
                                  width: 100,
                                  height: 80,
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: [
                                        FlutterFlowTheme.of(context)
                                            .primaryColor,
                                        FlutterFlowTheme.of(context)
                                            .secondaryColor
                                      ],
                                      stops: [0, 1],
                                      begin: AlignmentDirectional(0, -1),
                                      end: AlignmentDirectional(0, 1),
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            20, 20, 0, 0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 0, 20, 0),
                                              child: FlutterFlowIconButton(
                                                borderColor: Colors.transparent,
                                                borderRadius: 30,
                                                borderWidth: 1,
                                                buttonSize: 60,
                                                icon: Icon(
                                                  Icons.play_arrow,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  size: 30,
                                                ),
                                                onPressed: () async {
                                                  soundPlayer13 ??=
                                                      AudioPlayer();
                                                  if (soundPlayer13!.playing) {
                                                    await soundPlayer13!.stop();
                                                  }
                                                  soundPlayer13!.setVolume(1);
                                                  soundPlayer13!
                                                      .setAsset(
                                                          'assets/audios/ttsMP3.com_VoiceText_2022-11-29_1_32_38.mp3')
                                                      .then((_) =>
                                                          soundPlayer13!
                                                              .play());
                                                },
                                              ),
                                            ),
                                            FlutterFlowIconButton(
                                              borderColor: Colors.transparent,
                                              borderRadius: 30,
                                              borderWidth: 1,
                                              buttonSize: 60,
                                              icon: Icon(
                                                Icons.pause,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                size: 30,
                                              ),
                                              onPressed: () async {
                                                soundPlayer14 ??= AudioPlayer();
                                                if (soundPlayer14!.playing) {
                                                  await soundPlayer14!.stop();
                                                }
                                                soundPlayer14!.setVolume(0);
                                                soundPlayer14!
                                                    .setAsset(
                                                        'assets/audios/ttsMP3.com_VoiceText_2022-11-29_1_32_38.mp3')
                                                    .then((_) =>
                                                        soundPlayer14!.play());
                                              },
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 50, 0, 0),
                                        child: AutoSizeText(
                                          '¿Que es un ingreso no operativo?',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'Outfit',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                                fontSize: 18,
                                              ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 100, 0, 0),
                                        child: Lottie.network(
                                          'https://assets8.lottiefiles.com/packages/lf20_G2XAygvB2h.json',
                                          width: 200,
                                          height: 200,
                                          fit: BoxFit.contain,
                                          animate: true,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              back: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    10, 70, 10, 0),
                                child: Container(
                                  width: 100,
                                  height: 80,
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: [
                                        FlutterFlowTheme.of(context)
                                            .primaryColor,
                                        FlutterFlowTheme.of(context)
                                            .secondaryColor
                                      ],
                                      stops: [0, 1],
                                      begin: AlignmentDirectional(0, -1),
                                      end: AlignmentDirectional(0, 1),
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            20, 20, 0, 0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 0, 20, 0),
                                              child: FlutterFlowIconButton(
                                                borderColor: Colors.transparent,
                                                borderRadius: 30,
                                                borderWidth: 1,
                                                buttonSize: 60,
                                                icon: Icon(
                                                  Icons.play_arrow,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  size: 30,
                                                ),
                                                onPressed: () async {
                                                  soundPlayer15 ??=
                                                      AudioPlayer();
                                                  if (soundPlayer15!.playing) {
                                                    await soundPlayer15!.stop();
                                                  }
                                                  soundPlayer15!.setVolume(100);
                                                  soundPlayer15!
                                                      .setAsset(
                                                          'assets/audios/ttsMP3.com_VoiceText_2022-11-29_1_34_20.mp3')
                                                      .then((_) =>
                                                          soundPlayer15!
                                                              .play());
                                                },
                                              ),
                                            ),
                                            FlutterFlowIconButton(
                                              borderColor: Colors.transparent,
                                              borderRadius: 30,
                                              borderWidth: 1,
                                              buttonSize: 60,
                                              icon: Icon(
                                                Icons.pause,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                size: 30,
                                              ),
                                              onPressed: () async {
                                                soundPlayer16 ??= AudioPlayer();
                                                if (soundPlayer16!.playing) {
                                                  await soundPlayer16!.stop();
                                                }
                                                soundPlayer16!.setVolume(0);
                                                await soundPlayer16!
                                                    .setAsset(
                                                        'assets/audios/ttsMP3.com_VoiceText_2022-11-29_1_34_20.mp3')
                                                    .then((_) =>
                                                        soundPlayer16!.play());
                                              },
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            5, 30, 5, 0),
                                        child: AutoSizeText(
                                          'Son los ingresos y gastos, no relacionados con la actividad de la empresa, como la venta de un activo.',
                                          textAlign: TextAlign.justify,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'Outfit',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                                fontSize: 18,
                                              ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 20, 0, 0),
                                        child: Lottie.network(
                                          'https://assets6.lottiefiles.com/private_files/lf30_nIhxTu.json',
                                          width: 250,
                                          height: 230,
                                          fit: BoxFit.cover,
                                          animate: true,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0, 1),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                          child: smooth_page_indicator.SmoothPageIndicator(
                            controller: pageViewController ??=
                                PageController(initialPage: 0),
                            count: 4,
                            axisDirection: Axis.horizontal,
                            onDotClicked: (i) {
                              pageViewController!.animateToPage(
                                i,
                                duration: Duration(milliseconds: 500),
                                curve: Curves.ease,
                              );
                            },
                            effect: smooth_page_indicator.ExpandingDotsEffect(
                              expansionFactor: 2,
                              spacing: 8,
                              radius: 16,
                              dotWidth: 16,
                              dotHeight: 16,
                              dotColor: Color(0xFF9E9E9E),
                              activeDotColor: Color(0xFF3F51B5),
                              paintStyle: PaintingStyle.fill,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 50),
              child: FFButtonWidget(
                onPressed: () async {
                  await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => QuizScreen(),
                    ),
                  );
                },
                text: 'Realizar Quiz',
                options: FFButtonOptions(
                  width: 190,
                  height: 40,
                  color: FlutterFlowTheme.of(context).primaryColor,
                  textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                        fontFamily: 'Poppins',
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
