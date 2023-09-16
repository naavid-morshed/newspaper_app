import 'package:flutter/material.dart';
import 'package:newspaper_app/Widgets/custom_textfield.dart';
import '../Widgets/custom_image_button.dart';
import '../Widgets/custom_image_view.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({Key? key}) : super(key: key);

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  late final TextEditingController _numberController, _passController;

  @override
  void initState() {
    super.initState();
    _numberController = TextEditingController();
    _passController = TextEditingController();
  }

  @override
  void dispose() {
    _numberController.dispose();
    _passController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
          children: [
            CustomImageView(
              assetString: 'lib/Assets/DhakaLive.jpg',
              containerShape: BoxShape.rectangle,
              paddingTop: size.height * .04,
              width: size.width * .75,
              height: size.height * .3,
            ),
            ...List.generate(
              2,
              (index) {
                return CustomTextField(
                  controller: index == 0 ? _numberController : _passController,
                  obscureText: index == 1,
                  borderRadius: 7,
                  fontSize: 20,
                  borderColor: Colors.black87,
                  borderWidth: 1,
                  textColor: Colors.black87,
                  width: size.width * .9,
                  height: size.height * .09,
                  hintText: 'Mobile number',
                  marginBottom: size.height * .005,
                  suffixIcon: Icons.info_outline_rounded,
                );
              },
            ),
            CustomImageButton(
              assetString: 'lib/Assets/LogInLogOutButtonAssets/logInKorun.jpg',
              height: size.height * .065,
              width: size.width * .9,
              containerShape: BoxShape.rectangle,
              fit: BoxFit.fill,
              borderRadius: BorderRadius.circular(
                8,
              ),
              onTap: () {
                Navigator.pushReplacementNamed(context, '/picker-page');
              },
            ),
            CustomImageButton(
              assetString: 'lib/Assets/LogInLogOutButtonAssets/forgotPass.jpg',
              fit: BoxFit.fitWidth,
              containerShape: BoxShape.rectangle,
              width: size.width * .55,
              // height: size.height * .025,
              paddingTop: size.height * .025,
            ),
            Expanded(
              child: Align(
                alignment: Alignment.center,
                child: CustomImageButton(
                  assetString:
                      'lib/Assets/LogInLogOutButtonAssets/noAccountThenCreate.jpg',
                  containerShape: BoxShape.rectangle,
                  width: size.width * .65,
                  fit: BoxFit.fitWidth,
                  paddingBottom: size.height * .05,
                  onTap: () {
                    Navigator.pushReplacementNamed(
                      context,
                      '/sign-in-page',
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
