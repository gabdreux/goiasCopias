import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/components/drawer_widget.dart';
import '/components/footer_widget.dart';
import '/components/header_line_widget.dart';
import '/components/login_widget.dart';
import '/components/pop_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:async';
import '/custom_code/actions/index.dart' as actions;
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/custom_functions.dart' as functions;
import 'calc_widget.dart' show CalcWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CalcModel extends FlutterFlowModel<CalcWidget> {
  ///  Local state fields for this page.

  List<FFUploadedFile> pdfs = [];
  void addToPdfs(FFUploadedFile item) => pdfs.add(item);
  void removeFromPdfs(FFUploadedFile item) => pdfs.remove(item);
  void removeAtIndexFromPdfs(int index) => pdfs.removeAt(index);
  void insertAtIndexInPdfs(int index, FFUploadedFile item) =>
      pdfs.insert(index, item);
  void updatePdfsAtIndex(int index, Function(FFUploadedFile) updateFn) =>
      pdfs[index] = updateFn(pdfs[index]);

  bool visivel = false;

  String folhas = '0';

  String impre = '0';

  String pags = '0';

  String encad = '0';

  String valor = '0';

  String num = '0';

  bool comoUsar = false;

  int iterationCount = 0;

  String altura = '0';

  bool divisao = false;

  String vertical = '-';

  bool g75 = true;

  int iterationPdfCarrinho = 0;

  bool check75 = true;

  bool checkEncad = true;

  bool checkVert = true;

  double valorDouble = 0.0;

  List<FFUploadedFile> modeloPageStateUploadedFileFlutterFlow = [];
  void addToModeloPageStateUploadedFileFlutterFlow(FFUploadedFile item) =>
      modeloPageStateUploadedFileFlutterFlow.add(item);
  void removeFromModeloPageStateUploadedFileFlutterFlow(FFUploadedFile item) =>
      modeloPageStateUploadedFileFlutterFlow.remove(item);
  void removeAtIndexFromModeloPageStateUploadedFileFlutterFlow(int index) =>
      modeloPageStateUploadedFileFlutterFlow.removeAt(index);
  void insertAtIndexInModeloPageStateUploadedFileFlutterFlow(
          int index, FFUploadedFile item) =>
      modeloPageStateUploadedFileFlutterFlow.insert(index, item);
  void updateModeloPageStateUploadedFileFlutterFlowAtIndex(
          int index, Function(FFUploadedFile) updateFn) =>
      modeloPageStateUploadedFileFlutterFlow[index] =
          updateFn(modeloPageStateUploadedFileFlutterFlow[index]);

  ///  State fields for stateful widgets in this page.

  // Model for Drawer component.
  late DrawerModel drawerModel;
  // Model for Header_Line component.
  late HeaderLineModel headerLineModel;
  // State field(s) for Checkbox75g widget.
  bool? checkbox75gValue;
  // State field(s) for Checkbox90g widget.
  bool? checkbox90gValue;
  // State field(s) for CheckboxFrenteV widget.
  bool? checkboxFrenteVValue;
  // State field(s) for CheckboxColorido widget.
  bool? checkboxColoridoValue;
  // State field(s) for CheckboxEncadernacao widget.
  bool? checkboxEncadernacaoValue;
  // State field(s) for Checkbox_individuais widget.
  bool? checkboxIndividuaisValue;
  // State field(s) for CheckboxJuntos widget.
  bool? checkboxJuntosValue;
  // State field(s) for CheckboxVertical widget.
  bool? checkboxVerticalValue;
  // State field(s) for Checkbox_horizontal widget.
  bool? checkboxHorizontalValue;
  // Stores action output result for [Custom Action - baseToByte] action in Row widget.
  List<FFUploadedFile>? pdfToUpload;
  // Stores action output result for [Custom Action - calculateCost] action in Row widget.
  dynamic? out;
  // Stores action output result for [Custom Action - returnPathsCache] action in Button widget.
  List<String>? pathsCacheCarrinho;
  // Model for Footer component.
  late FooterModel footerModel;

  @override
  void initState(BuildContext context) {
    drawerModel = createModel(context, () => DrawerModel());
    headerLineModel = createModel(context, () => HeaderLineModel());
    footerModel = createModel(context, () => FooterModel());
  }

  @override
  void dispose() {
    drawerModel.dispose();
    headerLineModel.dispose();
    footerModel.dispose();
  }

  /// Action blocks.
  Future setAplicabilidade(BuildContext context) async {}
}
