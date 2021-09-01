import 'package:firebase_auth/firebase_auth.dart';

class myUser {
  final String uid;

  myUser({ this.uid}); 
}

class UserData {
   final String uid;
   final String name;
   final String sugars;
   final int strength;

   UserData({ this.uid, this.sugars, this.strength, this.name});
}