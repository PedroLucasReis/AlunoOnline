import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:myproject/controller/system_controller.dart';
import 'package:scoped_model/scoped_model.dart';

import 'package:flutter/material.dart';

import '../model/users.dart';

class UserController extends Model {
  bool isLoading = false;

  final UserModel userMain = UserModel();

  Future<void> signUp(
      {required String email,
      required String pass,
      required VoidCallback onSuccess,
      required VoidCallback confirmCode,
      required VoidCallback invalidPhone,
      required VoidCallback verifyFail,
      required VoidCallback conectionFail}) async {
    isLoading = true;
    notifyListeners();

    try {
      await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: pass);
    } catch (e) {
      // Ocorreu um erro durante a criação do usuário
      if (e is FirebaseAuthException) {
        // Lidar com erros específicos do FirebaseAuth
        if (e.code == 'weak-password') {
          print('A senha é muito fraca.');
        } else if (e.code == 'email-already-in-use') {
          print('O email já está em uso por outra conta.');
        } else {
          print('Erro desconhecido: ${e.message}');
        }
      } else {
        // Lidar com outros erros
        print('Erro desconhecido: $e');
      }
    }
  }

  //Validate confirm code of phone number
  Future<void> signIn({
    required String email,
    required String pass,
    required VoidCallback onSuccess,
    required VoidCallback invalidCode,
    required VoidCallback onFail,
  }) async {
    isLoading = true;
    notifyListeners();
    bool? state;

    state = await SystemController().conectionTest();

    if (state == false) {
      onFail();
    } else {
      try {
        FirebaseAuth.instance
            .signInWithEmailAndPassword(email: email, password: pass);
        onSuccess();
      } catch (e) {
        // Ocorreu um erro durante o login
        if (e is FirebaseAuthException) {
          // Lidar com erros específicos do FirebaseAuth
          if (e.code == 'user-not-found') {
            print('Usuário não encontrado.');
          } else if (e.code == 'wrong-password') {
            print('Senha incorreta.');
          } else {
            print('Erro desconhecido: ${e.message}');
          }
        } else {
          // Lidar com outros erros
          print('Erro desconhecido: $e');
        }
      }
    }

    isLoading = false;
    notifyListeners();
  }

  //Saves user data on Firebase database
  Future<void> saveUserData({
    String? name,
    String? skinName,
    required VoidCallback onSuccess,
    required VoidCallback onFail,
  }) async {
    isLoading = true;
    notifyListeners();
    User? user = FirebaseAuth.instance.currentUser;

    if (user != null) {
      try {
        if (skinName != null) {
          userMain.setSkinName(skinName);
        }
        await FirebaseFirestore.instance
            .collection("users")
            .doc(user.phoneNumber)
            .set(userMain.getAll());
        if (name != null) {
          await user.updateDisplayName(name);
        }
        onSuccess();
      } catch (e) {
        onFail();
      }
    }
    isLoading = false;
    notifyListeners();
  }

  Future<void> _loadCurrentUser() async {
    User? user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      DocumentSnapshot docUser = await FirebaseFirestore.instance
          .collection("users")
          .doc(user.uid)
          .get(const GetOptions());
      userMain.setAll({
        "name": docUser.get("name"),
        "email": docUser.get("email"),
      });
    }
    isLoading = false;
    notifyListeners();
  }

  void logout() {
    FirebaseAuth.instance.signOut();
    userMain.setAll({});
    notifyListeners();
  }

  String? userUid() {
    User? user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      return user.uid;
    }
    return null;
  }
}
