// ignore_for_file: no_logic_in_create_state

import 'accordion.dart';
import 'package:flutter/material.dart';

class PackageScreen extends StatefulWidget {
  final String url;
  PackageScreen(this.url);

  @override
  _MyImageScreen createState() => _MyImageScreen(url);
}

class _MyImageScreen extends State<PackageScreen> {
  final String url;
  final _array = {
    'url_launcher': Accordion(
        'url_launcher',
        'Flutter plugin for launching a URL. Supports web, phone, SMS, and email schemes.\nimport \'package:url_launcher/url_launcher.dart\'',
        'https://pub.dev/packages/url_launcher'),
    'carousel_slider': Accordion(
        'carousel_slider',
        'A carousel slider widget.\nimport \'package:carousel_slider/carousel_slider.dart\'',
        'https://pub.dev/packages/carousel_slider'),
    'google_fonts': Accordion(
        'google_fonts',
        'The google_fonts package for Flutter allows you to easily use any of the 977 fonts (and their variants) from fonts.google.com in your Flutter app.\nimport \'package:google_fonts/google_fonts.dart\'',
        'https://pub.dev/packages/google_fonts'),
    'video_player': Accordion(
        'video_player',
        'A Flutter plugin for iOS, Android and Web for playing back video on a Widget surface.\nimport \'package:video_player/video_player.dart\'',
        'https://pub.dev/packages/video_player'),
    'flutter_markdown': Accordion(
        'flutter_markdown',
        'A markdown renderer for Flutter. It supports the original format, but no inline HTML.\nimport \'package:markdown/markdown.dart\'',
        'https://pub.dev/packages/flutter_markdown'),
    'backdrop': Accordion(
        'backdrop',
        'Backdrop implementation in flutter.\nimport \'package:backdrop/backdrop.dart\'',
        'https://pub.dev/packages/backdrop'),
    'convex_bottom_bar': Accordion(
        'convex_bottom_bar',
        'The official BottomAppBar can only display a notch FAB with app bar, sometimes we need a convex FAB. This ConvexAppBar is inspired by BottomAppBar and NotchShape\'s implementation.\nimport \'package:convex_bottom_bar/convex_bottom_bar.dart\'',
        'https://pub.dev/packages/convex_bottom_bar'),
    'fl_chart': Accordion(
        'fl_chart',
        'A powerful Flutter chart library, currently supporting Line Chart, Bar Chart and Pie Chart.\nimport \'package:fl_chart/fl_chart.dart\'',
        'https://pub.dev/packages/fl_chart'),
    'flutter_radar_chart': Accordion(
        'flutter_radar_chart',
        'Animated radar chart for Flutter inspired by The Python Graph Gallery\nimport \'package:flutter_radar_chart/flutter_radar_chart.dart\'',
        'https://pub.dev/packages/flutter_radar_chart'),
    'lottie': Accordion(
        'lottie',
        'Lottie is a mobile library for Android and iOS that parses Adobe After Effects animations exported as json with Bodymovin and renders them natively on mobile!\nimport \'package:package:lottie/lottie.dart\'',
        'https://pub.dev/packages/lottie'),
    'image_picker': Accordion(
        'image_picker',
        'A Flutter plugin for iOS and Android for picking images from the image library, and taking new pictures with the camera.\nimport \'package:image_picker/image_picker.dart\'',
        'https://pub.dev/packages/image_picker'),
    'extended_image': Accordion(
        'extended_image',
        'A powerful official extension library of image, which support placeholder(loading)/ failed state, cache network, zoom pan image, photo view, slide out page, editor(crop,rotate,flip), paint custom etc.\nimport \'package:extended_image/extended_image.dart\'',
        'https://pub.dev/packages/extended_image'),
    'flutter_circle_color_picker': Accordion(
        'flutter_circle_color_picker',
        'A beautiful circle color picker for flutter.\nimport \'package:extended_image/extended_image.dart\'',
        'https://pub.dev/packages/extended_image'),
    'photo_view': Accordion(
        'photo_view',
        'A simple zoomable image/content widget for Flutter.\nimport \'package:photo_view/photo_view.dart\'',
        'https://pub.dev/packages/photo_view'),
    'flash': Accordion(
        'flash',
        'A highly customizable, powerful and easy-to-use alerting library for Flutter.\nimport \'package:flash/flash.dart\'',
        'https://pub.dev/packages/flash'),
    'font_awesome_flutter': Accordion(
        'font_awesome_flutter',
        'The Font Awesome Icon pack available as Flutter Icons. Provides 1500 additional icons to use in your apps.\nimport \'package:font_awesome_flutter/font_awesome_flutter.dart\'',
        'https://pub.dev/packages/font_awesome_flutter'),
    'pie_chart': Accordion(
        'pie_chart',
        'This Flutter package provides a Pie Chart Widget with cool animation.\nimport \'package:pie_chart/pie_chart.dart\'',
        'https://pub.dev/packages/pie_chart'),
    'provider': Accordion(
        'provider',
        'A wrapper around InheritedWidget to make them easier to use and more reusable.\nimport \'package:provider/provider.dart\'',
        'https://pub.dev/packages/provider'),
    'shared_preferences': Accordion(
        'shared_preferences',
        'Wraps platform-specific persistent storage for simple data (NSUserDefaults on iOS and macOS, SharedPreferences on Android, etc.). Data may be persisted to disk asynchronously, and there is no guarantee that writes will be persisted to disk after returning, so this plugin must not be used for storing critical data.\nimport \'package:shared_preferences/shared_preferences.dart\'',
        'https://pub.dev/packages/shared_preferences'),
    'animated_text_kit': Accordion(
        'animated_text_kit',
        'A flutter package which contains a collection of some cool and awesome text animations.\nimport \'package:animated_text_kit/animated_text_kit.dart\'',
        'https://pub.dev/packages/animated_text_kit'),
    'flutter_native_splash': Accordion(
        'flutter_native_splash',
        'When your app is opened, there is a brief time while the native app loads Flutter. By default, during this time the native app displays a white splash screen.\nimport \'package:flutter_native_splash/flutter_native_splash.dart\'',
        'https://pub.dev/packages/flutter_native_splash'),
    'just_audio': Accordion(
        'just_audio',
        'just_audio is a feature-rich audio player for Android, iOS, macOS and web.\nimport \'package:just_audio/just_audio.dart\'',
        'https://pub.dev/packages/just_audio'),
    'http': Accordion(
        'http',
        'A composable, Future-based library for making HTTP requests.\nimport \'package:http/http.dart\'',
        'https://pub.dev/packages/http'),
    'google_sign_in': Accordion(
        'google_sign_in',
        'Flutter plugin for Google Sign-In, a secure authentication system for signing in with a Google account on Android and iOS.\nimport \'package:google_sign_in/google_sign_in.dart\'',
        'https://pub.dev/packages/google_sign_in'),
    'flutter_facebook_auth': Accordion(
        'flutter_facebook_auth',
        'The easiest way to add facebook login to your flutter app, get user information, profile picture and more. Web support included.\nimport \'package:flutter_facebook_auth/flutter_facebook_auth.dart\'',
        'https://pub.dev/packages/flutter_facebook_auth'),
    'translator': Accordion(
        'translator',
        'A free and unlimited Google Translate API for Dart. You can use it for translate strings and text for educational purpose.\nimport \'package:translator/translator.dart\'',
        'https://pub.dev/packages/translator'),
    'flip_card': Accordion(
        'flip_card',
        'A component that provides flip card animation. It could be used for hide and show details of a product.\nimport \'package:flip_card/flip_card.dart\'',
        'https://pub.dev/packages/flip_card'),
    'scratcher': Accordion(
        'scratcher',
        'Scratch card widget which temporarily hides content from user.\nimport \'package:scratcher/scratcher.dart\'',
        'https://pub.dev/packages/scratcher'),
    'flutter_credit_card': Accordion(
        'flutter_credit_card',
        'A Flutter package allows you to easily implement the Credit card\'s UI easily with the Card detection.\nimport \'package:flutter_credit_card/flutter_credit_card.dart\'',
        'https://pub.dev/packages/flutter_credit_card'),
    'vertical_card_pager': Accordion(
        'vertical_card_pager',
        'Use dynamic and beautiful card view pagers to help you create great apps.\nimport \'package:vertical_card_pager/vertical_card_pager.dart\'',
        'https://pub.dev/packages/vertical_card_pager'),
    'horizontal_card_pager': Accordion(
        'horizontal_card_pager',
        'Use dynamic and beautiful card view pagers (horizontal direction) to help you create great apps.\nimport \'package:horizontal_card_pager/horizontal_card_pager.dart\'\nimport \'package:horizontal_card_pager/card_item.dart\'',
        'https://pub.dev/packages/horizontal_card_pager'),
    'expansion_card': Accordion(
        'expansion_card',
        'This package provides an easy implementation of a Expansion type card. You can also add gif or image at the background which expands with the card.\nimport \'package:expansion_card/expansion_card.dart\'',
        'https://pub.dev/packages/expansion_card'),
    'awesome_card': Accordion(
        'awesome_card',
        'A flutter package to create a Credit Card widget in your application.\nimport \'package:awesome_card/awesome_card.dart\'',
        'https://pub.dev/packages/awesome_card'),
    'playing_cards': Accordion(
        'playing_cards',
        'A rendering library for standard 52 card decks in your Flutter app. Use this package if you want to render good looking playing cards without too much fuss.\nimport \'package:playing_cards/playing_cards.dart\'',
        'https://pub.dev/packages/playing_cards'),
    'slimy_card': Accordion(
        'slimy_card',
        'SlimyCard provides a beautiful slime-like animation of a Card that separates into two different Cards, one at the top and the another at bottom. It is possible to put any custom widget in these two separate cards.\nimport \'package:slimy_card/slimy_card.dart\'',
        'https://pub.dev/packages/slimy_card'),
    'flutter_tindercard': Accordion(
        'flutter_tindercard',
        'Tinder(TanTan) Card Widget, fast way to have a high quality swap card widget in your flutter app.\nimport \'package:flutter_tindercard/flutter_tindercard.dart\'',
        'https://pub.dev/packages/flutter_tindercard'),
    'country_code_picker': Accordion(
        'country_code_picker',
        'A flutter package for showing a country code selector.\nimport \'package:country_code_picker/country_code_picker.dart\'',
        'https://pub.dev/packages/country_code_picker'),
    'auto_animated': Accordion(
        'auto_animated',
        'Widgets starting auto play animation when mounted. It is already possible to animate the list and icons.\nimport \'package:auto_animated/auto_animated.dart\'',
        'https://pub.dev/packages/auto_animated'),
    'country_picker': Accordion(
        'country_picker',
        'A flutter package to select a country from a list of countries.\nimport \'package:country_picker/country_picker.dart\'',
        'https://pub.dev/packages/country_picker'),
    'flutter_inner_drawer': Accordion(
        'flutter_inner_drawer',
        'Inner Drawer is an easy way to create an internal side section (left/right) where you can insert a list menu or other.\nimport \'package:flutter_inner_drawer/inner_drawer.dart\'',
        'https://pub.dev/packages/flutter_inner_drawer'),
    'group_list_view': Accordion(
        'group_list_view',
        'Flutter package for ListView that allows you to group list items and support headers.\nimport \'package:group_list_view/group_list_view.dart\'',
        'https://pub.dev/packages/group_list_view'),
    'select_form_field': Accordion(
        'select_form_field',
        'A Flutter select field widget. It shows a list of options in a dropdown menu.This widget extend TextField and has a similar behavior as TextFormField\nimport \'package:select_form_field/select_form_field.dart\'',
        'https://pub.dev/packages/select_form_field'),
    'search_choices': Accordion(
        'search_choices',
        'Highly versatile Widget to search through a single or multiple choices list in a dialog box or a menu. Supports pagination and future/API/webservice searches with sort and filter.\nimport \'package:search_choices/search_choices.dart\'',
        'https://pub.dev/packages/search_choices'),
    'bottom_sheet': Accordion(
        'bottom_sheet',
        'Custom bottom sheet widget, that can resize by drag and then scroll.\nimport \'package:bottom_sheet/bottom_sheet.dart\'',
        'https://pub.dev/packages/search_choices'),
    'pull_to_refresh': Accordion(
        'pull_to_refresh',
        'a widget provided to the flutter scroll component drop-down refresh and pull up load.\nimport \'package:pull_to_refresh/pull_to_refresh.dart\'',
        'https://pub.dev/packages/pull_to_refresh'),
    'tiktoklikescroller': Accordion(
        'tiktoklikescroller',
        'A vertical fullscreen scroll implementation that snaps in place, similar to the TikTok app.\nimport \'package:tiktoklikescroller/tiktoklikescroller.dart\'',
        'https://pub.dev/packages/tiktoklikescroller'),
    'scroll_snap_list': Accordion(
        'scroll_snap_list',
        'A wrapper for ListView.builder widget that allows "snaping" event to an item at the end of user-scroll.\nimport \'package:scroll_snap_list/scroll_snap_list.dart\'',
        'https://pub.dev/packages/scroll_snap_list'),
  };
  var _foundUsers = <Widget>[];
  var _getKeys = [];
  @override
  void initState() {
    _getKeys = _array.keys.toList();
    _getKeys.sort((a, b) => a.compareTo(b));
    // at the beginning, all users are shown
    _foundUsers = _getKeys.map((item) => _array[item]).toList().cast<Widget>();
    super.initState();
  }

