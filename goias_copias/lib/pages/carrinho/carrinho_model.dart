import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/drawer_widget.dart';
import '/components/footer_widget.dart';
import '/components/header_line_widget.dart';
import '/components/login_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'carrinho_widget.dart' show CarrinhoWidget;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CarrinhoModel extends FlutterFlowModel<CarrinhoWidget> {
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

  // Model for Drawer component.
  late DrawerModel drawerModel;
  // Model for Header_Line component.
  late HeaderLineModel headerLineModel;
  // State field(s) for Checkbox_frete_lista widget.
  Map<dynamic, bool> checkboxFreteListaValueMap = {};
  List<dynamic> get checkboxFreteListaCheckedItems =>
      checkboxFreteListaValueMap.entries
          .where((e) => e.value)
          .map((e) => e.key)
          .toList();

  // State field(s) for Checkbox_semFrete widget.
  bool? checkboxSemFreteValue;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Backend Call - API (Calculadora de Frete)] action in Button widget.
  ApiCallResponse? freteOut;
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
    textFieldFocusNode?.dispose();
    textController?.dispose();

    footerModel.dispose();
  }

  /// Action blocks.
  Future setAplicabilidade(BuildContext context) async {}
}
