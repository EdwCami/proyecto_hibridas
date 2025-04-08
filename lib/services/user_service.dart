import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/user_model.dart';

class UserService {
  final CollectionReference _usersCollection = FirebaseFirestore.instance.collection('users');

  Future<void> addUser(UserModel user) async {
    await _usersCollection.doc(user.id).set(user.toMap());
  }

  Future<void> updateUser(UserModel user) async {
    await _usersCollection.doc(user.id).update(user.toMap());
  }

  Future<void> deleteUser(String id) async {
    await _usersCollection.doc(id).delete();
  }

  Future<UserModel?> getUserById(String id) async {
    final doc = await _usersCollection.doc(id).get();
    if (doc.exists) {
      return UserModel.fromMap(doc.data() as Map<String, dynamic>, doc.id);
    }
    return null;
  }

  Stream<List<UserModel>> getUsers() {
    return _usersCollection.snapshots().map((snapshot) {
      return snapshot.docs.map((doc) {
        return UserModel.fromMap(doc.data() as Map<String, dynamic>, doc.id);
      }).toList();
    });
  }
}