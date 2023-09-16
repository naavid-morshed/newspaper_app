import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:newspaper_app/StaticData/static_data.dart';
import 'package:newspaper_app/Widgets/custom_image_button.dart';
import 'package:newspaper_app/Widgets/settings_button.dart';

import '../../Widgets/social_media_button.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: size.height * .02,
              horizontal: size.width * .04,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(
                    right: size.width * .03,
                  ),
                  width: size.width * .171,
                  child: Stack(
                    children: [
                      Image.asset(
                        'lib/Assets/user.jpg',
                        width: size.width * .16,
                        height: size.height * .08,
                      ),
                      Positioned(
                        top: size.height * .049,
                        left: size.width * .115,
                        child: InkWell(
                          onTap: () {
                            print('object');
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 1,
                                color: Colors.orange,
                              ),
                              borderRadius: BorderRadius.circular(
                                10,
                              ),
                            ),
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              minRadius: 10,
                              child: Image.asset(
                                'lib/Assets/linked_camera.jpg',
                                fit: BoxFit.scaleDown,
                                scale: 2.7,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(top: size.height * .013),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Generic User',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black87,
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          '012332587234',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black87.withOpacity(.5),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    right: size.width * .02,
                    top: size.width * .037,
                  ),
                  padding: EdgeInsets.symmetric(
                    vertical: size.height * .005,
                    horizontal: size.width * .02,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: Colors.black87.withOpacity(.5),
                    ),
                  ),
                  child: InkWell(
                    onTap: () {
                      print('as');
                    },
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Icon(
                          Icons.edit,
                          size: 25,
                          color: Colors.black87,
                        ),
                        SizedBox(width: size.width * .02),
                        const Text(
                          'Edit',
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          ...StaticData.settingsButtonsMap.entries.map((entry) {
              return SettingsButton(
                icon: entry.value,
                buttonName: entry.key,
                onPressed: () {
                  if (kDebugMode) {
                    print(entry.key);
                  }
                },
              );
            },
          ),
          SizedBox(height: size.height * .02),
          CustomImageButton(
            assetString: 'lib/Assets/LogInLogOutButtonAssets/logOut.jpg',
            height: size.height * .065,
            width: size.width * .905,
            containerShape: BoxShape.rectangle,
            fit: BoxFit.fill,
            borderRadius: BorderRadius.circular(8),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/sign-in-page');
            },
          ),
          SizedBox(
            height: size.height * .03,
          ),
          Padding(
            padding: EdgeInsets.only(left: size.width * .05),
            child: Row(
              children: StaticData.socialMediaIconImageMap.entries.map((entry) {
                  return SocialMediaButton(
                    size: size,
                    imageString: entry.value,
                    onTap: () {
                      if (kDebugMode) {
                        print(entry.key);
                      }
                    },
                  );
                },
              ).toList(),
            ),
          )
        ],
      ),
    );
  }
}
