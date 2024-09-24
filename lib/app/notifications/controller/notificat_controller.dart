import 'package:get/get.dart';
import 'package:hous_project_dashbord/app/notifications/model/notificate_model.dart';

class NotificateController extends GetxController {
  List<Notificate> list = [];

  getData() {
    list.addAll(notificattionsData);
    update();
  }

  @override
  void onInit() {
    getData();
    super.onInit();
  }
}

List<Notificate> notificattionsData = [
  Notificate(
    title: "Hi",
    content: "هل مازال حجز الغد متاحا ",
    time: DateTime.parse("2024-05-02"),
  ),
  Notificate(
    title: "Hi",
    content: "مبروك لقدك وصلت الى طلبك رقم 100",
    time: DateTime.parse("2024-04-28"),
  ),
  Notificate(
    title: "اهلا",
    content: "لديك طلب جديد ",
    time: DateTime.parse("2020-02-05"),
  ),
];
