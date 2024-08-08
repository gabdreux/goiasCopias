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
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'carrinho_model.dart';
export 'carrinho_model.dart';

class CarrinhoWidget extends StatefulWidget {
  const CarrinhoWidget({super.key});

  @override
  State<CarrinhoWidget> createState() => _CarrinhoWidgetState();
}

class _CarrinhoWidgetState extends State<CarrinhoWidget> {
  late CarrinhoModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CarrinhoModel());

    _model.textController ??= TextEditingController(text: FFAppState().cep);
    _model.textFieldFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              print('FloatingActionButton pressed ...');
            },
            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
            elevation: 8.0,
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 2.0, 0.0, 0.0),
              child: InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  await launchURL('https://wa.me/5562999338861');
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(24.0),
                  child: Image.asset(
                    'assets/images/19490735-logotipo-do-whatsapp-do-logotipo-do-icone-do-whatsapp-gratis-gratis-vetor.jpg',
                    width: 300.0,
                    height: 288.0,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
          drawer: Drawer(
            elevation: 16.0,
            child: wrapWithModel(
              model: _model.drawerModel,
              updateCallback: () => setState(() {}),
              child: DrawerWidget(),
            ),
          ),
          body: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                width: 100.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    if (responsiveVisibility(
                      context: context,
                      phone: false,
                      tablet: false,
                      tabletLandscape: false,
                    ))
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            40.0, 12.0, 40.0, 12.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/images/gois_cpias.gif',
                                height: 80.0,
                                fit: BoxFit.contain,
                              ),
                            ),
                            if (responsiveVisibility(
                              context: context,
                              phone: false,
                              tablet: false,
                              tabletLandscape: false,
                            ))
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    60.0, 10.0, 0.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        context.pushNamed('Home');
                                      },
                                      child: Text(
                                        'INÍCIO',
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Montserrat',
                                              fontSize: 16.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                      ),
                                    ),
                                    InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        context.pushNamed(
                                          'Loja',
                                          queryParameters: {
                                            'categoria': serializeParam(
                                              'Impressao',
                                              ParamType.String,
                                            ),
                                          }.withoutNulls,
                                        );
                                      },
                                      child: Text(
                                        'IMPRESSÃO LASER',
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Montserrat',
                                              fontSize: 16.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                      ),
                                    ),
                                    InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        context.pushNamed(
                                          'Loja',
                                          queryParameters: {
                                            'categoria': serializeParam(
                                              'Impressao',
                                              ParamType.String,
                                            ),
                                          }.withoutNulls,
                                        );
                                      },
                                      child: Text(
                                        'ENCADERNAÇÃO',
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Montserrat',
                                              fontSize: 16.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                      ),
                                    ),
                                    InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        context.pushNamed(
                                          'Loja',
                                          queryParameters: {
                                            'categoria': serializeParam(
                                              'Apostilas',
                                              ParamType.String,
                                            ),
                                          }.withoutNulls,
                                        );
                                      },
                                      child: Text(
                                        'APOSTILAS',
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Montserrat',
                                              fontSize: 16.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                      ),
                                    ),
                                    InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        await launchURL(
                                            'https://wa.me/5562999338861');
                                      },
                                      child: Text(
                                        'CONTATO',
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Montserrat',
                                              fontSize: 16.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                      ),
                                    ),
                                    if (currentUserEmail ==
                                        'goiascopias.adm@gmail.com')
                                      InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          context.pushNamed('ADM');
                                        },
                                        child: Text(
                                          'EDITAR LOJA',
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Montserrat',
                                                fontSize: 16.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w500,
                                              ),
                                        ),
                                      ),
                                  ].divide(SizedBox(width: 20.0)),
                                ),
                              ),
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                FFAppState().Login = true;
                                setState(() {});

                                context.pushNamed('Home');
                              },
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      if (currentUserEmail != null &&
                                          currentUserEmail != '') {
                                        context.pushNamed('UserArea');
                                      }
                                    },
                                    child: Icon(
                                      Icons.person,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      size: 24.0,
                                    ),
                                  ),
                                  if (currentUserEmail == null ||
                                      currentUserEmail == '')
                                    Text(
                                      'Entrar/Cadastrar',
                                      textAlign: TextAlign.center,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Rajdhani',
                                            fontSize: 16.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w500,
                                          ),
                                    ),
                                ].divide(SizedBox(width: 5.0)),
                              ),
                            ),
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                context.pushNamed('Carrinho');
                              },
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Icon(
                                    Icons.shopping_cart,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    size: 24.0,
                                  ),
                                  Text(
                                    'R\$ ${valueOrDefault<String>(
                                      formatNumber(
                                        FFAppState().CarrinhoState.totalTotal,
                                        formatType: FormatType.decimal,
                                        decimalType: DecimalType.commaDecimal,
                                      ),
                                      '0,00',
                                    )}',
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Rajdhani',
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          fontSize: 16.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w500,
                                        ),
                                  ),
                                ].divide(SizedBox(width: 5.0)),
                              ),
                            ),
                          ],
                        ),
                      ),
                    if (responsiveVisibility(
                      context: context,
                      desktop: false,
                    ))
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            10.0, 12.0, 10.0, 12.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  10.0, 0.0, 10.0, 0.0),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  scaffoldKey.currentState!.openDrawer();
                                },
                                child: Icon(
                                  Icons.menu,
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  size: 30.0,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  60.0, 0.0, 0.0, 0.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image.asset(
                                  'assets/images/gois_cpias.gif',
                                  height: 80.0,
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                            if (responsiveVisibility(
                              context: context,
                              phone: false,
                              tablet: false,
                              tabletLandscape: false,
                            ))
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    60.0, 10.0, 0.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text(
                                      'INÍCIO',
                                      textAlign: TextAlign.center,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Rajdhani',
                                            fontSize: 22.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w500,
                                          ),
                                    ),
                                    Text(
                                      'IMPRESSÃO JATO DE TINTA',
                                      textAlign: TextAlign.center,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Rajdhani',
                                            fontSize: 22.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w500,
                                          ),
                                    ),
                                    Text(
                                      'IMPRESSÃO LASER',
                                      textAlign: TextAlign.center,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Rajdhani',
                                            fontSize: 22.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w500,
                                          ),
                                    ),
                                    Text(
                                      'CONTATOS',
                                      textAlign: TextAlign.center,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Rajdhani',
                                            fontSize: 22.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w500,
                                          ),
                                    ),
                                  ].divide(SizedBox(width: 20.0)),
                                ),
                              ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 10.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      if (currentUserEmail != null &&
                                          currentUserEmail != '') {
                                        context.pushNamed('UserArea');
                                      } else {
                                        await showModalBottomSheet(
                                          isScrollControlled: true,
                                          backgroundColor: Colors.transparent,
                                          enableDrag: false,
                                          context: context,
                                          builder: (context) {
                                            return GestureDetector(
                                              onTap: () =>
                                                  FocusScope.of(context)
                                                      .unfocus(),
                                              child: Padding(
                                                padding:
                                                    MediaQuery.viewInsetsOf(
                                                        context),
                                                child: LoginWidget(),
                                              ),
                                            );
                                          },
                                        ).then((value) => safeSetState(() {}));
                                      }
                                    },
                                    child: Icon(
                                      Icons.person,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      size: 24.0,
                                    ),
                                  ),
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      context.pushNamed('Carrinho');
                                    },
                                    child: Icon(
                                      Icons.shopping_cart,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      size: 24.0,
                                    ),
                                  ),
                                ].divide(SizedBox(width: 20.0)),
                              ),
                            ),
                          ],
                        ),
                      ),
                  ],
                ),
              ),
              wrapWithModel(
                model: _model.headerLineModel,
                updateCallback: () => setState(() {}),
                child: HeaderLineWidget(),
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              10.0, 20.0, 10.0, 0.0),
                          child: Container(
                            width: MediaQuery.sizeOf(context).width * 1.0,
                            constraints: BoxConstraints(
                              minHeight: 535.0,
                              maxWidth: 850.0,
                            ),
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  20.0, 20.0, 20.0, 20.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Container(
                                              decoration: BoxDecoration(
                                                color: Color(0xFF4894C1),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        10.0, 10.0, 10.0, 10.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Container(
                                                      width: 50.0,
                                                      decoration:
                                                          BoxDecoration(),
                                                    ),
                                                    Container(
                                                      width: 130.0,
                                                      decoration:
                                                          BoxDecoration(),
                                                      child: Text(
                                                        'Foto',
                                                        textAlign:
                                                            TextAlign.center,
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Montserrat',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryBackground,
                                                                  fontSize:
                                                                      16.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                ),
                                                      ),
                                                    ),
                                                    Container(
                                                      width: 200.0,
                                                      decoration:
                                                          BoxDecoration(),
                                                      child: Text(
                                                        'Produto',
                                                        textAlign:
                                                            TextAlign.center,
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Montserrat',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryBackground,
                                                                  fontSize:
                                                                      16.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                ),
                                                      ),
                                                    ),
                                                    Container(
                                                      width: 120.0,
                                                      decoration:
                                                          BoxDecoration(),
                                                      child: Text(
                                                        'Valor',
                                                        textAlign:
                                                            TextAlign.center,
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Montserrat',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryBackground,
                                                                  fontSize:
                                                                      16.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                ),
                                                      ),
                                                    ),
                                                    Container(
                                                      width: 100.0,
                                                      decoration:
                                                          BoxDecoration(),
                                                      child: Text(
                                                        'Quantidade',
                                                        textAlign:
                                                            TextAlign.center,
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Montserrat',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryBackground,
                                                                  fontSize:
                                                                      16.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                ),
                                                      ),
                                                    ),
                                                    Container(
                                                      width: 130.0,
                                                      decoration:
                                                          BoxDecoration(),
                                                      child: Text(
                                                        'Subtotal',
                                                        textAlign:
                                                            TextAlign.center,
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Montserrat',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryBackground,
                                                                  fontSize:
                                                                      16.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                ),
                                                      ),
                                                    ),
                                                  ].divide(
                                                      SizedBox(width: 8.0)),
                                                ),
                                              ),
                                            ),
                                            Builder(
                                              builder: (context) {
                                                final produtosCarrinho =
                                                    FFAppState()
                                                        .CarrinhoState
                                                        .produtos
                                                        .toList();

                                                return SingleChildScrollView(
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: List.generate(
                                                        produtosCarrinho.length,
                                                        (produtosCarrinhoIndex) {
                                                      final produtosCarrinhoItem =
                                                          produtosCarrinho[
                                                              produtosCarrinhoIndex];
                                                      return Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          border: Border.all(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .alternate,
                                                            width: 1.0,
                                                          ),
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      10.0,
                                                                      10.0,
                                                                      10.0,
                                                                      10.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: [
                                                              Container(
                                                                width: 50.0,
                                                                decoration:
                                                                    BoxDecoration(),
                                                                child: InkWell(
                                                                  splashColor:
                                                                      Colors
                                                                          .transparent,
                                                                  focusColor: Colors
                                                                      .transparent,
                                                                  hoverColor: Colors
                                                                      .transparent,
                                                                  highlightColor:
                                                                      Colors
                                                                          .transparent,
                                                                  onTap:
                                                                      () async {
                                                                    FFAppState()
                                                                        .updateCarrinhoStateStruct(
                                                                      (e) => e
                                                                        ..updateProdutos(
                                                                          (e) =>
                                                                              e.remove(produtosCarrinhoItem),
                                                                        )
                                                                        ..totalTotal = valueOrDefault<double>(
                                                                              FFAppState().CarrinhoState.totalTotal,
                                                                              0.0,
                                                                            ) -
                                                                            produtosCarrinhoItem.subTotal
                                                                        ..subTotalTotal = valueOrDefault<double>(
                                                                              FFAppState().CarrinhoState.subTotalTotal,
                                                                              0.0,
                                                                            ) -
                                                                            produtosCarrinhoItem.subTotal
                                                                        ..pesoTotal = valueOrDefault<double>(
                                                                              FFAppState().CarrinhoState.pesoTotal,
                                                                              0.0,
                                                                            ) -
                                                                            produtosCarrinhoItem.pesoTotalProduto
                                                                        ..alturaTotal = valueOrDefault<double>(
                                                                              FFAppState().CarrinhoState.alturaTotal,
                                                                              0.0,
                                                                            ) -
                                                                            produtosCarrinhoItem.alturaTotalProduto
                                                                        ..larguraTotal = valueOrDefault<double>(
                                                                              FFAppState().CarrinhoState.larguraTotal,
                                                                              0.0,
                                                                            ) -
                                                                            produtosCarrinhoItem.larguraTotalProduto
                                                                        ..espessuraTotal = valueOrDefault<double>(
                                                                              FFAppState().CarrinhoState.espessuraTotal,
                                                                              0.0,
                                                                            ) -
                                                                            produtosCarrinhoItem.espessuraTotalProduto,
                                                                    );
                                                                    setState(
                                                                        () {});
                                                                    FFAppState()
                                                                        .freteItem = [];
                                                                    FFAppState()
                                                                            .indexfrete =
                                                                        999;
                                                                    FFAppState()
                                                                        .updateCarrinhoStateStruct(
                                                                      (e) => e
                                                                        ..totalTotal =
                                                                            valueOrDefault<double>(
                                                                          functions.stringToDoubleSUBTRAI(
                                                                              valueOrDefault<String>(
                                                                                FFAppState().CarrinhoState.totalTotal.toString(),
                                                                                '0',
                                                                              ),
                                                                              valueOrDefault<String>(
                                                                                FFAppState().CarrinhoState.freteTotal.toString(),
                                                                                '0',
                                                                              )),
                                                                          0.0,
                                                                        ),
                                                                    );
                                                                    setState(
                                                                        () {});
                                                                    FFAppState()
                                                                        .updateCarrinhoStateStruct(
                                                                      (e) => e
                                                                        ..freteTotal =
                                                                            null,
                                                                    );
                                                                    setState(
                                                                        () {});
                                                                  },
                                                                  child: Icon(
                                                                    Icons
                                                                        .close_outlined,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .error,
                                                                    size: 24.0,
                                                                  ),
                                                                ),
                                                              ),
                                                              Container(
                                                                width: 130.0,
                                                                decoration:
                                                                    BoxDecoration(),
                                                                child:
                                                                    ClipRRect(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                  child: Image
                                                                      .network(
                                                                    produtosCarrinhoItem
                                                                        .foto,
                                                                    height:
                                                                        50.0,
                                                                    fit: BoxFit
                                                                        .contain,
                                                                  ),
                                                                ),
                                                              ),
                                                              Container(
                                                                width: 200.0,
                                                                decoration:
                                                                    BoxDecoration(),
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Text(
                                                                      valueOrDefault<
                                                                          String>(
                                                                        produtosCarrinhoItem
                                                                            .nome,
                                                                        'Nome',
                                                                      ),
                                                                      textAlign:
                                                                          TextAlign
                                                                              .center,
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Montserrat',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primaryText,
                                                                            fontSize:
                                                                                16.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FontWeight.w500,
                                                                          ),
                                                                    ),
                                                                    if (produtosCarrinhoItem
                                                                            .nome ==
                                                                        'Impressão')
                                                                      Text(
                                                                        'Qnt. Arquivos: ${produtosCarrinhoItem.qntArquivos.toString()}',
                                                                        textAlign:
                                                                            TextAlign.center,
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: 'Montserrat',
                                                                              color: FlutterFlowTheme.of(context).primaryText,
                                                                              fontSize: 16.0,
                                                                              letterSpacing: 0.0,
                                                                              fontWeight: FontWeight.w500,
                                                                            ),
                                                                      ),
                                                                    if (produtosCarrinhoItem
                                                                            .nome ==
                                                                        'Impressão')
                                                                      Text(
                                                                        'Encadernações: ${produtosCarrinhoItem.encadernacoes.toString()}',
                                                                        textAlign:
                                                                            TextAlign.center,
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: 'Montserrat',
                                                                              color: FlutterFlowTheme.of(context).primaryText,
                                                                              fontSize: 16.0,
                                                                              letterSpacing: 0.0,
                                                                              fontWeight: FontWeight.w500,
                                                                            ),
                                                                      ),
                                                                  ].divide(SizedBox(
                                                                      height:
                                                                          5.0)),
                                                                ),
                                                              ),
                                                              Container(
                                                                width: 120.0,
                                                                decoration:
                                                                    BoxDecoration(),
                                                                child: Text(
                                                                  valueOrDefault<
                                                                      String>(
                                                                    produtosCarrinhoItem
                                                                        .valor
                                                                        .toString(),
                                                                    'Valor',
                                                                  ),
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Montserrat',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryText,
                                                                        fontSize:
                                                                            16.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                      ),
                                                                ),
                                                              ),
                                                              Container(
                                                                width: 100.0,
                                                                decoration:
                                                                    BoxDecoration(),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          15.0),
                                                                      child:
                                                                          InkWell(
                                                                        splashColor:
                                                                            Colors.transparent,
                                                                        focusColor:
                                                                            Colors.transparent,
                                                                        hoverColor:
                                                                            Colors.transparent,
                                                                        highlightColor:
                                                                            Colors.transparent,
                                                                        onTap:
                                                                            () async {
                                                                          if (valueOrDefault<int>(
                                                                                produtosCarrinhoItem.quantidade,
                                                                                1,
                                                                              ) >
                                                                              1) {
                                                                            FFAppState().updateCarrinhoStateStruct(
                                                                              (e) => e
                                                                                ..updateProdutos(
                                                                                  (e) => e[produtosCarrinhoIndex]..incrementQuantidade(-1),
                                                                                ),
                                                                            );
                                                                            setState(() {});
                                                                            FFAppState().updateCarrinhoStateStruct(
                                                                              (e) => e
                                                                                ..totalTotal = valueOrDefault<double>(
                                                                                      FFAppState().CarrinhoState.totalTotal,
                                                                                      0.0,
                                                                                    ) +
                                                                                    ((produtosCarrinhoItem.valor *
                                                                                            valueOrDefault<int>(
                                                                                              produtosCarrinhoItem.quantidade,
                                                                                              0,
                                                                                            )) -
                                                                                        valueOrDefault<double>(
                                                                                          produtosCarrinhoItem.subTotal,
                                                                                          0.0,
                                                                                        ))
                                                                                ..subTotalTotal = valueOrDefault<double>(
                                                                                      FFAppState().CarrinhoState.subTotalTotal,
                                                                                      0.0,
                                                                                    ) +
                                                                                    ((produtosCarrinhoItem.valor *
                                                                                            valueOrDefault<int>(
                                                                                              produtosCarrinhoItem.quantidade,
                                                                                              0,
                                                                                            )) -
                                                                                        valueOrDefault<double>(
                                                                                          produtosCarrinhoItem.subTotal,
                                                                                          0.0,
                                                                                        ))
                                                                                ..pesoTotal = valueOrDefault<double>(
                                                                                      FFAppState().CarrinhoState.pesoTotal,
                                                                                      0.0,
                                                                                    ) +
                                                                                    ((produtosCarrinhoItem.peso *
                                                                                            valueOrDefault<int>(
                                                                                              produtosCarrinhoItem.quantidade,
                                                                                              0,
                                                                                            )) -
                                                                                        valueOrDefault<double>(
                                                                                          produtosCarrinhoItem.pesoTotalProduto,
                                                                                          0.0,
                                                                                        ))
                                                                                ..alturaTotal = valueOrDefault<double>(
                                                                                      FFAppState().CarrinhoState.alturaTotal,
                                                                                      0.0,
                                                                                    ) +
                                                                                    ((produtosCarrinhoItem.altura *
                                                                                            valueOrDefault<int>(
                                                                                              produtosCarrinhoItem.quantidade,
                                                                                              0,
                                                                                            )) -
                                                                                        valueOrDefault<double>(
                                                                                          produtosCarrinhoItem.alturaTotalProduto,
                                                                                          0.0,
                                                                                        )),
                                                                            );
                                                                            setState(() {});
                                                                            FFAppState().updateCarrinhoStateStruct(
                                                                              (e) => e
                                                                                ..updateProdutos(
                                                                                  (e) => e[produtosCarrinhoIndex]
                                                                                    ..subTotal = produtosCarrinhoItem.quantidade * produtosCarrinhoItem.valor
                                                                                    ..pesoTotalProduto = produtosCarrinhoItem.quantidade * produtosCarrinhoItem.peso
                                                                                    ..alturaTotalProduto = produtosCarrinhoItem.quantidade * produtosCarrinhoItem.altura
                                                                                    ..larguraTotalProduto = produtosCarrinhoItem.quantidade * produtosCarrinhoItem.largura
                                                                                    ..espessuraTotalProduto = produtosCarrinhoItem.quantidade * produtosCarrinhoItem.espessura,
                                                                                ),
                                                                            );
                                                                            setState(() {});
                                                                            FFAppState().freteItem =
                                                                                [];
                                                                            FFAppState().indexfrete =
                                                                                999;
                                                                            FFAppState().updateCarrinhoStateStruct(
                                                                              (e) => e
                                                                                ..totalTotal = valueOrDefault<double>(
                                                                                  functions.stringToDoubleSUBTRAI(
                                                                                      valueOrDefault<String>(
                                                                                        FFAppState().CarrinhoState.totalTotal.toString(),
                                                                                        '0',
                                                                                      ),
                                                                                      valueOrDefault<String>(
                                                                                        FFAppState().CarrinhoState.freteTotal.toString(),
                                                                                        '0',
                                                                                      )),
                                                                                  0.0,
                                                                                ),
                                                                            );
                                                                            setState(() {});
                                                                            FFAppState().updateCarrinhoStateStruct(
                                                                              (e) => e..freteTotal = null,
                                                                            );
                                                                            setState(() {});
                                                                          }
                                                                        },
                                                                        child:
                                                                            Icon(
                                                                          Icons
                                                                              .minimize_rounded,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primaryText,
                                                                          size:
                                                                              24.0,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Text(
                                                                      valueOrDefault<
                                                                          String>(
                                                                        produtosCarrinhoItem
                                                                            .quantidade
                                                                            .toString(),
                                                                        '1',
                                                                      ),
                                                                      textAlign:
                                                                          TextAlign
                                                                              .center,
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Montserrat',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primaryText,
                                                                            fontSize:
                                                                                16.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FontWeight.w500,
                                                                          ),
                                                                    ),
                                                                    InkWell(
                                                                      splashColor:
                                                                          Colors
                                                                              .transparent,
                                                                      focusColor:
                                                                          Colors
                                                                              .transparent,
                                                                      hoverColor:
                                                                          Colors
                                                                              .transparent,
                                                                      highlightColor:
                                                                          Colors
                                                                              .transparent,
                                                                      onTap:
                                                                          () async {
                                                                        FFAppState()
                                                                            .updateCarrinhoStateStruct(
                                                                          (e) => e
                                                                            ..updateProdutos(
                                                                              (e) => e[produtosCarrinhoIndex]..incrementQuantidade(1),
                                                                            ),
                                                                        );
                                                                        setState(
                                                                            () {});
                                                                        FFAppState()
                                                                            .updateCarrinhoStateStruct(
                                                                          (e) => e
                                                                            ..totalTotal = valueOrDefault<double>(
                                                                                  FFAppState().CarrinhoState.totalTotal,
                                                                                  0.0,
                                                                                ) +
                                                                                ((produtosCarrinhoItem.valor *
                                                                                        valueOrDefault<int>(
                                                                                          produtosCarrinhoItem.quantidade,
                                                                                          0,
                                                                                        )) -
                                                                                    valueOrDefault<double>(
                                                                                      produtosCarrinhoItem.subTotal,
                                                                                      0.0,
                                                                                    ))
                                                                            ..subTotalTotal = valueOrDefault<double>(
                                                                                  FFAppState().CarrinhoState.subTotalTotal,
                                                                                  0.0,
                                                                                ) +
                                                                                ((produtosCarrinhoItem.valor *
                                                                                        valueOrDefault<int>(
                                                                                          produtosCarrinhoItem.quantidade,
                                                                                          0,
                                                                                        )) -
                                                                                    valueOrDefault<double>(
                                                                                      produtosCarrinhoItem.subTotal,
                                                                                      0.0,
                                                                                    ))
                                                                            ..pesoTotal = valueOrDefault<double>(
                                                                                  FFAppState().CarrinhoState.pesoTotal,
                                                                                  0.0,
                                                                                ) +
                                                                                ((produtosCarrinhoItem.peso *
                                                                                        valueOrDefault<int>(
                                                                                          produtosCarrinhoItem.quantidade,
                                                                                          0,
                                                                                        )) -
                                                                                    valueOrDefault<double>(
                                                                                      produtosCarrinhoItem.pesoTotalProduto,
                                                                                      0.0,
                                                                                    ))
                                                                            ..alturaTotal = valueOrDefault<double>(
                                                                                  FFAppState().CarrinhoState.alturaTotal,
                                                                                  0.0,
                                                                                ) +
                                                                                ((produtosCarrinhoItem.altura *
                                                                                        valueOrDefault<int>(
                                                                                          produtosCarrinhoItem.quantidade,
                                                                                          0,
                                                                                        )) -
                                                                                    valueOrDefault<double>(
                                                                                      produtosCarrinhoItem.alturaTotalProduto,
                                                                                      0.0,
                                                                                    )),
                                                                        );
                                                                        setState(
                                                                            () {});
                                                                        FFAppState()
                                                                            .updateCarrinhoStateStruct(
                                                                          (e) => e
                                                                            ..updateProdutos(
                                                                              (e) => e[produtosCarrinhoIndex]
                                                                                ..subTotal = produtosCarrinhoItem.quantidade * produtosCarrinhoItem.valor
                                                                                ..pesoTotalProduto = produtosCarrinhoItem.quantidade * produtosCarrinhoItem.peso
                                                                                ..alturaTotalProduto = produtosCarrinhoItem.quantidade * produtosCarrinhoItem.altura
                                                                                ..larguraTotalProduto = produtosCarrinhoItem.quantidade * produtosCarrinhoItem.largura
                                                                                ..espessuraTotalProduto = produtosCarrinhoItem.quantidade * produtosCarrinhoItem.espessura,
                                                                            ),
                                                                        );
                                                                        setState(
                                                                            () {});
                                                                        FFAppState().freteItem =
                                                                            [];
                                                                        FFAppState().indexfrete =
                                                                            999;
                                                                        FFAppState()
                                                                            .updateCarrinhoStateStruct(
                                                                          (e) => e
                                                                            ..totalTotal = valueOrDefault<double>(
                                                                              functions.stringToDoubleSUBTRAI(
                                                                                  valueOrDefault<String>(
                                                                                    FFAppState().CarrinhoState.totalTotal.toString(),
                                                                                    '0',
                                                                                  ),
                                                                                  valueOrDefault<String>(
                                                                                    FFAppState().CarrinhoState.freteTotal.toString(),
                                                                                    '0',
                                                                                  )),
                                                                              0.0,
                                                                            ),
                                                                        );
                                                                        setState(
                                                                            () {});
                                                                        FFAppState()
                                                                            .updateCarrinhoStateStruct(
                                                                          (e) => e
                                                                            ..freteTotal =
                                                                                null,
                                                                        );
                                                                        setState(
                                                                            () {});
                                                                      },
                                                                      child:
                                                                          Icon(
                                                                        Icons
                                                                            .add_sharp,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryText,
                                                                        size:
                                                                            24.0,
                                                                      ),
                                                                    ),
                                                                  ].divide(SizedBox(
                                                                      width:
                                                                          8.0)),
                                                                ),
                                                              ),
                                                              Container(
                                                                width: 130.0,
                                                                decoration:
                                                                    BoxDecoration(),
                                                                child: Text(
                                                                  formatNumber(
                                                                    produtosCarrinhoItem
                                                                        .subTotal,
                                                                    formatType:
                                                                        FormatType
                                                                            .decimal,
                                                                    decimalType:
                                                                        DecimalType
                                                                            .commaDecimal,
                                                                    currency:
                                                                        'R\$',
                                                                  ),
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Montserrat',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryText,
                                                                        fontSize:
                                                                            16.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                      ),
                                                                ),
                                                              ),
                                                            ].divide(SizedBox(
                                                                width: 8.0)),
                                                          ),
                                                        ),
                                                      );
                                                    }),
                                                  ),
                                                );
                                              },
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10.0, 0.0, 10.0, 0.0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                      ),
                                      child: Visibility(
                                        visible: FFAppState()
                                                .CarrinhoState
                                                .produtos
                                                .length ==
                                            0,
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 20.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 60.0, 0.0, 50.0),
                                                child: Text(
                                                  'SEU CARRINHO ESTÁ VAZIO',
                                                  textAlign: TextAlign.center,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Montserrat',
                                                        color:
                                                            Color(0xFFADADAD),
                                                        fontSize: 18.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                ),
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                children: [
                                                  FFButtonWidget(
                                                    onPressed: () async {
                                                      context.pushNamed(
                                                        'Loja',
                                                        queryParameters: {
                                                          'categoria':
                                                              serializeParam(
                                                            'Apostilas',
                                                            ParamType.String,
                                                          ),
                                                        }.withoutNulls,
                                                      );
                                                    },
                                                    text: 'Voltar',
                                                    options: FFButtonOptions(
                                                      height: 40.0,
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  24.0,
                                                                  0.0,
                                                                  24.0,
                                                                  0.0),
                                                      iconPadding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      textStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleSmall
                                                              .override(
                                                                fontFamily:
                                                                    'Inter',
                                                                color: Colors
                                                                    .white,
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                      elevation: 3.0,
                                                      borderSide: BorderSide(
                                                        color:
                                                            Colors.transparent,
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ].divide(SizedBox(height: 20.0)),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10.0, 0.0, 10.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        if (FFAppState()
                                                .CarrinhoState
                                                .produtos
                                                .length >
                                            0)
                                          Expanded(
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 20.0, 0.0, 0.0),
                                              child: Wrap(
                                                spacing: 0.0,
                                                runSpacing: 40.0,
                                                alignment:
                                                    WrapAlignment.spaceBetween,
                                                crossAxisAlignment:
                                                    WrapCrossAlignment.end,
                                                direction: Axis.horizontal,
                                                runAlignment: WrapAlignment.end,
                                                verticalDirection:
                                                    VerticalDirection.down,
                                                clipBehavior: Clip.none,
                                                children: [
                                                  Container(
                                                    constraints: BoxConstraints(
                                                      maxWidth: 530.0,
                                                    ),
                                                    decoration: BoxDecoration(),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Container(
                                                          height: 210.0,
                                                          decoration:
                                                              BoxDecoration(),
                                                          child: Builder(
                                                            builder: (context) {
                                                              final fretes =
                                                                  FFAppState()
                                                                      .freteItem
                                                                      .toList()
                                                                      .take(3)
                                                                      .toList();

                                                              return Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: List.generate(
                                                                    fretes
                                                                        .length,
                                                                    (fretesIndex) {
                                                                  final fretesItem =
                                                                      fretes[
                                                                          fretesIndex];
                                                                  return Visibility(
                                                                    visible: (fretesIndex ==
                                                                            FFAppState()
                                                                                .indexfrete) ||
                                                                        (FFAppState().indexfrete ==
                                                                            999),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children:
                                                                          [
                                                                        ClipRRect(
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                          child:
                                                                              Image.network(
                                                                            getJsonField(
                                                                              fretesItem,
                                                                              r'''$.company.picture''',
                                                                            ).toString(),
                                                                            width:
                                                                                60.0,
                                                                            height:
                                                                                60.0,
                                                                            fit:
                                                                                BoxFit.contain,
                                                                          ),
                                                                        ),
                                                                        Container(
                                                                          constraints:
                                                                              BoxConstraints(
                                                                            maxWidth:
                                                                                460.0,
                                                                          ),
                                                                          decoration:
                                                                              BoxDecoration(),
                                                                          child:
                                                                              Wrap(
                                                                            spacing:
                                                                                8.0,
                                                                            runSpacing:
                                                                                0.0,
                                                                            alignment:
                                                                                WrapAlignment.start,
                                                                            crossAxisAlignment:
                                                                                WrapCrossAlignment.center,
                                                                            direction:
                                                                                Axis.horizontal,
                                                                            runAlignment:
                                                                                WrapAlignment.start,
                                                                            verticalDirection:
                                                                                VerticalDirection.down,
                                                                            clipBehavior:
                                                                                Clip.none,
                                                                            children: [
                                                                              if (valueOrDefault<bool>(
                                                                                getJsonField(
                                                                                      fretesItem,
                                                                                      r'''$.error''',
                                                                                    ) ==
                                                                                    null,
                                                                                false,
                                                                              ))
                                                                                Text(
                                                                                  getJsonField(
                                                                                    fretesItem,
                                                                                    r'''$.name''',
                                                                                  ).toString(),
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Inter',
                                                                                        letterSpacing: 0.0,
                                                                                      ),
                                                                                ),
                                                                              if (valueOrDefault<bool>(
                                                                                getJsonField(
                                                                                      fretesItem,
                                                                                      r'''$.error''',
                                                                                    ) ==
                                                                                    null,
                                                                                false,
                                                                              ))
                                                                                Text(
                                                                                  '-',
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Inter',
                                                                                        letterSpacing: 0.0,
                                                                                      ),
                                                                                ),
                                                                              if (valueOrDefault<bool>(
                                                                                getJsonField(
                                                                                      fretesItem,
                                                                                      r'''$.error''',
                                                                                    ) ==
                                                                                    null,
                                                                                false,
                                                                              ))
                                                                                Text(
                                                                                  'R\$${getJsonField(
                                                                                    fretesItem,
                                                                                    r'''$.price''',
                                                                                  ).toString()}',
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Inter',
                                                                                        letterSpacing: 0.0,
                                                                                      ),
                                                                                ),
                                                                              if (valueOrDefault<bool>(
                                                                                getJsonField(
                                                                                      fretesItem,
                                                                                      r'''$.error''',
                                                                                    ) ==
                                                                                    null,
                                                                                false,
                                                                              ))
                                                                                Text(
                                                                                  'Entrega: ${getJsonField(
                                                                                    fretesItem,
                                                                                    r'''$.delivery_range.max''',
                                                                                  ).toString()}dias',
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Inter',
                                                                                        letterSpacing: 0.0,
                                                                                      ),
                                                                                ),
                                                                              if (valueOrDefault<bool>(
                                                                                getJsonField(
                                                                                      fretesItem,
                                                                                      r'''$.error''',
                                                                                    ) !=
                                                                                    null,
                                                                                false,
                                                                              ))
                                                                                Text(
                                                                                  'Dimensões do objeto ultrapassam o limite da transportadora.',
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Inter',
                                                                                        letterSpacing: 0.0,
                                                                                      ),
                                                                                ),
                                                                              if (valueOrDefault<bool>(
                                                                                getJsonField(
                                                                                      fretesItem,
                                                                                      r'''$.error''',
                                                                                    ) ==
                                                                                    null,
                                                                                false,
                                                                              ))
                                                                                Theme(
                                                                                  data: ThemeData(
                                                                                    checkboxTheme: CheckboxThemeData(
                                                                                      visualDensity: VisualDensity.compact,
                                                                                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                                                                      shape: RoundedRectangleBorder(
                                                                                        borderRadius: BorderRadius.circular(4.0),
                                                                                      ),
                                                                                    ),
                                                                                    unselectedWidgetColor: FlutterFlowTheme.of(context).secondaryText,
                                                                                  ),
                                                                                  child: Checkbox(
                                                                                    value: _model.checkboxFreteListaValueMap[fretesItem] ??= FFAppState().indexfrete == fretesIndex,
                                                                                    onChanged: (newValue) async {
                                                                                      setState(() => _model.checkboxFreteListaValueMap[fretesItem] = newValue!);
                                                                                      if (newValue!) {
                                                                                        FFAppState().updateCarrinhoStateStruct(
                                                                                          (e) => e
                                                                                            ..freteTotal = valueOrDefault<double>(
                                                                                              double.parse(valueOrDefault<String>(
                                                                                                getJsonField(
                                                                                                  fretesItem,
                                                                                                  r'''$.price''',
                                                                                                )?.toString(),
                                                                                                '0',
                                                                                              )),
                                                                                              0.0,
                                                                                            )
                                                                                            ..totalTotal = valueOrDefault<double>(
                                                                                              functions.stringToDoubleSOMA(
                                                                                                  valueOrDefault<String>(
                                                                                                    FFAppState().CarrinhoState.totalTotal.toString(),
                                                                                                    '0',
                                                                                                  ),
                                                                                                  valueOrDefault<String>(
                                                                                                    getJsonField(
                                                                                                      fretesItem,
                                                                                                      r'''$.price''',
                                                                                                    )?.toString(),
                                                                                                    '0',
                                                                                                  )),
                                                                                              0.0,
                                                                                            ),
                                                                                        );
                                                                                        setState(() {});
                                                                                        FFAppState().indexfrete = valueOrDefault<int>(
                                                                                          fretesIndex,
                                                                                          0,
                                                                                        );
                                                                                        setState(() {});
                                                                                        FFAppState().updateCarrinhoStateStruct(
                                                                                          (e) => e
                                                                                            ..transportadora = getJsonField(
                                                                                              fretesItem,
                                                                                              r'''$.name''',
                                                                                            ).toString()
                                                                                            ..companhia = getJsonField(
                                                                                              fretesItem,
                                                                                              r'''$.company.name''',
                                                                                            ).toString(),
                                                                                        );
                                                                                        setState(() {});
                                                                                      } else {
                                                                                        FFAppState().updateCarrinhoStateStruct(
                                                                                          (e) => e
                                                                                            ..freteTotal = null
                                                                                            ..totalTotal = valueOrDefault<double>(
                                                                                              functions.stringToDoubleSUBTRAI(
                                                                                                  valueOrDefault<String>(
                                                                                                    FFAppState().CarrinhoState.totalTotal.toString(),
                                                                                                    '0',
                                                                                                  ),
                                                                                                  valueOrDefault<String>(
                                                                                                    getJsonField(
                                                                                                      fretesItem,
                                                                                                      r'''$.price''',
                                                                                                    )?.toString(),
                                                                                                    '0',
                                                                                                  )),
                                                                                              0.0,
                                                                                            ),
                                                                                        );
                                                                                        setState(() {});
                                                                                        FFAppState().indexfrete = 999;
                                                                                        setState(() {});
                                                                                      }
                                                                                    },
                                                                                    side: BorderSide(
                                                                                      width: 2,
                                                                                      color: FlutterFlowTheme.of(context).secondaryText,
                                                                                    ),
                                                                                    activeColor: FlutterFlowTheme.of(context).primary,
                                                                                    checkColor: FlutterFlowTheme.of(context).info,
                                                                                  ),
                                                                                ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ].divide(SizedBox(
                                                                              width: 10.0)),
                                                                    ),
                                                                  );
                                                                }).divide(
                                                                  SizedBox(
                                                                      height:
                                                                          10.0),
                                                                  filterFn:
                                                                      (fretesIndex) {
                                                                    final fretesItem =
                                                                        fretes[
                                                                            fretesIndex];
                                                                    return (fretesIndex ==
                                                                            FFAppState()
                                                                                .indexfrete) ||
                                                                        (FFAppState().indexfrete ==
                                                                            999);
                                                                  },
                                                                ),
                                                              );
                                                            },
                                                          ),
                                                        ),
                                                        Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Text(
                                                              'Retirar na Loja:',
                                                              textAlign:
                                                                  TextAlign.end,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Montserrat',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryText,
                                                                    fontSize:
                                                                        14.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600,
                                                                  ),
                                                            ),
                                                            Theme(
                                                              data: ThemeData(
                                                                checkboxTheme:
                                                                    CheckboxThemeData(
                                                                  visualDensity:
                                                                      VisualDensity
                                                                          .compact,
                                                                  materialTapTargetSize:
                                                                      MaterialTapTargetSize
                                                                          .shrinkWrap,
                                                                  shape:
                                                                      RoundedRectangleBorder(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            4.0),
                                                                  ),
                                                                ),
                                                                unselectedWidgetColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryText,
                                                              ),
                                                              child: Checkbox(
                                                                value: _model
                                                                        .checkboxSemFreteValue ??=
                                                                    FFAppState()
                                                                        .semEntrega,
                                                                onChanged:
                                                                    (newValue) async {
                                                                  setState(() =>
                                                                      _model.checkboxSemFreteValue =
                                                                          newValue!);
                                                                  if (newValue!) {
                                                                    FFAppState()
                                                                            .semEntrega =
                                                                        true;
                                                                    setState(
                                                                        () {});
                                                                  } else {
                                                                    FFAppState()
                                                                            .semEntrega =
                                                                        false;
                                                                    setState(
                                                                        () {});
                                                                  }
                                                                },
                                                                side:
                                                                    BorderSide(
                                                                  width: 2,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                                ),
                                                                activeColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                checkColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .info,
                                                              ),
                                                            ),
                                                          ].divide(SizedBox(
                                                              width: 10.0)),
                                                        ),
                                                        Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Text(
                                                                  '*Tempo de produção/embalagem do pedido pode variar de 1 - 4 dias.',
                                                                  textAlign:
                                                                      TextAlign
                                                                          .end,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Montserrat',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryText,
                                                                        fontSize:
                                                                            10.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.w600,
                                                                      ),
                                                                ),
                                                                Text(
                                                                  '*Tire suas dúvidas pelo nosso whatsapp.',
                                                                  textAlign:
                                                                      TextAlign
                                                                          .end,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Montserrat',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryText,
                                                                        fontSize:
                                                                            10.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.w600,
                                                                      ),
                                                                ),
                                                              ],
                                                            ),
                                                          ].divide(SizedBox(
                                                              width: 10.0)),
                                                        ),
                                                        Row(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .end,
                                                          children: [
                                                            Container(
                                                              width: 200.0,
                                                              decoration:
                                                                  BoxDecoration(),
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            8.0,
                                                                            0.0,
                                                                            8.0,
                                                                            0.0),
                                                                child:
                                                                    TextFormField(
                                                                  controller: _model
                                                                      .textController,
                                                                  focusNode: _model
                                                                      .textFieldFocusNode,
                                                                  autofocus:
                                                                      false,
                                                                  obscureText:
                                                                      false,
                                                                  decoration:
                                                                      InputDecoration(
                                                                    labelText:
                                                                        'Informe seu CEP',
                                                                    labelStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Inter',
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                    hintStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Inter',
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                    enabledBorder:
                                                                        UnderlineInputBorder(
                                                                      borderSide:
                                                                          BorderSide(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .alternate,
                                                                        width:
                                                                            2.0,
                                                                      ),
                                                                      borderRadius:
                                                                          const BorderRadius
                                                                              .only(
                                                                        topLeft:
                                                                            Radius.circular(4.0),
                                                                        topRight:
                                                                            Radius.circular(4.0),
                                                                      ),
                                                                    ),
                                                                    focusedBorder:
                                                                        UnderlineInputBorder(
                                                                      borderSide:
                                                                          BorderSide(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primary,
                                                                        width:
                                                                            2.0,
                                                                      ),
                                                                      borderRadius:
                                                                          const BorderRadius
                                                                              .only(
                                                                        topLeft:
                                                                            Radius.circular(4.0),
                                                                        topRight:
                                                                            Radius.circular(4.0),
                                                                      ),
                                                                    ),
                                                                    errorBorder:
                                                                        UnderlineInputBorder(
                                                                      borderSide:
                                                                          BorderSide(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .error,
                                                                        width:
                                                                            2.0,
                                                                      ),
                                                                      borderRadius:
                                                                          const BorderRadius
                                                                              .only(
                                                                        topLeft:
                                                                            Radius.circular(4.0),
                                                                        topRight:
                                                                            Radius.circular(4.0),
                                                                      ),
                                                                    ),
                                                                    focusedErrorBorder:
                                                                        UnderlineInputBorder(
                                                                      borderSide:
                                                                          BorderSide(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .error,
                                                                        width:
                                                                            2.0,
                                                                      ),
                                                                      borderRadius:
                                                                          const BorderRadius
                                                                              .only(
                                                                        topLeft:
                                                                            Radius.circular(4.0),
                                                                        topRight:
                                                                            Radius.circular(4.0),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Inter',
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                  maxLength: 8,
                                                                  validator: _model
                                                                      .textControllerValidator
                                                                      .asValidator(
                                                                          context),
                                                                ),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          10.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                              child:
                                                                  FFButtonWidget(
                                                                onPressed:
                                                                    () async {
                                                                  _model.freteOut =
                                                                      await CalculadoraDeFreteCall
                                                                          .call(
                                                                    cep: _model
                                                                        .textController
                                                                        .text,
                                                                    peso: valueOrDefault<
                                                                        double>(
                                                                      valueOrDefault<
                                                                              double>(
                                                                            FFAppState().CarrinhoState.pesoTotal,
                                                                            0.0,
                                                                          ) /
                                                                          1000,
                                                                      0.0,
                                                                    ),
                                                                    altura: valueOrDefault<
                                                                        double>(
                                                                      FFAppState()
                                                                          .CarrinhoState
                                                                          .alturaTotal,
                                                                      0.0,
                                                                    ),
                                                                    largura:
                                                                        valueOrDefault<
                                                                            double>(
                                                                      FFAppState()
                                                                          .CarrinhoState
                                                                          .larguraTotal,
                                                                      0.0,
                                                                    ),
                                                                    comprimento:
                                                                        valueOrDefault<
                                                                            double>(
                                                                      FFAppState()
                                                                          .CarrinhoState
                                                                          .espessuraTotal,
                                                                      0.0,
                                                                    ),
                                                                  );

                                                                  if ((_model
                                                                          .freteOut
                                                                          ?.succeeded ??
                                                                      true)) {
                                                                    FFAppState().freteItem = functions
                                                                        .filtrafrete(
                                                                            (_model.freteOut?.jsonBody ??
                                                                                ''),
                                                                            'Correios')
                                                                        .toList()
                                                                        .cast<
                                                                            dynamic>();
                                                                    FFAppState()
                                                                            .cep =
                                                                        _model
                                                                            .textController
                                                                            .text;
                                                                    setState(
                                                                        () {});
                                                                  } else {
                                                                    await showDialog(
                                                                      context:
                                                                          context,
                                                                      builder:
                                                                          (alertDialogContext) {
                                                                        return AlertDialog(
                                                                          title:
                                                                              Text('Erro!'),
                                                                          content:
                                                                              Text('Algo deu errado!'),
                                                                          actions: [
                                                                            TextButton(
                                                                              onPressed: () => Navigator.pop(alertDialogContext),
                                                                              child: Text('Ok'),
                                                                            ),
                                                                          ],
                                                                        );
                                                                      },
                                                                    );
                                                                  }

                                                                  setState(
                                                                      () {});
                                                                },
                                                                text:
                                                                    'Calcular',
                                                                options:
                                                                    FFButtonOptions(
                                                                  height: 40.0,
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          24.0,
                                                                          0.0,
                                                                          24.0,
                                                                          0.0),
                                                                  iconPadding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary,
                                                                  textStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmall
                                                                      .override(
                                                                        fontFamily:
                                                                            'Inter',
                                                                        color: Colors
                                                                            .white,
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                  elevation:
                                                                      3.0,
                                                                  borderSide:
                                                                      BorderSide(
                                                                    color: Colors
                                                                        .transparent,
                                                                    width: 1.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ].divide(SizedBox(
                                                          height: 20.0)),
                                                    ),
                                                  ),
                                                  Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.end,
                                                    children: [
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .end,
                                                        children: [
                                                          Container(
                                                            width: 80.0,
                                                            decoration:
                                                                BoxDecoration(),
                                                            child: Text(
                                                              'Subtotal',
                                                              textAlign:
                                                                  TextAlign.end,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Montserrat',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryText,
                                                                    fontSize:
                                                                        14.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600,
                                                                  ),
                                                            ),
                                                          ),
                                                          Container(
                                                            width: 130.0,
                                                            decoration:
                                                                BoxDecoration(),
                                                            child: Text(
                                                              formatNumber(
                                                                FFAppState()
                                                                    .CarrinhoState
                                                                    .subTotalTotal,
                                                                formatType:
                                                                    FormatType
                                                                        .decimal,
                                                                decimalType:
                                                                    DecimalType
                                                                        .commaDecimal,
                                                                currency: 'R\$',
                                                              ),
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Montserrat',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryText,
                                                                    fontSize:
                                                                        14.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .normal,
                                                                  ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .end,
                                                        children: [
                                                          Container(
                                                            width: 80.0,
                                                            decoration:
                                                                BoxDecoration(),
                                                            child: Text(
                                                              'Frete',
                                                              textAlign:
                                                                  TextAlign.end,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Montserrat',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryText,
                                                                    fontSize:
                                                                        14.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600,
                                                                  ),
                                                            ),
                                                          ),
                                                          Container(
                                                            width: 130.0,
                                                            decoration:
                                                                BoxDecoration(),
                                                            child: Text(
                                                              formatNumber(
                                                                FFAppState()
                                                                    .CarrinhoState
                                                                    .freteTotal,
                                                                formatType:
                                                                    FormatType
                                                                        .decimal,
                                                                decimalType:
                                                                    DecimalType
                                                                        .commaDecimal,
                                                                currency: 'R\$',
                                                              ),
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Montserrat',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryText,
                                                                    fontSize:
                                                                        14.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .normal,
                                                                  ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      SizedBox(
                                                        width: 180.0,
                                                        child: Divider(
                                                          thickness: 1.0,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .alternate,
                                                        ),
                                                      ),
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .end,
                                                        children: [
                                                          Container(
                                                            width: 80.0,
                                                            decoration:
                                                                BoxDecoration(),
                                                            child: InkWell(
                                                              splashColor: Colors
                                                                  .transparent,
                                                              focusColor: Colors
                                                                  .transparent,
                                                              hoverColor: Colors
                                                                  .transparent,
                                                              highlightColor:
                                                                  Colors
                                                                      .transparent,
                                                              onTap:
                                                                  () async {},
                                                              child: Text(
                                                                'Total:',
                                                                textAlign:
                                                                    TextAlign
                                                                        .end,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Montserrat',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                      fontSize:
                                                                          14.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600,
                                                                    ),
                                                              ),
                                                            ),
                                                          ),
                                                          Container(
                                                            width: 130.0,
                                                            decoration:
                                                                BoxDecoration(),
                                                            child: Text(
                                                              formatNumber(
                                                                FFAppState()
                                                                    .CarrinhoState
                                                                    .totalTotal,
                                                                formatType:
                                                                    FormatType
                                                                        .decimal,
                                                                decimalType:
                                                                    DecimalType
                                                                        .commaDecimal,
                                                                currency: 'R\$',
                                                              ),
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Montserrat',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryText,
                                                                    fontSize:
                                                                        14.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .normal,
                                                                  ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    20.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: FFButtonWidget(
                                                          onPressed: () async {
                                                            if ((FFAppState()
                                                                        .CarrinhoState
                                                                        .freteTotal >
                                                                    0.0) ||
                                                                (FFAppState()
                                                                        .semEntrega ==
                                                                    true)) {
                                                              context.pushNamed(
                                                                  'Checkout');
                                                            } else {
                                                              await showDialog(
                                                                context:
                                                                    context,
                                                                builder:
                                                                    (alertDialogContext) {
                                                                  return AlertDialog(
                                                                    title: Text(
                                                                        'Atenção!'),
                                                                    content: Text(
                                                                        'Por favor, calcule o frete.'),
                                                                    actions: [
                                                                      TextButton(
                                                                        onPressed:
                                                                            () =>
                                                                                Navigator.pop(alertDialogContext),
                                                                        child: Text(
                                                                            'Ok'),
                                                                      ),
                                                                    ],
                                                                  );
                                                                },
                                                              );
                                                            }
                                                          },
                                                          text:
                                                              'Finalizar Compra',
                                                          options:
                                                              FFButtonOptions(
                                                            height: 40.0,
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        24.0,
                                                                        0.0,
                                                                        24.0,
                                                                        0.0),
                                                            iconPadding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        0.0,
                                                                        0.0),
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primary,
                                                            textStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmall
                                                                    .override(
                                                                      fontFamily:
                                                                          'Inter',
                                                                      color: Colors
                                                                          .white,
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                            elevation: 3.0,
                                                            borderSide:
                                                                BorderSide(
                                                              color: Colors
                                                                  .transparent,
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                        ),
                                                      ),
                                                    ].divide(
                                                        SizedBox(height: 5.0)),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        if (MediaQuery.sizeOf(context).height >= 980.0)
                          Container(
                            width: 100.0,
                            height: 160.0,
                            decoration: BoxDecoration(),
                          ),
                        wrapWithModel(
                          model: _model.footerModel,
                          updateCallback: () => setState(() {}),
                          child: FooterWidget(),
                        ),
                      ].divide(SizedBox(height: 20.0)),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
