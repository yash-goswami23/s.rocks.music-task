import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:music_services_module/models/service_card_item_list.dart';

class ServiceProvider extends ChangeNotifier {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  List<ServiceItem> _services = [];
  List<ServiceItem> get services => _services;

  bool _isLoading = false;
  bool get isLoaing => _isLoading;

  void fetchServiceData() {
    _isLoading = true;

    notifyListeners();
    try {
      _firestore.collection('app').snapshots().listen((snapshot) {
        _services =
            snapshot.docs
                .map(
                  (doc) => ServiceItem(
                    doc["title"],
                    doc["desc"],
                    doc["iconpath"],
                    doc["bgimgpath"],
                  ),
                )
                .toList();
        _isLoading = false;
        notifyListeners(); // Notify UI that data changed
      });
    } catch (e) {
      _isLoading = false;
      notifyListeners();
      rethrow;
    }
  }
}
