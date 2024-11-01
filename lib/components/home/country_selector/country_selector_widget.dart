import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'country_selector_model.dart';
export 'country_selector_model.dart';

class CountrySelectorWidget extends StatefulWidget {
  const CountrySelectorWidget({super.key});

  @override
  State<CountrySelectorWidget> createState() => _CountrySelectorWidgetState();
}

class _CountrySelectorWidgetState extends State<CountrySelectorWidget> {
  late CountrySelectorModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CountrySelectorModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      context.pushNamed('LocationScreen');
    });
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () async {
        context.pushNamed('LocationScreen');
      },
      child: Material(
        color: Colors.transparent,
        child: ListTile(
          leading: const FaIcon(
            FontAwesomeIcons.telegramPlane,
            color: Colors.white,
            size: 40.0,
          ),
          title: Text(
            'United States',
            style: FlutterFlowTheme.of(context).titleMedium.override(
                  fontFamily: 'Inter Tight',
                  color: Colors.white,
                  letterSpacing: 0.0,
                ),
          ),
          subtitle: Text(
            'IP - 192.168.171.6',
            style: FlutterFlowTheme.of(context).labelMedium.override(
                  fontFamily: 'Inter',
                  color: Colors.white,
                  letterSpacing: 0.0,
                ),
          ),
          trailing: const FaIcon(
            FontAwesomeIcons.arrowRight,
            color: Color(0xFFF3F3F3),
            size: 27.0,
          ),
          dense: false,
          contentPadding: const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24.0),
          ),
        ),
      ),
    );
  }
}
