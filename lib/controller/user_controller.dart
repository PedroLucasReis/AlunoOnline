// ignore_for_file: depend_on_referenced_packages
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:myproject/controller/system_controller.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:flutter/material.dart';
import '../model/users.dart';

class UserController extends Model {
  bool isLoading = false;
  final UserModel userMain = UserModel();
  List<QueryDocumentSnapshot<Object?>> docs = [];
  int num = 0;

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
        saveUserDataFirst(name: name, code: code);
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
            .signInWithEmailAndPassword(email: email, password: pass);

        loadCurrentUser();

        onSuccess();
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
  Future<void> saveUserDataFirst({
    String name = '...',
    String code = '...',
    String year = '...',
    String seme = '...',
    String ephoc = '...',
    String subj = '...',
    String coll = '...',
    VoidCallback? onSuccess,
    VoidCallback? onFail,
  }) async {
    isLoading = true;
    notifyListeners();
    User? user = FirebaseAuth.instance.currentUser;

    if (user != null) {
      try {
        userMain.setAll({
          'name': name,
          'code': code,
          'year': year,
          'seme': seme,
          'ephoc': ephoc,
          'subj': subj,
          'coll': coll
        });
        await FirebaseFirestore.instance.collection("users").add({
          "uid": user.uid,
          "name": name,
          "code": code,
          'year': year,
          'seme': seme,
          'ephoc': ephoc,
          'subj': subj,
          'coll': coll
        });

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

  //Saves user data on Firebase database
  Future<void> saveUserDataSecond({
    String name = '...',
    String code = '...',
    String year = '...',
    String seme = '...',
    String ephoc = '...',
    String subj = '...',
    String coll = '...',
    VoidCallback? onSuccess,
    VoidCallback? onFail,
  }) async {
    isLoading = true;
    notifyListeners();
    User? user = FirebaseAuth.instance.currentUser;

    if (user != null) {
      try {
        userMain.setAll({
          'name': name,
          'code': code,
          'year': year,
          'seme': seme,
          'ephoc': ephoc,
          'subj': subj,
          'coll': coll
        });
        String docId = '';
        await FirebaseFirestore.instance
            .collection("users")
            .where('uid', isEqualTo: user.uid)
            .get(const GetOptions())
            .then((value) => docId = value.docs[0].id);
        await FirebaseFirestore.instance.collection("users").doc(docId).update({
          "uid": user.uid,
          "name": name,
          "code": code,
          'year': year,
          'seme': seme,
          'ephoc': ephoc,
          'subj': subj,
          'coll': coll
        });

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
      try {
        QuerySnapshot docUser = await FirebaseFirestore.instance
            .collection("users")
            .where('uid', isEqualTo: user.uid)
            .get(const GetOptions());
        Map<String, dynamic> all = userMain.getAll();
        all.addAll({
          "name": docUser.docs[0].get('name'),
          "code": docUser.docs[0].get('code'),
          "year": docUser.docs[0].get('year'),
          "seme": docUser.docs[0].get('seme'),
          "ephoc": docUser.docs[0].get('ephoc'),
          "subj": docUser.docs[0].get('subj'),
          "coll": docUser.docs[0].get('coll'),
        });
        userMain.setAll(all);
      } catch (e) {
        print(e);
        print(user.uid.toString());
      }
    }
    isLoading = false;
    notifyListeners();
  }

  void logout() {
    FirebaseAuth.instance.signOut();
    userMain.setAll({});
  }

  Future<void> recpass({
    required String email,
    required VoidCallback onSuccess,
    required VoidCallback onFail,
  }) async {
    try {
      await FirebaseAuth.instance.sendPasswordResetEmail(email: email);
      onSuccess();
    } catch (e) {
      onFail();
    }
  }

  Future<void> loadRequerList() async {
    User? user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      try {
        QuerySnapshot docUser = await FirebaseFirestore.instance
            .collection("requer")
            .where('uid', isEqualTo: user.uid)
            .orderBy('num', descending: false)
            .get(const GetOptions());
        docs = docUser.docs;
        num = docs.length;
      } catch (e) {
        print(e);
      }

      isLoading = false;
      notifyListeners();
    }
  }

  Future<void> saveRequer({
    String title = '...',
    String descrip = '...',
    VoidCallback? onSuccess,
    VoidCallback? onFail,
  }) async {
    isLoading = true;
    notifyListeners();
    num++;
    User? user = FirebaseAuth.instance.currentUser;

    if (user != null) {
      try {
        await FirebaseFirestore.instance.collection("requer").add({
          "uid": user.uid,
          "title": title,
          "descrip": descrip,
          'num': num,
        });
        loadRequerList();
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

  Future<void> deleteRequer({
    required String id,
    VoidCallback? onSuccess,
    VoidCallback? onFail,
  }) async {
    isLoading = true;
    notifyListeners();

    User? user = FirebaseAuth.instance.currentUser;

    if (user != null) {
      try {
        await FirebaseFirestore.instance.collection("requer").doc(id).delete();
        loadRequerList();
        if (onSuccess != null) {
          onSuccess();
        }
      } catch (e) {
        print(e);
      }
    }
    isLoading = false;
    notifyListeners();
  }

  Future<void> editRequer({
    required String title,
    required String descrip,
    required String id,
    required int num0,
    VoidCallback? onSuccess,
    VoidCallback? onFail,
  }) async {
    isLoading = true;
    notifyListeners();

    User? user = FirebaseAuth.instance.currentUser;

    if (user != null) {
      try {
        await FirebaseFirestore.instance.collection("requer").doc(id).update({
          "uid": user.uid,
          "title": title,
          "descrip": descrip,
          'num': num0,
        });
        loadRequerList();
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

  Future<void> saveAlerts({
    required String title,
    required String mes,
    VoidCallback? onSuccess,
    VoidCallback? onFail,
  }) async {
    User? user = FirebaseAuth.instance.currentUser;

    if (user != null) {
      try {
        await FirebaseFirestore.instance.collection("alerts").add({
          "name": userMain.getName(),
          "title": title,
          "mes": mes,
        });
      } catch (e) {}
    }
  }

  Future<void> editAlerts({
    required String title,
    required String mes,
    required String id,
    VoidCallback? onSuccess,
    VoidCallback? onFail,
  }) async {
    User? user = FirebaseAuth.instance.currentUser;

    if (user != null) {
      try {
        await FirebaseFirestore.instance.collection("alerts").doc(id).update({
          "name": userMain.getName(),
          "title": title,
          "mes": mes,
        });
      } catch (e) {}
    }
  }
}
