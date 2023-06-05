import 'package:firebase_auth/firebase_auth.dart';
import 'package:my_order/Helper/basehelper.dart';

class FirebaseMethod {
  static getUserData() async {
    return await BaseHelper.firestore
        .collection('users')
        .doc(BaseHelper.firebaseAuth.currentUser?.email)
        .get()
        .then((value) {
      BaseHelper.firebaseAuth = FirebaseAuth.instance;
      return BaseHelper.userData = value.data() as Map<String, dynamic>;
    });
  }

  static setUserData(data) async {
    return await BaseHelper.firestore
        .collection('users')
        .doc(BaseHelper.firebaseAuth.currentUser?.email)
        .set(data);
  }

  static updateUserData(data) async {
    return await BaseHelper.firestore
        .collection('users')
        .doc(BaseHelper.firebaseAuth.currentUser?.email)
        .update(data);
  }
}
