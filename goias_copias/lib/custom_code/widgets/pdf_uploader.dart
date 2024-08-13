// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:io';
import 'dart:typed_data';
import 'package:file_picker/file_picker.dart';
import 'dart:convert';

import 'package:flutter/foundation.dart';

class PdfUploader extends StatefulWidget {
  const PdfUploader({
    super.key,
    required this.width,
    required this.height,
    this.maxSizeInBytes,
  });

  final double width;
  final double height;
  final int? maxSizeInBytes;

  @override
  State<PdfUploader> createState() => _PdfUploaderState();
}

class _PdfUploaderState extends State<PdfUploader>
    with AutomaticKeepAliveClientMixin {
  List<Uint8List>? selectedBytes;
  List<String>? selectedFileNames;
  void Function(Uint8List bytes)? onPdfSelected;
  void Function()? onPdfRemoved;
  bool isProcessing = false;

  @override
  bool get wantKeepAlive => true;

  Future<void> _selectFile() async {
    try {
      print('Tentando selecionar arquivo(s)...');
      setState(() {
        isProcessing = true; // Começa o processamento
      });

      final result = await FilePicker.platform.pickFiles(
        type: FileType.custom,
        allowedExtensions: ['pdf'],
        allowMultiple: true,
      );

      if (result != null && result.files.isNotEmpty) {
        final List<Uint8List> bytesList = [];
        final List<String> fileNames = [];

        for (var file in result.files) {
          if (file.bytes != null) {
            if (widget.maxSizeInBytes != null &&
                file.bytes!.length > widget.maxSizeInBytes!) {
              print(
                  'Arquivo "${file.name}" excede o tamanho máximo de ${widget.maxSizeInBytes} bytes');
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(
                      'Arquivo "${file.name}" excede o tamanho máximo permitido.'),
                ),
              );
              continue;
            }
            bytesList.add(file.bytes!);
            fileNames.add(file.name);
          } else {
            print('Nenhum arquivo selecionado');
          }
        }

        setState(() {
          selectedBytes = bytesList;
          selectedFileNames = fileNames;
        });

        await _updateFFAppState(); // Aguarda a atualização do estado
        print(
            'Todos os arquivos PDF foram adicionados com sucesso ao FFAppState');
      } else {
        print('Nenhum arquivo selecionado');
      }
    } catch (e) {
      print('Erro ao selecionar arquivo: $e');
    } finally {
      setState(() {
        isProcessing = false; // Finaliza o processamento
      });
    }
  }

  Future<void> _updateFFAppState() async {
    if (selectedBytes != null && selectedBytes!.isNotEmpty) {
      final base64Strings =
          selectedBytes!.map((bytes) => base64Encode(bytes)).toList();
      final base64Concatenated =
          base64Strings.join(', '); // Corrigido para base64Concatenated
      FFAppState().pdfString = base64Concatenated;
      // print('Base64 concatenado: $base64Concatenated');
    } else {
      FFAppState().pdfString = "null";
      print(
          'Nenhum arquivo restante, FFAppState().pdfString definido como null');
    }
  }

  void _removeFile(int index) {
    setState(() {
      selectedBytes!.removeAt(index);
      selectedFileNames!.removeAt(index);
      _updateFFAppState(); // Atualiza o estado após remoção
    });

    if (onPdfRemoved != null) {
      onPdfRemoved!();
    }
  }

  @override
  Widget build(BuildContext context) {
    super.build(context); // Necessário ao usar AutomaticKeepAliveClientMixin
    print('Construindo widget PdfUploader');
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MouseRegion(
          cursor: SystemMouseCursors.click,
          child: GestureDetector(
            onTap: _selectFile,
            child: Container(
              width: widget.width,
              height: widget.height,
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  if (selectedFileNames != null &&
                      selectedFileNames!.isNotEmpty)
                    SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          for (var i = 0; i < selectedFileNames!.length; i++)
                            Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: Text(
                                      selectedFileNames![i],
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () => _removeFile(i),
                                    child: const Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Icon(
                                        Icons.close,
                                        color: Colors.red,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                        ],
                      ),
                    ),
                  if (selectedFileNames == null || selectedFileNames!.isEmpty)
                    Center(
                      child: Text('Selecione os arquivos.'),
                    ),
                  if (isProcessing) // Exibe o CircularProgressIndicator
                    Center(
                      child: CircularProgressIndicator(),
                    ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  void setPdfSelectedCallback(void Function(Uint8List bytes) callback) {
    onPdfSelected = callback;
  }

  void setPdfRemovedCallback(void Function() callback) {
    onPdfRemoved = callback;
  }
}
