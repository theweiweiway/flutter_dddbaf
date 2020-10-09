import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

@singleton
class FirestoreService {
  FirebaseFirestore get firestore => FirebaseFirestore.instance;
  FirestoreCollections get collections => FirestoreCollections(
      users: FirebaseFirestore.instance.collection('users'),);
}

class FirestoreCollections {
  CollectionReference users;
  FirestoreCollections({this.users});
}
