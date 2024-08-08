// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

Future<String> createNewUser(
  String email,
  String password,
  String phoneNumber,
  String displayName,
  String sobrenome,
  String cpf,
  String cep,
  int numero,
  String complemento,
  String endereco,
  String bairro,
  String cidade,
  String estado,
) async {
  try {
    UserCredential userCredential =
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );

    User? user = userCredential.user;

    if (user != null) {
      // Cria um documento no Firestore com o UID do usuário
      await FirebaseFirestore.instance.collection('users').doc(user.uid).set({
        'email': user.email,
        'phone_number': phoneNumber,
        'display_name': displayName,
        'sobrenome': sobrenome,
        'cpf': cpf,
        'cep': cep,
        'numero': numero,
        'complemento': complemento,
        'endereco': endereco,
        'bairro': bairro,
        'cidade': cidade,
        'estado': estado,
        'createdAt': FieldValue.serverTimestamp(),
        // Adicione outros campos que você deseja armazenar
      });
    }
    return password;
  } on FirebaseAuthException catch (e) {
    if (e.code == 'weak-password') {
      print('The password provided is too weak.');
    } else if (e.code == 'email-already-in-use') {
      print('The account already exists for that email.');
    }
  } catch (e) {
    print(e);
  }
  return '';
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
