part of 'pages.dart';

class PaymentMethodPage extends StatelessWidget {
  final String paymentURL;

  PaymentMethodPage(this.paymentURL);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: IllustrationPage(
          title: "Selesaikan Pembayaran Anda",
          subtitle: "Pilih metode pembayaran\nfavorit Anda",
          picturePath: 'assets/Payment.png',
          buttonTap1: () async {
            await launch(paymentURL);
          },
          buttonTitle1: 'Payment Method',
          buttonTap2: () {
            Get.to(SuccessOrderPage());
          },
          buttonTitle2: 'Continue',
        ));
  }
}
