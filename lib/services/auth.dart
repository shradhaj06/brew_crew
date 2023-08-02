// ignore_for_file: unused_local_variable, empty_catches

import 'package:firebase_auth/firebase_auth.dart';
class AuthService{
  final FirebaseAuth _auth = FirebaseAuth.instance;//instance of firebase


  //_ private
  //anonymous sign in
  Future signInAnon() async{
    try{
     UserCredential result =  await _auth.signInAnonymously();
     User? user = result.user;
     return user;



    } catch(e){
print(e.toString());
return null;
    }
  }

  //email sign in
  //register
}