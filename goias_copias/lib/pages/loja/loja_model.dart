import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/components/drawer_widget.dart';
import '/components/footer_widget.dart';
import '/components/header_line_widget.dart';
import '/components/login_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'loja_widget.dart' show LojaWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LojaModel extends FlutterFlowModel<LojaWidget> {
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

  int? loopRange;

  int iterationCount = 0;

  String folhas = '0';

  String impre = '0';

  String pags = '0';

  String encad = '0';

  String valor = '0';

  String num = '0';

  bool comoUsar = false;

  ///  State fields for stateful widgets in this page.

  // Model for Header_Line component.
  late HeaderLineModel headerLineModel;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  ProdutosRecord? impressaoRetornoHome;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  ProdutosRecord? encadernacaoRetornoHome;
  // Model for Footer component.
  late FooterModel footerModel;
  // Model for Drawer component.
  late DrawerModel drawerModel;

  @override
  void initState(BuildContext context) {
    headerLineModel = createModel(context, () => HeaderLineModel());
    footerModel = createModel(context, () => FooterModel());
    drawerModel = createModel(context, () => DrawerModel());
  }

  @override
  void dispose() {
    headerLineModel.dispose();
    footerModel.dispose();
    drawerModel.dispose();
  }

  /// Action blocks.
  Future setAplicabilidade(BuildContext context) async {}
}