  void _searchItems(String valueKeys) {
    var results = <Widget>[];
    if (valueKeys.isEmpty) {
      _getKeys = _array.keys.toList();
      _getKeys.sort((a, b) => a.compareTo(b));
      // if the search field is empty or only contains white-space, we'll display all users
      results = _getKeys.map((item) => _array[item]).toList().cast<Widget>();
    } else {
      results = _array.keys
          .toList()
          .where((text) => text.toLowerCase().contains(valueKeys.toLowerCase()))
          .toList()
          .map((item) => _array[item])
          .toList()
          .cast<Widget>();
    }
    // Refresh the UI
    setState(() {
      _foundUsers = results;
    });
  }

  _MyImageScreen(this.url);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Container(
          height: 30,
          padding: const EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: const Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          child: TextFormField(
            maxLines: 1,
            style: const TextStyle(color: Colors.black),
            decoration: InputDecoration(
              icon: const Icon(
                Icons.search,
                color: Colors.blue,
              ),
              hintText: 'Search',
              hintStyle: TextStyle(color: Colors.grey[700]),
              contentPadding: const EdgeInsets.only(bottom: 13.0),
              focusColor: null,
              border: InputBorder.none,
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              errorBorder: InputBorder.none,
              disabledBorder: InputBorder.none,
            ),
            onChanged: (valueKeys) {
              _searchItems(valueKeys);
            },
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: _foundUsers.isNotEmpty
                ? [Image.asset(url, width: double.infinity), ..._foundUsers]
                : <Widget>[
                    Container(
                      padding: const EdgeInsets.all(20.0),
                    ),
                    const Center(
                        child: Text(
                      'No results found',
                      style: TextStyle(fontSize: 16),
                    )),
                  ]),
      ),
    );
  }
}
