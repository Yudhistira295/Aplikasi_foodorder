part of 'pages.dart';

class SuccessSignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: IllustrationPage(
          title: "Yeay! Completed",
          subtitle:
              "Sekarang Anda dapat memesan\nbeberapa makanan sebagai keiginan anda",
          picturePath: 'assets/food_wishes.png',
          buttonTap1: () {
            Get.to(FoodPage());
          },
          buttonTitle1: 'Find Foods',
        ));
  }
}
