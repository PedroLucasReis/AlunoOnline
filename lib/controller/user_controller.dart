// ignore_for_file: depend_on_referenced_packages
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

  UserController() {
    User? loged = FirebaseAuth.instance.currentUser;
    if (loged != null) {
      try {
        loadCurrentUser();
      } catch (e) {
        userMain.setName('Desconhecido');
        userMain.setCode('000000');
      }
    }
  }

  Future<void> signUp(
      {required String name,
      required String code,
      required String email,
      required String pass,
      required String confpass,
      required VoidCallback onSuccess,
      required VoidCallback weakpass,
      required VoidCallback usedemail,
      required VoidCallback unknownerror,
      required VoidCallback noconected}) async {
    isLoading = true;
    notifyListeners();

    bool? state;
    state = await SystemController().conectionTest();

    if (state == false) {
      noconected();
    } else {
      try {
        await FirebaseAuth.instance
            .createUserWithEmailAndPassword(email: email, password: pass);
        saveUserData(name: name, code: code);
        onSuccess();
      } catch (e) {
        // Ocorreu um erro durante a criação do usuário
        if (e is FirebaseAuthException) {
          // Lidar com erros específicos do FirebaseAuth
          if (e.code == 'weak-password') {
            weakpass();
          } else if (e.code == 'email-already-in-use') {
            usedemail();
          } else {
            unknownerror();
          }
        } else {
          // Lidar com outros erros
          unknownerror();
        }
      }
      isLoading = false;
      notifyListeners();
    }
  }

  //Validate confirm code of phone number
  void signIn(
      {required String email,
      required String pass,
      required VoidCallback onSuccess,
      required VoidCallback notfound,
      required VoidCallback wrongpass,
      required VoidCallback unknownerror,
      required VoidCallback noconected}) async {
    isLoading = true;
    notifyListeners();

    bool? state;
    state = await SystemController().conectionTest();

    if (state == false) {
      noconected();
    } else {
      try {
        await FirebaseAuth.instance
            .signInWithEmailAndPassword(email: email, password: pass)
            .then((value) {
          loadCurrentUser();
          onSuccess();
        });
      } catch (e) {
        // Ocorreu um erro durante o login
        if (e is FirebaseAuthException) {
          // Lidar com erros específicos do FirebaseAuth
          if (e.code == 'user-not-found') {
            notfound();
          } else if (e.code == 'wrong-password') {
            wrongpass();
          } else {
            unknownerror();
            print(e);
          }
        } else {
          // Lidar com outros erros
          unknownerror();
        }
      }
    }

    isLoading = false;
    notifyListeners();
  }

  //Saves user data on Firebase database
  Future<void> saveUserData({
    String? name,
    String? code,
    VoidCallback? onSuccess,
    VoidCallback? onFail,
  }) async {
    isLoading = true;
    notifyListeners();
    User? user = FirebaseAuth.instance.currentUser;

    if (user != null) {
      try {
        userMain.setAll({'name': name, 'code': code});
        await FirebaseFirestore.instance
            .collection("users")
            .doc(user.uid)
            .set(userMain.getAll());
        if (onSuccess != null) {
          onSuccess();
        }
      } catch (e) {
        if (onFail != null) {
          onFail();
        }
      }
    }
    isLoading = false;
    notifyListeners();
  }

  Future<void> loadCurrentUser() async {
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

  Future<void> recpass({
    required String email,
    required VoidCallback onSuccess,
    required VoidCallback onFail,
  }) async {
    try {
      FirebaseAuth.instance.sendPasswordResetEmail(email: email);
      onSuccess();
    } catch (e) {
      onFail();
    }
  }
}
