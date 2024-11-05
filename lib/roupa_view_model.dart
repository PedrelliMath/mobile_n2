import 'package:cloud_firestore/cloud_firestore.dart';
import 'roupa.dart';

class RoupaViewModel {
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  Future<void> addRoupa(Roupa roupa) async {
    await _db.collection('roupas').add(roupa.toMap());
  }

  Stream<List<Roupa>> getRoupas() {
    return _db.collection('roupas').snapshots().map((snapshot) =>
        snapshot.docs.map((doc) => Roupa.fromMap(doc.data(), doc.id)).toList());
  }

  Future<void> updateRoupa(Roupa roupa) async {
    await _db.collection('roupas').doc(roupa.id).update(roupa.toMap());
  }

  Future<void> deleteRoupa(String id) async {
    await _db.collection('roupas').doc(id).delete();
  }
}

