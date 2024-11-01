import '/components/language_selector/country_components/country_components_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'location_screen_widget.dart' show LocationScreenWidget;
import 'package:flutter/material.dart';

class LocationScreenModel extends FlutterFlowModel<LocationScreenWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // Model for CountryComponents component.
  late CountryComponentsModel countryComponentsModel;

  @override
  void initState(BuildContext context) {
    countryComponentsModel =
        createModel(context, () => CountryComponentsModel());
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    countryComponentsModel.dispose();
  }
}
