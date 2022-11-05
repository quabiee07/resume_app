import 'package:flutter/cupertino.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialMediaProvider with ChangeNotifier {
  final Uri _twitter = Uri.parse('https://twitter.com/kwabiee011');
  final Uri _instagram = Uri.parse('https://www.instagram.com/quabiee.i/');
  final Uri _linkedin =
      Uri.parse('https://www.linkedin.com/in/chukwuebuka-ihekwaba-9365ab206/');
  final Uri _github = Uri.parse('https://github.com/quabiee07/');

  Future<void> launchTwitter() async {
    if (!await launchUrl(
      _twitter,
      mode: LaunchMode.inAppWebView,
      webViewConfiguration: const WebViewConfiguration(enableJavaScript: true),
    )) {
      throw 'Could not launch $_twitter';
    }
    notifyListeners();
  }

  Future<void> launchInstagram() async {
    if (!await launchUrl(
      _instagram,
      mode: LaunchMode.inAppWebView,
      webViewConfiguration: const WebViewConfiguration(enableJavaScript: true),
    )) {
      throw 'Could not launch $_instagram';
    }
    notifyListeners();
  }

  Future<void> launchLinkedin() async {
    if (!await launchUrl(
      _linkedin,
      mode: LaunchMode.inAppWebView,
      webViewConfiguration: const WebViewConfiguration(enableJavaScript: true),
    )) {
      throw 'Could not launch $_linkedin';
    }
    notifyListeners();
  }

  Future<void> launchGithub() async {
    if (!await launchUrl(
      _github,
      mode: LaunchMode.inAppWebView,
      webViewConfiguration: const WebViewConfiguration(enableJavaScript: false),
    )) {
      throw 'Could not launch $_github';
    }
    notifyListeners();
  }
}
