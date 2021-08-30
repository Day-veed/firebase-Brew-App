import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebaseproject/models/user.dart';

class AuthService {

  final FirebaseAuth _auth = FirebaseAuth.instance;

  myUser _userFromFirebaseUser(User user) {
    return user != null ? myUser(displayName: user.displayName) : null;
  }

  // auth change user stream
  Stream<myUser> get user {
    return _auth.authStateChanges()
    .map(_userFromFirebaseUser);
  }

  //sign in anon
  Future signInAnon() async {
    try{
      UserCredential result = await _auth.signInAnonymously();
      User user = result.user;
      return _userFromFirebaseUser(user);
    }catch(e){
      print(e.toString());
      return null;
    }
  }

  //sign in with email & password
  Future signinWithEmailAndPassword(String email, String password) async {
    try{
      UserCredential result = await _auth.signInWithEmailAndPassword(email: email, password: password);
      User user = result.user;
      return _userFromFirebaseUser(user); 
    } catch (e){
      print(e.toString());
      return null;
    }
  }

  //register with email & password
  Future registerWithEmailAndPassword(String email, String password) async {
    try{
      UserCredential result = await _auth.createUserWithEmailAndPassword(email: email, password: password);
      User user = result.user;
      return _userFromFirebaseUser(user); 
    } catch (e){
      print(e.toString());
      return null;
    }
  }

  //sign out
  Future signOut() async {
    try{
      return await _auth.signOut();
    }catch(e){
      print(e.toString());
      return null;
    }
  }
}