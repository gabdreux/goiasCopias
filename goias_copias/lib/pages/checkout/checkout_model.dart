import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/backend/schema/structs/index.dart';
import '/components/drawer_widget.dart';
import '/components/footer_widget.dart';
import '/components/header_line_widget.dart';
import '/components/login_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/random_data_util.dart' as random_data;
import 'checkout_widget.dart' show CheckoutWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CheckoutModel extends FlutterFlowModel<CheckoutWidget> {
  ///  Local state fields for this page.

  String? qrCode;

  String? urlCheckout;

  bool pix = true;

  int? loopRange;

  int iterationCount = 0;

  List<FFUploadedFile> pdfs = [];
  void addToPdfs(FFUploadedFile item) => pdfs.add(item);
  void removeFromPdfs(FFUploadedFile item) => pdfs.remove(item);
  void removeAtIndexFromPdfs(int index) => pdfs.removeAt(index);
  void insertAtIndexInPdfs(int index, FFUploadedFile item) =>
      pdfs.insert(index, item);
  void updatePdfsAtIndex(int index, Function(FFUploadedFile) updateFn) =>
      pdfs[index] = updateFn(pdfs[index]);

  List<String> pdfsURL = [];
  void addToPdfsURL(String item) => pdfsURL.add(item);
  void removeFromPdfsURL(String item) => pdfsURL.remove(item);
  void removeAtIndexFromPdfsURL(int index) => pdfsURL.removeAt(index);
  void insertAtIndexInPdfsURL(int index, String item) =>
      pdfsURL.insert(index, item);
  void updatePdfsURLAtIndex(int index, Function(String) updateFn) =>
      pdfsURL[index] = updateFn(pdfsURL[index]);

  int? idPedido;

  int insideIterationCount = 0;

  int fireIterationCount = 0;

  List<String> parcelamento = [];
  void addToParcelamento(String item) => parcelamento.add(item);
  void removeFromParcelamento(String item) => parcelamento.remove(item);
  void removeAtIndexFromParcelamento(int index) => parcelamento.removeAt(index);
  void insertAtIndexInParcelamento(int index, String item) =>
      parcelamento.insert(index, item);
  void updateParcelamentoAtIndex(int index, Function(String) updateFn) =>
      parcelamento[index] = updateFn(parcelamento[index]);

  ///  State fields for stateful widgets in this page.

  final formKey2 = GlobalKey<FormState>();
  final formKey1 = GlobalKey<FormState>();
  // Model for Drawer component.
  late DrawerModel drawerModel;
  // Model for Header_Line component.
  late HeaderLineModel headerLineModel;
  // State field(s) for TextField_nome widget.
  FocusNode? textFieldNomeFocusNode;
  TextEditingController? textFieldNomeTextController;
  String? Function(BuildContext, String?)? textFieldNomeTextControllerValidator;
  String? _textFieldNomeTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório';
    }

    return null;
  }

  // State field(s) for TextField_sobrenome widget.
  FocusNode? textFieldSobrenomeFocusNode;
  TextEditingController? textFieldSobrenomeTextController;
  String? Function(BuildContext, String?)?
      textFieldSobrenomeTextControllerValidator;
  String? _textFieldSobrenomeTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório';
    }

    return null;
  }

  // State field(s) for TextField_cpf widget.
  FocusNode? textFieldCpfFocusNode;
  TextEditingController? textFieldCpfTextController;
  String? Function(BuildContext, String?)? textFieldCpfTextControllerValidator;
  String? _textFieldCpfTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório';
    }

    return null;
  }

  // State field(s) for TextField_email widget.
  FocusNode? textFieldEmailFocusNode;
  TextEditingController? textFieldEmailTextController;
  String? Function(BuildContext, String?)?
      textFieldEmailTextControllerValidator;
  String? _textFieldEmailTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório';
    }

    return null;
  }

  // State field(s) for TextField_telefone widget.
  FocusNode? textFieldTelefoneFocusNode;
  TextEditingController? textFieldTelefoneTextController;
  String? Function(BuildContext, String?)?
      textFieldTelefoneTextControllerValidator;
  String? _textFieldTelefoneTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório';
    }

    return null;
  }

  // State field(s) for TextField_cep widget.
  FocusNode? textFieldCepFocusNode;
  TextEditingController? textFieldCepTextController;
  String? Function(BuildContext, String?)? textFieldCepTextControllerValidator;
  String? _textFieldCepTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório';
    }

    return null;
  }

  // State field(s) for TextField_numero widget.
  FocusNode? textFieldNumeroFocusNode;
  TextEditingController? textFieldNumeroTextController;
  String? Function(BuildContext, String?)?
      textFieldNumeroTextControllerValidator;
  String? _textFieldNumeroTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório';
    }

    return null;
  }

  // State field(s) for TextField_comlemento widget.
  FocusNode? textFieldComlementoFocusNode;
  TextEditingController? textFieldComlementoTextController;
  String? Function(BuildContext, String?)?
      textFieldComlementoTextControllerValidator;
  // State field(s) for TextField_endereco widget.
  FocusNode? textFieldEnderecoFocusNode;
  TextEditingController? textFieldEnderecoTextController;
  String? Function(BuildContext, String?)?
      textFieldEnderecoTextControllerValidator;
  String? _textFieldEnderecoTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório';
    }

    return null;
  }

  // State field(s) for TextField_bairro widget.
  FocusNode? textFieldBairroFocusNode;
  TextEditingController? textFieldBairroTextController;
  String? Function(BuildContext, String?)?
      textFieldBairroTextControllerValidator;
  String? _textFieldBairroTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório';
    }

    return null;
  }

  // State field(s) for TextField_cidade widget.
  FocusNode? textFieldCidadeFocusNode;
  TextEditingController? textFieldCidadeTextController;
  String? Function(BuildContext, String?)?
      textFieldCidadeTextControllerValidator;
  String? _textFieldCidadeTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório';
    }

    return null;
  }

  // State field(s) for TextField_estado widget.
  FocusNode? textFieldEstadoFocusNode;
  TextEditingController? textFieldEstadoTextController;
  String? Function(BuildContext, String?)?
      textFieldEstadoTextControllerValidator;
  String? _textFieldEstadoTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório';
    }

    return null;
  }

  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController;
  // State field(s) for TextField_numeroCartao widget.
  FocusNode? textFieldNumeroCartaoFocusNode;
  TextEditingController? textFieldNumeroCartaoTextController;
  String? Function(BuildContext, String?)?
      textFieldNumeroCartaoTextControllerValidator;
  String? _textFieldNumeroCartaoTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório';
    }

    if (val.length < 16) {
      return 'Requires at least 16 characters.';
    }
    if (val.length > 16) {
      return 'Maximum 16 characters allowed, currently ${val.length}.';
    }

    return null;
  }

  // State field(s) for TextField_nomeCartao widget.
  FocusNode? textFieldNomeCartaoFocusNode;
  TextEditingController? textFieldNomeCartaoTextController;
  String? Function(BuildContext, String?)?
      textFieldNomeCartaoTextControllerValidator;
  String? _textFieldNomeCartaoTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório';
    }

    if (val.length < 1) {
      return 'Requires at least 1 characters.';
    }

    return null;
  }

  // State field(s) for TextField_mesCartao widget.
  FocusNode? textFieldMesCartaoFocusNode;
  TextEditingController? textFieldMesCartaoTextController;
  String? Function(BuildContext, String?)?
      textFieldMesCartaoTextControllerValidator;
  String? _textFieldMesCartaoTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return '!';
    }

    if (val.length < 2) {
      return 'Requires at least 2 characters.';
    }
    if (val.length > 2) {
      return 'Maximum 2 characters allowed, currently ${val.length}.';
    }

    return null;
  }

  // State field(s) for TextField_anoCartao widget.
  FocusNode? textFieldAnoCartaoFocusNode;
  TextEditingController? textFieldAnoCartaoTextController;
  String? Function(BuildContext, String?)?
      textFieldAnoCartaoTextControllerValidator;
  String? _textFieldAnoCartaoTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return '!';
    }

    if (val.length < 4) {
      return 'Formato AAAA';
    }
    if (val.length > 4) {
      return 'Maximum 4 characters allowed, currently ${val.length}.';
    }

    return null;
  }

  // State field(s) for TextField_cvv widget.
  FocusNode? textFieldCvvFocusNode;
  TextEditingController? textFieldCvvTextController;
  String? Function(BuildContext, String?)? textFieldCvvTextControllerValidator;
  String? _textFieldCvvTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return '!';
    }

    if (val.length < 3) {
      return 'XXX';
    }
    if (val.length > 3) {
      return 'Maximum 3 characters allowed, currently ${val.length}.';
    }

    return null;
  }

  // State field(s) for DropDown_parcelas widget.
  int? dropDownParcelasValue;
  FormFieldController<int>? dropDownParcelasValueController;
  // Stores action output result for [Backend Call - API (Pix Mercado Pago)] action in Button widget.
  ApiCallResponse? outPix;
  // Stores action output result for [Backend Call - API (Card to Token)] action in Button widget.
  ApiCallResponse? tokenOUT;
  // Stores action output result for [Backend Call - API (CC Mercado Pago)] action in Button widget.
  ApiCallResponse? ccOUT;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  PedidosRecord? pedido;
  // Stores action output result for [Custom Action - baseToByteArgumento] action in Button widget.
  List<FFUploadedFile>? pdfsToUploadCheckoutOUT;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  PedidoInfosRecord? pedidoInfo;
  // Stores action output result for [Custom Action - createNewUser] action in Button widget.
  String? registroCheckout;
  // Model for Footer component.
  late FooterModel footerModel;

  @override
  void initState(BuildContext context) {
    drawerModel = createModel(context, () => DrawerModel());
    headerLineModel = createModel(context, () => HeaderLineModel());
    textFieldNomeTextControllerValidator =
        _textFieldNomeTextControllerValidator;
    textFieldSobrenomeTextControllerValidator =
        _textFieldSobrenomeTextControllerValidator;
    textFieldCpfTextControllerValidator = _textFieldCpfTextControllerValidator;
    textFieldEmailTextControllerValidator =
        _textFieldEmailTextControllerValidator;
    textFieldTelefoneTextControllerValidator =
        _textFieldTelefoneTextControllerValidator;
    textFieldCepTextControllerValidator = _textFieldCepTextControllerValidator;
    textFieldNumeroTextControllerValidator =
        _textFieldNumeroTextControllerValidator;
    textFieldEnderecoTextControllerValidator =
        _textFieldEnderecoTextControllerValidator;
    textFieldBairroTextControllerValidator =
        _textFieldBairroTextControllerValidator;
    textFieldCidadeTextControllerValidator =
        _textFieldCidadeTextControllerValidator;
    textFieldEstadoTextControllerValidator =
        _textFieldEstadoTextControllerValidator;
    textFieldNumeroCartaoTextControllerValidator =
        _textFieldNumeroCartaoTextControllerValidator;
    textFieldNomeCartaoTextControllerValidator =
        _textFieldNomeCartaoTextControllerValidator;
    textFieldMesCartaoTextControllerValidator =
        _textFieldMesCartaoTextControllerValidator;
    textFieldAnoCartaoTextControllerValidator =
        _textFieldAnoCartaoTextControllerValidator;
    textFieldCvvTextControllerValidator = _textFieldCvvTextControllerValidator;
    footerModel = createModel(context, () => FooterModel());
  }

  @override
  void dispose() {
    drawerModel.dispose();
    headerLineModel.dispose();
    textFieldNomeFocusNode?.dispose();
    textFieldNomeTextController?.dispose();

    textFieldSobrenomeFocusNode?.dispose();
    textFieldSobrenomeTextController?.dispose();

    textFieldCpfFocusNode?.dispose();
    textFieldCpfTextController?.dispose();

    textFieldEmailFocusNode?.dispose();
    textFieldEmailTextController?.dispose();

    textFieldTelefoneFocusNode?.dispose();
    textFieldTelefoneTextController?.dispose();

    textFieldCepFocusNode?.dispose();
    textFieldCepTextController?.dispose();

    textFieldNumeroFocusNode?.dispose();
    textFieldNumeroTextController?.dispose();

    textFieldComlementoFocusNode?.dispose();
    textFieldComlementoTextController?.dispose();

    textFieldEnderecoFocusNode?.dispose();
    textFieldEnderecoTextController?.dispose();

    textFieldBairroFocusNode?.dispose();
    textFieldBairroTextController?.dispose();

    textFieldCidadeFocusNode?.dispose();
    textFieldCidadeTextController?.dispose();

    textFieldEstadoFocusNode?.dispose();
    textFieldEstadoTextController?.dispose();

    textFieldNumeroCartaoFocusNode?.dispose();
    textFieldNumeroCartaoTextController?.dispose();

    textFieldNomeCartaoFocusNode?.dispose();
    textFieldNomeCartaoTextController?.dispose();

    textFieldMesCartaoFocusNode?.dispose();
    textFieldMesCartaoTextController?.dispose();

    textFieldAnoCartaoFocusNode?.dispose();
    textFieldAnoCartaoTextController?.dispose();

    textFieldCvvFocusNode?.dispose();
    textFieldCvvTextController?.dispose();

    footerModel.dispose();
  }

  /// Action blocks.
  Future setAplicabilidade(BuildContext context) async {}

  /// Additional helper methods.
  String? get radioButtonValue => radioButtonValueController?.value;
}
