import 'package:flutter/material.dart';
import 'package:newspaper_app/Screens/MainPages/category_page.dart';
import 'package:newspaper_app/Screens/MainPages/search_page.dart';
import 'package:newspaper_app/Screens/MainPages/settings_page.dart';
import 'package:newspaper_app/Widgets/custom_image_view.dart';
import 'package:newspaper_app/Widgets/custom_textfield.dart';
import 'MainPages/home_page.dart';

class PickerPage extends StatefulWidget {
  const PickerPage({super.key});

  @override
  State<PickerPage> createState() => _PickerPageState();
}

class _PickerPageState extends State<PickerPage> {
  late List<BottomNavigationBarItem> bottomNavBarItems;
  late int bottomBarIndex;
  late TextEditingController _searchController;

  Widget _getBody(int index) {
    switch (index) {
      case 0:
        return const HomePage();
      case 1:
        return const CategoryPage();
      case 2:
        return const SearchPage();
      case 3:
        return const SettingPage();
      default:
        return Container(); // Return an empty container as a fallback (should not reach here)
    }
  }

  @override
  void initState() {
    super.initState();
    bottomBarIndex = 0;
    _searchController = TextEditingController();
    bottomNavBarItems = [
      const BottomNavigationBarItem(
        icon: Icon(
          Icons.home,
        ),
        label: 'Home',
      ),
      const BottomNavigationBarItem(
        icon: Icon(
          Icons.category_outlined,
        ),
        label: 'Category',
      ),
      const BottomNavigationBarItem(
        label: 'Search',
        icon: Icon(
          Icons.search_rounded,
        ),
      ),
      const BottomNavigationBarItem(
        label: 'Settings',
        icon: Icon(
          Icons.settings,
        ),
      ),
    ];
  }

  @override
  void dispose() {
    super.dispose();

    _searchController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade800.withOpacity(.96),
        elevation: 0,
        automaticallyImplyLeading: false,
        toolbarHeight: size.height * .08,
        actions: [
          if (bottomBarIndex != 2)
            const Padding(
              padding: EdgeInsets.only(
                right: 20.0,
              ),
              child: Icon(
                Icons.notifications_active,
              ),
            )
        ],
        title: bottomBarIndex != 2
            ? Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: CustomImageView(
                    assetString: 'lib/Assets/DhakaLiveAppBar.jpg',
                    containerShape: BoxShape.rectangle,
                    width: MediaQuery.of(context).size.width * .5,
                  ),
                ),
              )
            : Align(
                alignment: Alignment.bottomCenter,
                child: CustomTextField(
                  controller: _searchController,
                  obscureText: false,
                  fontSize: 20,
                  borderRadius: 10,
                  borderColor: Colors.black87,
                  borderWidth: 0,
                  height: size.height * .058,
                  width: size.width * 1,
                  filled: true,
                  fillColor: Colors.grey[200],
                  hintText: '',
                  suffixIcon: Icons.search_rounded,
                ),
              ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 8,
              spreadRadius: 3,
            ),
          ],
        ),
        child: BottomNavigationBar(
          iconSize: 30,
          currentIndex: bottomBarIndex,
          items: bottomNavBarItems,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.deepOrange,
          unselectedItemColor: Colors.grey.shade800.withOpacity(.96),
          onTap: (index) {
            // Update the state when a new tab is tapped
            setState(() {
              bottomBarIndex = index;
            });
          },
          showUnselectedLabels: true,
        ),
      ),
      body: _getBody(bottomBarIndex),
    );
  }
}
