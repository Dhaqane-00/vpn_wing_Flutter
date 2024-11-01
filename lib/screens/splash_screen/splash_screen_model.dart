import '/components/slider_screen_one/slider_screen_one_widget.dart';
import '/components/slider_screen_two/slider_screen_two_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'splash_screen_widget.dart' show SplashScreenWidget;
import 'package:flutter/material.dart';

class SplashScreenModel extends FlutterFlowModel<SplashScreenWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;
  // Model for SliderScreenOne component.
  late SliderScreenOneModel sliderScreenOneModel;
  // Model for SliderScreenTwo component.
  late SliderScreenTwoModel sliderScreenTwoModel;

  @override
  void initState(BuildContext context) {
    sliderScreenOneModel = createModel(context, () => SliderScreenOneModel());
    sliderScreenTwoModel = createModel(context, () => SliderScreenTwoModel());
  }

  @override
  void dispose() {
    sliderScreenOneModel.dispose();
    sliderScreenTwoModel.dispose();
  }
}
