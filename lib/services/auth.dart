
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';


class Auth{
  FirebaseApp app = Firebase.app();
  late FirebaseAuth auth;
  User? get user=>auth.currentUser;

  Auth(){
    auth = FirebaseAuth.instanceFor(app: app);
  }

  // Partner? get partner=>_user != null?Partner.map(_user!):null;


  // Future<Partner?> signUp({required Partner partner}) async {
  //   return await auth.createUserWithEmailAndPassword(email: partner.email, password: partner.password).then((value) async {
  //     _user = value.user;
  //     await _user?.updateDisplayName(partner.name);
  //     return _user!=null?Partner.map(_user!):null;
  //   });
  // }
  Future<User?> signIn({required String email,required String password}) async{
    return await auth.signInWithEmailAndPassword(email: email, password: password).then((value) => value.user);

  
  }


  Future<void> signOut() async{
    auth.signOut();
  }

  // Future<void> updateProfile({String? name,String? email}) async {
  //   if(name!=null) await _user?.updateDisplayName(name);
  //   if(email!=null) await _user?.updateEmail(email);
  // }

  // Future<void> updatePassword({required String password}) async {
  //   await _user?.updatePassword(password);
  // }

  // void userListener({Function(Partner partner)? listener}){
  //   auth.userChanges().listen((event) {
  //     _user = event;
  //     if(listener!=null) listener(Partner.map(_user!));
  //   });
  // }
}

