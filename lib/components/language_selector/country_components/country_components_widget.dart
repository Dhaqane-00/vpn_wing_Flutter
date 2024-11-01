import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'country_components_model.dart';
export 'country_components_model.dart';

class CountryComponentsWidget extends StatefulWidget {
  const CountryComponentsWidget({super.key});

  @override
  State<CountryComponentsWidget> createState() =>
      _CountryComponentsWidgetState();
}

class _CountryComponentsWidgetState extends State<CountryComponentsWidget> {
  late CountryComponentsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CountryComponentsModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * 1.0,
      decoration: BoxDecoration(
        color: const Color(0xFF1E3356),
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 20.0, 20.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: 48.0,
                      height: 48.0,
                      decoration: BoxDecoration(
                        color: const Color(0xFF2A4675),
                        borderRadius: BorderRadius.circular(24.0),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(24.0),
                        child: Image.network(
                          'https://images.unsplash.com/photo-1653849039932-11453b3cb071?w=500&h=500',
                          width: 48.0,
                          height: 48.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'United States',
                          style:
                              FlutterFlowTheme.of(context).titleMedium.override(
                                    fontFamily: 'Inter Tight',
                                    color: Colors.white,
                                    letterSpacing: 0.0,
                                  ),
                        ),
                        Text(
                          'New York',
                          style:
                              FlutterFlowTheme.of(context).bodySmall.override(
                                    fontFamily: 'Inter',
                                    color: const Color(0xFF9AA5B8),
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ],
                    ),
                  ].divide(const SizedBox(width: 16.0)),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    const Icon(
                      Icons.signal_cellular_alt,
                      color: Colors.green,
                      size: 16.0,
                    ),
                    Text(
                      '86 ms',
                      style: FlutterFlowTheme.of(context).bodySmall.override(
                            fontFamily: 'Inter',
                            color: const Color(0xFF9AA5B8),
                            letterSpacing: 0.0,
                          ),
                    ),
                  ].divide(const SizedBox(width: 8.0)),
                ),
              ],
            ),
          ].divide(const SizedBox(height: 16.0)),
        ),
      ),
    );
  }
}
