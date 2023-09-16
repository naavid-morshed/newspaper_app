import 'package:flutter/material.dart';
import 'package:newspaper_app/Screens/picker_page.dart';
import '../../StaticData/static_data.dart';
import '../../Widgets/category_button.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: size.height * .01),
            child: Column(
              children: [
                // a different way to do things, to get index from keys
                ...StaticData.categories.asMap().entries.map((entry) {
                  return CategoryButton(
                    size: size,
                    buttonName: entry.value,
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        PageRouteBuilder(
                          transitionDuration: const Duration(seconds: 0),
                          pageBuilder: (context, animation, secondaryAnimation) => const PickerPage(),
                        ),
                      );
                    },
                  );
                }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
