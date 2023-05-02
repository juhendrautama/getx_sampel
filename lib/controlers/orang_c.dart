import 'package:get/get.dart';
import '../models/orang_m.dart';

class OrangController extends GetxController {
  var orang = Orang(nama: "sumanto", umur: 45).obs; //panggil model
  void prosesUbahHuruf() {
    orang.update((_) {
      orang.value.nama = orang.value.nama.toUpperCase();
    });
  }
}
