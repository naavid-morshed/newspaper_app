import 'package:flutter/material.dart';
import 'package:newspaper_app/Widgets/custom_textfield.dart';
import '../Widgets/custom_image_button.dart';
import '../Widgets/custom_image_view.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  late final TextEditingController nameController, numberController, passController;

  @override
  void initState() {
    super.initState();
    nameController = TextEditingController();
    numberController = TextEditingController();
    passController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    nameController.dispose();
    numberController.dispose();
    passController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomImageView(
              assetString: 'lib/Assets/DhakaLive.jpg',
              containerShape: BoxShape.rectangle,
              paddingTop: size.height * .04,
              width: size.width * .75,
              height: size.height * .20,
            ),
            SizedBox(
              width: size.width * .85,
              height: size.height * .6,
              child: Column(
                children: [
                  ...List.generate(
                    3,
                    (index) => CustomTextField(
                      controller: index == 0
                          ? nameController
                          : index == 1
                              ? numberController
                              : passController,
                      hintText: index == 0
                          ? 'Your name'
                          : index == 1
                              ? 'Mobile number'
                              : 'Password',
                      obscureText: index == 2,
                      fontSize: 20,
                      borderRadius: 7,
                      borderColor: Colors.black87,
                      textColor: Colors.black87,
                      borderWidth: 1,
                      height: size.height * .09,
                      width: size.width * .9,
                      suffixIcon: Icons.info_outline_rounded,
                      marginBottom: size.height * .005,
                    ),
                  ),
                  CustomImageButton(
                    assetString:
                        'lib/Assets/LogInLogOutButtonAssets/accountKorun.jpg',
                    height: size.height * .065,
                    containerShape: BoxShape.rectangle,
                    fit: BoxFit.fill,
                    borderRadius: BorderRadius.circular(
                      8,
                    ),
                    onTap: () {
                      Navigator.pushReplacementNamed(
                        context,
                        '/login-page',
                      );
                    },
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: size.height * .025,
                    ),
                    child: const Text(
                      'or',
                    ),
                  ),
                  const CustomImageButton(
                    assetString:
                        'lib/Assets/LogInLogOutButtonAssets/googleOauth.jpg',
                    containerShape: BoxShape.rectangle,
                  ),
                  SizedBox(
                    height: size.height * .014,
                  ),
                  const CustomImageButton(
                    assetString:
                        'lib/Assets/LogInLogOutButtonAssets/fbOauth.jpg',
                    containerShape: BoxShape.rectangle,
                  ),
                ],
              ),
            ),
            CustomImageButton(
              assetString: 'lib/Assets/LogInLogOutButtonAssets/gotAccountThenLogIn.jpg',
              fit: BoxFit.fitWidth,
              containerShape: BoxShape.rectangle,
              width: size.width * .5,
              height: size.height * .15,
              onTap: () {
                Navigator.pushReplacementNamed(
                  context,
                  '/login-page',
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
