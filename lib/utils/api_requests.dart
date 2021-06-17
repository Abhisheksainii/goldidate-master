import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login_facebook/flutter_login_facebook.dart';
import 'package:goldidate/modals/modals_exporter.dart';
import 'package:google_sign_in/google_sign_in.dart';

class ApiRequests {
  static FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
  static FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  static Future<bool> userRecordExistInFirestore(
      String collectionPath, String id) async {
    try {
      var reference =
          await firebaseFirestore.collection(collectionPath).doc(id).get();
      return reference.exists;
    } catch (e) {
      print(e);
      throw (e);
    }
  }

  static Future<bool> isUserLoggedIn() async {
    final user = firebaseAuth.currentUser;
    if (user == null)
      return false;
    else
      return true;
  }

  static Future<bool> logout() async {
    try {
      if (firebaseAuth.currentUser.providerData[0].providerId == "google.com")
        await GoogleSignIn().disconnect();
      await firebaseAuth.signOut();
      return true;
    } on FirebaseAuthException catch (e) {
      throw (e);
    }
  }

  static Future<bool> googleLogin(BuildContext context) async {
    try {
      GoogleSignInAccount googleSignInAccount = await GoogleSignIn().signIn();
      GoogleSignInAuthentication googleSignInAuthentication =
          await googleSignInAccount.authentication;
      AuthCredential authCredential = GoogleAuthProvider.credential(
        idToken: googleSignInAuthentication.idToken,
        accessToken: googleSignInAuthentication.accessToken,
      );
      await firebaseAuth.signInWithCredential(authCredential);
      if (!await ApiRequests.userRecordExistInFirestore(
          "Users", firebaseAuth.currentUser.uid)) {
        User currentUser = firebaseAuth.currentUser;
        UserModal userModal = UserModal(
          userID: currentUser.uid,
          username: googleSignInAccount.displayName,
          emailAddress: googleSignInAccount.email,
          profileURL: googleSignInAccount.photoUrl,
        );

        firebaseFirestore
            .collection("Users")
            .doc(currentUser.uid)
            .set(userModal.toJson());
      }
      return true;
    } catch (e) {
      throw (e);
    }
  }

  static Future<bool> facebookLogin(BuildContext context) async {
    try {
      FacebookLogin facebookLogin = FacebookLogin();
      final result = await facebookLogin.logIn(permissions: [
        FacebookPermission.publicProfile,
        FacebookPermission.email,
      ]);

      if (result.status == FacebookLoginStatus.success) {
        //facebook access token
        final FacebookAccessToken facebookAccessToken =
            await facebookLogin.accessToken;

        //convert to auth credentials
        AuthCredential authCredential =
            FacebookAuthProvider.credential(facebookAccessToken.token);

        final profile = await facebookLogin.getUserProfile();
        final imageUrl = await facebookLogin.getProfileImageUrl(width: 200);
        final email = await facebookLogin.getUserEmail();

        await firebaseAuth.signInWithCredential(authCredential);
        if (!await ApiRequests.userRecordExistInFirestore(
            "Users", firebaseAuth.currentUser.uid)) {
          User currentUser = firebaseAuth.currentUser;
          UserModal userModal = UserModal(
            userID: currentUser.uid,
            username: profile.firstName + profile.lastName,
            emailAddress: email,
            profileURL: imageUrl,
          );
          firebaseFirestore
              .collection("Users")
              .doc(currentUser.uid)
              .set(userModal.toJson());
        }
        return true;
      } else if ((result.status == FacebookLoginStatus.error) ||
          (result.status == FacebookLoginStatus.cancel)) {
        return false;
      } else
        return false;
    } catch (e) {
      throw (e);
    }
  }
}
