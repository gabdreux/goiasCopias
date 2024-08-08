import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/components/drawer_widget.dart';
import '/components/footer_widget.dart';
import '/components/header_line_widget.dart';
import '/components/login_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import '/flutter_flow/random_data_util.dart' as random_data;
import 'adm_widget.dart' show AdmWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AdmModel extends FlutterFlowModel<AdmWidget> {
  ///  Local state fields for this page.

  bool pedidos = true;

  bool produtos = false;

  ProdutosRecord? produtoEdit;

  bool editingProduct = false;

  FFUploadedFile? fotoEscolhida;

  bool creatingProduct = false;

  String? photoURLEdit;

  ///  State fields for stateful widgets in this page.

  // Model for Drawer component.
  late DrawerModel drawerModel;
  // Model for Header_Line component.
  late HeaderLineModel headerLineModel;
  // State field(s) for Checkbox widget.
  Map<PedidosRecord, bool> checkboxValueMap = {};
  List<PedidosRecord> get checkboxCheckedItems =>
      checkboxValueMap.entries.where((e) => e.value).map((e) => e.key).toList();

  bool isDataUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  bool isDataUploading2 = false;
  FFUploadedFile uploadedLocalFile2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  bool isDataUploading3 = false;
  FFUploadedFile uploadedLocalFile3 =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // State field(s) for TextField_nome widget.
  FocusNode? textFieldNomeFocusNode;
  TextEditingController? textFieldNomeTextController;
  String? Function(BuildContext, String?)? textFieldNomeTextControllerValidator;
  // State field(s) for TextField_valor widget.
  FocusNode? textFieldValorFocusNode;
  TextEditingController? textFieldValorTextController;
  String? Function(BuildContext, String?)?
      textFieldValorTextControllerValidator;
  // State field(s) for TextField_descricao widget.
  FocusNode? textFieldDescricaoFocusNode;
  TextEditingController? textFieldDescricaoTextController;
  String? Function(BuildContext, String?)?
      textFieldDescricaoTextControllerValidator;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for TextField_largura widget.
  FocusNode? textFieldLarguraFocusNode;
  TextEditingController? textFieldLarguraTextController;
  String? Function(BuildContext, String?)?
      textFieldLarguraTextControllerValidator;
  // State field(s) for TextField_altura widget.
  FocusNode? textFieldAlturaFocusNode;
  TextEditingController? textFieldAlturaTextController;
  String? Function(BuildContext, String?)?
      textFieldAlturaTextControllerValidator;
  // State field(s) for TextField_peso widget.
  FocusNode? textFieldPesoFocusNode;
  TextEditingController? textFieldPesoTextController;
  String? Function(BuildContext, String?)? textFieldPesoTextControllerValidator;
  // State field(s) for TextField_espessura widget.
  FocusNode? textFieldEspessuraFocusNode;
  TextEditingController? textFieldEspessuraTextController;
  String? Function(BuildContext, String?)?
      textFieldEspessuraTextControllerValidator;
  bool isDataUploading4 = false;
  FFUploadedFile uploadedLocalFile4 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl4 = '';

  bool isDataUploading5 = false;
  FFUploadedFile uploadedLocalFile5 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl5 = '';

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
    textFieldNomeFocusNode?.dispose();
    textFieldNomeTextController?.dispose();

    textFieldValorFocusNode?.dispose();
    textFieldValorTextController?.dispose();

    textFieldDescricaoFocusNode?.dispose();
    textFieldDescricaoTextController?.dispose();

    textFieldLarguraFocusNode?.dispose();
    textFieldLarguraTextController?.dispose();

    textFieldAlturaFocusNode?.dispose();
    textFieldAlturaTextController?.dispose();

    textFieldPesoFocusNode?.dispose();
    textFieldPesoTextController?.dispose();

    textFieldEspessuraFocusNode?.dispose();
    textFieldEspessuraTextController?.dispose();

    footerModel.dispose();
  }

  /// Action blocks.
  Future setAplicabilidade(BuildContext context) async {}
}
