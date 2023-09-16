import 'package:flutter/material.dart';

class StaticData {
  StaticData._();

  static const List<String> categories = [
    'National',
    'International',
    'Monetary Economics',
    'Sports',
    'Information & Technology',
    'Education',
    'LifeStyle',
    'Entertainment',
    'Lifestyle',
    'Health',
  ];

  static const Map<String, String> socialMediaIconImageMap = {
    'facebook': 'lib/Assets/SocialMediaIconAssets/Facebook.jpg',
    'telegram': 'lib/Assets/SocialMediaIconAssets/telegram.jpg',
    'twitter': 'lib/Assets/SocialMediaIconAssets/twitter.jpg',
    'linkedIn': 'lib/Assets/SocialMediaIconAssets/linkedin.jpg',
    'instagram': 'lib/Assets/SocialMediaIconAssets/instagram.jpg',
  };

  static const settingsButtonsMap = {
    'Site Map': Icons.arrow_forward,
    'Language': Icons.arrow_forward,
    'App Settings': Icons.arrow_forward,
    'Privacy': Icons.arrow_forward,
    'Terms & Conditions': Icons.arrow_forward,
    'Communication': Icons.arrow_forward,
    'About Us': Icons.arrow_forward,
  };
}