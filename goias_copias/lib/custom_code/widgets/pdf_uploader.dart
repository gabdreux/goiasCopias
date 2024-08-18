// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:io';
import 'dart:typed_data';
import 'package:file_picker/file_picker.dart';
import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:hive/hive.dart';

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

class _PdfUploaderState extends State<PdfUploader> {
  List<Uint8List>? selectedBytes;
  List<String>? selectedFileNames;
  void Function(Uint8List bytes)? onPdfSelected;
  void Function()? onPdfRemoved;

  @override
  void initState() {
    super.initState();
    _initializeHive();
  }

  Future<void> _initializeHive() async {
    // Abre a caixa do Hive para PDFs
    await Hive.openBox<Uint8List>('PDFsCache');
  }

  Future<void> _selectFile() async {
    try {
      print('Tentando selecionar arquivo(s)...');
      final result = await FilePicker.platform.pickFiles(
        type: FileType.custom,
        allowedExtensions: ['pdf'],
        allowMultiple: true,
      );

      if (result != null && result.files.isNotEmpty) {
        var box = Hive.box<Uint8List>('PDFsCache');
        await box.clear();

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

            // Armazenar o PDF em Hive
            var box = Hive.box<Uint8List>('PDFsCache');
            await box.put(file.name, file.bytes!);
          } else {
            print('Nenhum arquivo selecionado');
          }
        }

        setState(() {
          selectedBytes = bytesList;
          selectedFileNames = fileNames;
        });

        _updateFFAppState();
      } else {
        print('Nenhum arquivo selecionado');
      }
    } catch (e) {
      print('Erro ao selecionar arquivo: $e');
    }
  }

  void _updateFFAppState() {
    if (selectedBytes != null && selectedBytes!.isNotEmpty) {
      // Aqui, estamos atualizando o estado diretamente sem usar base64
      FFAppState().pdfString = "PDFs armazenados no cache.";
      print('PDFs armazenados no cache.');
    } else {
      FFAppState().pdfString = "null";
      print(
          'Nenhum arquivo restante, FFAppState().pdfString definido como null');
    }
  }

  void _removeFile(int index) async {
    if (selectedBytes != null && selectedFileNames != null) {
      final fileName = selectedFileNames![index];

      // Remover o PDF do Hive
      var box = Hive.box<Uint8List>('PDFsCache');
      await box.delete(fileName);

      setState(() {
        selectedBytes!.removeAt(index);
        selectedFileNames!.removeAt(index);
        _updateFFAppState();
      });

      if (onPdfRemoved != null) {
        onPdfRemoved!();
      }
    }
  }

  @override
  Widget build(BuildContext context) {
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
