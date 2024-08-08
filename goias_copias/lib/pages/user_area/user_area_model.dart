import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/components/drawer_widget.dart';
import '/components/footer_widget.dart';
import '/components/header_line_widget.dart';
import '/components/login_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'user_area_widget.dart' show UserAreaWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class UserAreaModel extends FlutterFlowModel<UserAreaWidget> {
  ///  Local state fields for this page.

  bool pedidos = true;

  bool dados = false;

  bool endereco = false;

  ///  State fields for stateful widgets in this page.

  // Model for Drawer component.
  late DrawerModel drawerModel;
  // Model for Header_Line component.
  late HeaderLineModel headerLineModel;
  // State field(s) for TextField_nome widget.
  FocusNode? textFieldNomeFocusNode1;
  TextEditingController? textFieldNomeTextController1;
  String? Function(BuildContext, String?)?
      textFieldNomeTextController1Validator;
  // State field(s) for TextField_sobrenome widget.
  FocusNode? textFieldSobrenomeFocusNode1;
  TextEditingController? textFieldSobrenomeTextController1;
  String? Function(BuildContext, String?)?
      textFieldSobrenomeTextController1Validator;
  // State field(s) for TextField_cpf widget.
  FocusNode? textFieldCpfFocusNode1;
  TextEditingController? textFieldCpfTextController1;
  String? Function(BuildContext, String?)? textFieldCpfTextController1Validator;
  // State field(s) for TextField_email widget.
  FocusNode? textFieldEmailFocusNode1;
  TextEditingController? textFieldEmailTextController1;
  String? Function(BuildContext, String?)?
      textFieldEmailTextController1Validator;
  // State field(s) for TextField_telefone widget.
  FocusNode? textFieldTelefoneFocusNode1;
  TextEditingController? textFieldTelefoneTextController1;
  String? Function(BuildContext, String?)?
      textFieldTelefoneTextController1Validator;
  // State field(s) for TextField_email widget.
  FocusNode? textFieldEmailFocusNode2;
  TextEditingController? textFieldEmailTextController2;
  String? Function(BuildContext, String?)?
      textFieldEmailTextController2Validator;
  // State field(s) for TextField_sobrenome widget.
  FocusNode? textFieldSobrenomeFocusNode2;
  TextEditingController? textFieldSobrenomeTextController2;
  String? Function(BuildContext, String?)?
      textFieldSobrenomeTextController2Validator;
  // State field(s) for TextField_cpf widget.
  FocusNode? textFieldCpfFocusNode2;
  TextEditingController? textFieldCpfTextController2;
  String? Function(BuildContext, String?)? textFieldCpfTextController2Validator;
  // State field(s) for TextField_telefone widget.
  FocusNode? textFieldTelefoneFocusNode2;
  TextEditingController? textFieldTelefoneTextController2;
  String? Function(BuildContext, String?)?
      textFieldTelefoneTextController2Validator;
  // State field(s) for TextField_telefone widget.
  FocusNode? textFieldTelefoneFocusNode3;
  TextEditingController? textFieldTelefoneTextController3;
  String? Function(BuildContext, String?)?
      textFieldTelefoneTextController3Validator;
  // State field(s) for TextField_telefone widget.
  FocusNode? textFieldTelefoneFocusNode4;
  TextEditingController? textFieldTelefoneTextController4;
  String? Function(BuildContext, String?)?
      textFieldTelefoneTextController4Validator;
  // State field(s) for TextField_nome widget.
  FocusNode? textFieldNomeFocusNode2;
  TextEditingController? textFieldNomeTextController2;
  String? Function(BuildContext, String?)?
      textFieldNomeTextController2Validator;
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
    textFieldNomeFocusNode1?.dispose();
    textFieldNomeTextController1?.dispose();

    textFieldSobrenomeFocusNode1?.dispose();
    textFieldSobrenomeTextController1?.dispose();

    textFieldCpfFocusNode1?.dispose();
    textFieldCpfTextController1?.dispose();

    textFieldEmailFocusNode1?.dispose();
    textFieldEmailTextController1?.dispose();

    textFieldTelefoneFocusNode1?.dispose();
    textFieldTelefoneTextController1?.dispose();

    textFieldEmailFocusNode2?.dispose();
    textFieldEmailTextController2?.dispose();

    textFieldSobrenomeFocusNode2?.dispose();
    textFieldSobrenomeTextController2?.dispose();

    textFieldCpfFocusNode2?.dispose();
    textFieldCpfTextController2?.dispose();

    textFieldTelefoneFocusNode2?.dispose();
    textFieldTelefoneTextController2?.dispose();

    textFieldTelefoneFocusNode3?.dispose();
    textFieldTelefoneTextController3?.dispose();

    textFieldTelefoneFocusNode4?.dispose();
    textFieldTelefoneTextController4?.dispose();

    textFieldNomeFocusNode2?.dispose();
    textFieldNomeTextController2?.dispose();

    footerModel.dispose();
  }

  /// Action blocks.
  Future setAplicabilidade(BuildContext context) async {}
}
