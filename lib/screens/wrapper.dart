import 'package:firebaseproject/models/user.dart';
import 'package:firebaseproject/screens/authenticate/authenticate.dart';
import 'package:firebaseproject/screens/home/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class wrapper extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {

    final user = Provider.of<myUser>(context);
  print(user);

    return Authenticate();
  }
}