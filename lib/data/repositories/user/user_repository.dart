import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecommerce_app/data/models/user_model.dart';
import 'package:get/get.dart';

class UserRepository extends GetxController{
  static UserRepository get instance => Get.find();

  final FirebaseFirestore _db = FirebaseFirestore.instance;

  // Save user data to firestore
  Future<void> saveUserRecord(UserModel user) async{
    try {
      await _db.collection('Users').doc(user.id).set(user.toJson());
    } on FirebaseException catch (e){
      throw FirebaseException(plugin: e.toString());
    }
    // }catch(e){}
  }
}