part of 'pages.dart';

class SuccessOrderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: IllustrationPage(
          title: "Anda Telah Membuat Pesanan",
          subtitle:
              "Tetaplah di rumah sementara kami\nmenyiapkan makanan terbaik Anda",
          picturePath: 'assets/bike.png',
          buttonTap1: () {
            Get.offAll(MainPage());
          },
          buttonTitle1: 'Order Other Foods',
          buttonTap2: () {
            Get.offAll(MainPage(
              initialPage: 1,
            ));
          },
          buttonTitle2: 'Lihat Pesanan Saya',
        ));
  }
}
