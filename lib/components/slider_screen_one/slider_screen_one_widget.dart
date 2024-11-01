import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'slider_screen_one_model.dart';
export 'slider_screen_one_model.dart';

class SliderScreenOneWidget extends StatefulWidget {
  const SliderScreenOneWidget({super.key});

  @override
  State<SliderScreenOneWidget> createState() => _SliderScreenOneWidgetState();
}

class _SliderScreenOneWidgetState extends State<SliderScreenOneWidget> {
  late SliderScreenOneModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SliderScreenOneModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Align(
          alignment: const AlignmentDirectional(0.0, 0.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.asset(
              'assets/images/Logo.png',
              width: 100.0,
              height: 100.0,
              fit: BoxFit.contain,
              alignment: const Alignment(100.0, 100.0),
            ),
          ),
        ),
        RichText(
          textScaler: MediaQuery.of(context).textScaler,
          text: TextSpan(
            children: [
              TextSpan(
                text: 'W',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'MuseoModerno',
                      color: const Color(0xFF396AFC),
                      fontSize: 16.0,
                      letterSpacing: 0.0,
                      fontStyle: FontStyle.italic,
                    ),
              ),
              TextSpan(
                text: 'ing - VPN',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'MuseoModerno',
                      color: Colors.white,
                      fontSize: 16.0,
                      letterSpacing: 0.5,
                    ),
              )
            ],
            style: FlutterFlowTheme.of(context).labelMedium.override(
                  fontFamily: 'Poppins',
                  color: Colors.white,
                  letterSpacing: 0.0,
                ),
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
