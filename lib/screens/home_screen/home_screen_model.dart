import '/components/home/country_selector/country_selector_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'home_screen_widget.dart' show HomeScreenWidget;
import 'package:flutter/material.dart';

class HomeScreenModel extends FlutterFlowModel<HomeScreenWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for CountrySelector component.
  late CountrySelectorModel countrySelectorModel;

  @override
  void initState(BuildContext context) {
    countrySelectorModel = createModel(context, () => CountrySelectorModel());
  }

  @override
  void dispose() {
    countrySelectorModel.dispose();
  }
}
