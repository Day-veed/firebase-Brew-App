import 'package:firebaseproject/screens/wrapper.dart';
import 'package:firebaseproject/services/auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';
import 'package:firebaseproject/models/user.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StreamProvider<myUser>.value(
      value: AuthService().user,
      child: MaterialApp(
        home: wrapper(),
      ),
    );
  }
}
