import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'pop_model.dart';
export 'pop_model.dart';

class PopWidget extends StatefulWidget {
  const PopWidget({super.key});

  @override
  State<PopWidget> createState() => _PopWidgetState();
}

class _PopWidgetState extends State<PopWidget> {
  late PopModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PopModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height * 1,
      decoration: BoxDecoration(),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            constraints: BoxConstraints(
              maxWidth: 550,
              maxHeight: 665,
            ),
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
              borderRadius: BorderRadius.circular(5),
            ),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 20),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(10, 2, 10, 0),
                    child: Text(
                      'COMO USAR',
                      textAlign: TextAlign.justify,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Montserrat',
                            color: FlutterFlowTheme.of(context).primaryText,
                            fontSize: 14,
                            letterSpacing: 0,
                            fontWeight: FontWeight.normal,
                          ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 20),
                    child: Text(
                      '01 - Envie seus arquivos aqui (somente arquivos pdf).\n\n02 -  Caso você tenha vários arquivos para dispor em uma mesma encadernação, formando uma apostila, é necessário nos indicar a ordem em que esses arquivos devem ser organizados. A melhor forma de fazer isso é renomeando os arquivos, incluindo um número na frente do nome original de cada arquivo (esse número deverá corresponder a ordem em que você deseja que cada arquivo entre na organização da sua apostila). Ex.: \"01 - Português - Aula 1.pdf\",  \"02 - Português - Aula2,pdf\", \"03 - Literatura - Aula 1.pdf\", \"04 - Literatura - Aula 2.pdf\", \"05 - Matemática - Aula1.pdf\", etc...  \n\n03 - Caso sua(s) apostila(s) tenham arquivos separados para capa e miolo (conteúdo), é preciso renomear o arquivo da capa de forma indicar o conteúdo a que ela pertence. Ex.: \"Apostila de Biologia.pdf\" (arquivo da apostila) e \"CAPA - Apostila de Biologia.pdf\" (arquivo da capa). \n\n04 - Papel sultite 75g é o papel A4 comum de resma (tipo Chamex).  \n\n05 - Papel sulfite 90g é o papel A4 premium, ou seja, é um pouco mais grosso que o papel A4 comum e serve para impressões com grande consumo de tinta.  \n\nO site lê automaticamente a quantidade de páginas ao enviar o arquivo PDF e já calcula a quantidade de encadernações necessárias de acordo com a opção selecionada. \n\nCASO TENHA DÚVIDA OU PROBLEMA COM O ENVIO DOS ARQUIVOS, FALE COM A GENTE PELO WHATSAPP.',
                      textAlign: TextAlign.start,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Montserrat',
                            color: FlutterFlowTheme.of(context).primaryText,
                            fontSize: 14,
                            letterSpacing: 0,
                            fontWeight: FontWeight.normal,
                          ),
                    ),
                  ),
                  FFButtonWidget(
                    onPressed: () async {
                      Navigator.pop(context);
                    },
                    text: 'ENTENDI',
                    options: FFButtonOptions(
                      height: 40,
                      padding: EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
                      iconPadding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                      color: FlutterFlowTheme.of(context).primary,
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                fontFamily: 'Inter',
                                color: Colors.white,
                                letterSpacing: 0,
                              ),
                      elevation: 3,
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
