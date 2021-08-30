// ignore_for_file: no_logic_in_create_state, use_key_in_widget_constructors, prefer_const_constructors, avoid_print

import '../widgettools/accordion.dart';
import 'package:flutter/material.dart';
import '../ad-helper.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class PackageScreen extends StatefulWidget {
  final String url;
  const PackageScreen(this.url);

  @override
  _MyImageScreen createState() => _MyImageScreen(url);
}

class _MyImageScreen extends State<PackageScreen> {
  final String url;
  late BannerAd _ad;

  final Map<String, Accordion> _array = const {
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
    'flutter_rating_bar': Accordion(
        'flutter_rating_bar',
        'A simple yet fully customizable rating bar for flutter which also include a rating bar indicator, supporting any fraction of rating.\nimport \'package:flutter_rating_bar/flutter_rating_bar.dart\'',
        'https://pub.dev/packages/flutter_rating_bar'),
    'connectivity_plus': Accordion(
        'connectivity_plus',
        'This plugin allows Flutter apps to discover network connectivity and configure themselves accordingly. It can distinguish between cellular vs WiFi connection.\nimport \'package:connectivity_plus/connectivity_plus.dart\'',
        'https://pub.dev/packages/connectivity_plus'),
    'share_plus': Accordion(
        'share_plus',
        'A Flutter plugin to share content from your Flutter app via the platform\'s share dialog.\nimport \'package:share_plus/share_plus.dart\'',
        'https://pub.dev/packages/share_plus'),
    'sentry': Accordion(
        'sentry',
        'A crash reporting library for Dart that sends crash reports to Sentry.io. This library supports Dart VM and Web. For Flutter consider sentry_flutter instead.\nimport \'package:sentry/sentry.dart\'',
        'https://pub.dev/packages/sentry'),
    'infinite_scroll_pagination': Accordion(
        'infinite_scroll_pagination',
        'Lazily load and display pages of items as the user scrolls down your screen.\nimport \'package:infinite_scroll_pagination/infinite_scroll_pagination.dart\'',
        'https://pub.dev/packages/infinite_scroll_pagination'),
    'device_info_plus': Accordion(
        'device_info_plus',
        'Get current device information from within the Flutter application.\nimport \'package:device_info_plus/device_info_plus.dart\'',
        'https://pub.dev/packages/device_info_plus'),
    'network_info_plus': Accordion(
        'network_info_plus',
        'This plugin allows Flutter apps to discover network info and configure themselves accordingly.\nimport \'package:network_info_plus/network_info_plus.dart\'',
        'https://pub.dev/packages/network_info_plus'),
    'path_provider': Accordion(
        'path_provider',
        'A Flutter plugin for finding commonly used locations on the filesystem. Supports iOS, Android, Linux and MacOS. Not all methods are supported on all platforms.\nimport \'package:path_provider/path_provider.dart\'',
        'https://pub.dev/packages/path_provider'),
    'flutter_local_notifications': Accordion(
        'flutter_local_notifications',
        'A cross platform plugin for displaying local notifications.\nimport \'package:flutter_local_notifications/flutter_local_notifications.dart\'',
        'https://pub.dev/packages/flutter_local_notifications'),
    'battery_plus': Accordion(
        'battery_plus',
        'A Flutter plugin to access various information about the battery of the device the app is running on.\nimport \'package:battery_plus/battery_plus.dart\'',
        'https://pub.dev/packages/battery_plus'),
    'sign_in_with_apple': Accordion(
        'sign_in_with_apple',
        'Supports login via an Apple ID, as well as retrieving credentials saved in the user\'s keychain.\nimport \'package:sign_in_with_apple/sign_in_with_apple.dart\'',
        'https://pub.dev/packages/sign_in_with_apple'),
    'bottom_navy_bar': Accordion(
        'bottom_navy_bar',
        'A beautiful and animated bottom navigation. The navigation bar use your current theme, but you are free to customize it.\nimport \'package:bottom_navy_bar/bottom_navy_bar.dart\'',
        'https://pub.dev/packages/bottom_navy_bar'),
    'googleapis': Accordion(
        'googleapis',
        'Auto-generated client libraries for accessing Google APIs described through the API discovery service.\nimport \'package:googleapis/abusiveexperiencereport/v1.dart\'\nMore...',
        'https://pub.dev/packages/googleapis'),
    'chewie': Accordion(
        'chewie',
        'A video player for Flutter with Cupertino and Material play controls.\nimport \'package:chewie/chewie.dart\'',
        'https://pub.dev/packages/chewie'),
    'audioplayers': Accordion(
        'audioplayers',
        'A Flutter plugin to play multiple simultaneously audio files, works for Android, iOS, macOS and web.\nimport \'package:audioplayers/audioplayers.dart\'',
        'https://pub.dev/packages/audioplayers'),
    'pdf': Accordion(
        'pdf',
        'A pdf producer for Dart. It can create pdf files for both web or flutter.\nimport \'package:pdf/pdf.dart\'',
        'https://pub.dev/packages/pdf'),
    'native_pdf_view': Accordion(
        'native_pdf_view',
        'Flutter plugin to render PDF files on Web, MacOS, Android and iOS.\nimport \'package:native_pdf_view/native_pdf_view.dart\'',
        'https://pub.dev/packages/native_pdf_view'),
    'assets_audio_player': Accordion(
        'assets_audio_player',
        'Play music/audio stored in assets files directly from Flutter & Network, Radio, LiveStream, Local files. Compatible with Android, iOS, web and macOS.\nimport \'package:assets_audio_player/assets_audio_player.dart\'',
        'https://pub.dev/packages/assets_audio_player'),
    'cupertino_icons': Accordion(
        'cupertino_icons',
        'Default icons asset for Cupertino widgets based on Apple styled icons.\nimport \'package:cupertino_icons/cupertino_icons.dart\'',
        'https://pub.dev/packages/cupertino_icons'),
    'qr_flutter': Accordion(
        'qr_flutter',
        'QR.Flutter is a Flutter library for simple and fast QR code rendering via a Widget or custom painter.\nimport \'package:qr_flutter/qr_flutter.dart\'',
        'https://pub.dev/packages/qr_flutter'),
    'string_scanner': Accordion(
        'string_scanner ',
        'A class for parsing strings using a sequence of patterns.\nimport \'package:string_scanner/string_scanner.dart\'',
        'https://pub.dev/packages/string_scanner'),
    'widget_with_codeview': Accordion(
        'widget_with_codeview',
        'A widget with side-by-side source code view. Extracted from the flutter-catalog open-source app.\nimport \'package:widget_with_codeview/widget_with_codeview.dart\'',
        'https://pub.dev/packages/widget_with_codeview'),
    'date_time_picker': Accordion(
        'date_time_picker',
        'A Flutter widget to display a date time form field to show a date or clock dialog.\nimport \'package:date_time_picker/date_time_picker.dart\'',
        'https://pub.dev/packages/date_time_picker'),
    'syncfusion_flutter_datepicker': Accordion(
        'syncfusion_flutter_datepicker',
        'The Flutter Date Range Picker widget allows users to easily select dates or a range of dates. It has four built-in views that allow quick navigation to the desired date.\nimport \'package:syncfusion_flutter_datepicker/datepicker.dart\'',
        'https://pub.dev/packages/syncfusion_flutter_datepicker'),
    'dart_date': Accordion(
        'dart_date',
        'Date manipulation library. DateTime extensions. Also includes an Interval object.\nimport \'package:dart_date/dart_date.dart\'',
        'https://pub.dev/packages/dart_date'),
    'date_field': Accordion(
        'date_field',
        'A widget in the form of a field that lets people choose a date, a time or both.\nimport \'package:dart_date/dart_date.dart\'',
        'https://pub.dev/packages/dart_date'),
    'fluttertoast': Accordion(
        'fluttertoast',
        'Toast Library for Flutter, Easily create toast messages in single line of code.\nimport \'package:fluttertoast/fluttertoast.dart\'',
        'https://pub.dev/packages/fluttertoast'),
    'flutter_layout_grid': Accordion(
        'flutter_layout_grid',
        'A powerful grid layout system for Flutter, optimized for complex user interface design.\nimport \'package:flutter_layout_grid/flutter_layout_grid.dart\'',
        'https://pub.dev/packages/flutter_layout_grid'),
    'syncfusion_flutter_charts': Accordion(
        'syncfusion_flutter_charts',
        'Flutter Charts package is a data visualization library written natively in Dart for creating beautiful, animated and high-performance charts, which are used to craft high-quality mobile app user interfaces using Flutter.\nimport \'package:syncfusion_flutter_charts/charts.dart\'\nimport \'package:syncfusion_flutter_charts/sparkcharts.dart\'',
        'https://pub.dev/packages/syncfusion_flutter_charts'),
    'rflutter alert': Accordion(
        'RFlutter Alert',
        'RFlutter Alert is super customizable and easy-to-use alert / popup dialogs for Flutter. You may create reusable alert styles or add buttons as much as you want with ease.\nimport \'package:rflutter_alert/rflutter_alert.dart\'',
        'https://pub.dev/packages/rflutter_alert'),
    'dotted_border': Accordion(
        'dotted_border',
        'A flutter package to let users easily add a dashed border around any widget.\nimport \'package:dotted_border/dotted_border.dart\'',
        'https://pub.dev/packages/dotted_border'),
    'dots_indicator': Accordion(
        'dots_indicator',
        'Dots indicator to show progression of a PageView for example.\nimport \'package:dots_indicator/dots_indicator.dart\'',
        'https://pub.dev/packages/dots_indicator'),
    'responsive_builder': Accordion(
        'responsive_builder',
        'A set of widgets that can be used to define a readable responsive UI for widgets.\nimport \'package:responsive_builder/responsive_builder.dart\'',
        'https://pub.dev/packages/responsive_builder'),
    'curved_navigation_bar': Accordion(
        'curved_navigation_bar',
        'Stunning Animating Curved Shape Navigation Bar. Adjustable color, background color, animation curve, animation duration.\nimport \'package:curved_navigation_bar/curved_navigation_bar.dart\'',
        'https://pub.dev/packages/curved_navigation_bar'),
    'flutter_speed_dial': Accordion(
        'flutter_speed_dial',
        'Flutter plugin to implement a beautiful and dynamic Material Design Speed Dial with labels, animated icons, multi-directional children and much more.\nimport \'package:flutter_speed_dial/flutter_speed_dial.dart\'',
        'https://pub.dev/packages/flutter_speed_dial'),
    'numberpicker': Accordion(
        'numberpicker',
        'NumberPicker is a widget allowing user to choose numbers by scrolling spinners.\nimport \'package:numberpicker/numberpicker.dart\'',
        'https://pub.dev/packages/numberpicker'),
    'flutter_signin_button': Accordion(
        'flutter_signin_button',
        'A Flutter plugin for iOS and Android for generating signin buttons for different social media account.\nimport \'package:flutter_signin_button/flutter_signin_button.dart\'',
        'https://pub.dev/packages/flutter_signin_button'),
    'persistent_bottom_nav_bar': Accordion(
        'persistent_bottom_nav_bar',
        'A do all, highly customizable persistent/static bottom navigation bar for flutter. Includes up-to 20 styles.\nimport \'package:persistent_bottom_nav_bar/animations/animations.dart\'',
        'https://pub.dev/packages/persistent_bottom_nav_bar'),
    'fluro': Accordion(
        'fluro',
        'Fluro is a null-safe Flutter routing library that adds flexible routing options like wildcards, named parameters and clear route definitions.\nimport \'package:fluro/fluro.dart\'',
        'https://pub.dev/packages/fluro'),
    'printing': Accordion(
        'printing',
        'A plugin that allows Flutter apps to generate and print documents to android or ios compatible printers.\nimport \'package:printing/printing.dart\'',
        'https://pub.dev/packages/printing'),
    'pinput': Accordion(
        'pinput',
        'Pin code input (OTP) text field, Supports custom numpad.\nimport \'package:pinput/pin_put/pin_put.dart\'',
        'https://pub.dev/packages/pinput'),
    'awesome_dialog': Accordion(
        'awesome_dialog',
        'Flutter package to show beautiful dialogs.\nimport \'package:awesome_dialog/awesome_dialog.dart\'',
        'https://pub.dev/packages/awesome_dialog'),
    'sliver_tools': Accordion(
        'sliver_tools',
        'A set of useful sliver tools that are missing from the flutter framework.\nimport \'package:sliver_tools/sliver_tools.dart\'',
        'https://pub.dev/packages/sliver_tools'),
    'liquid_swipe': Accordion(
        'liquid_swipe',
        'A Flutter plugin to implement liquid Swipe effect to provided widgets.\nimport \'package:liquid_swipe/liquid_swipe.dart\'',
        'https://pub.dev/packages/liquid_swipe'),
    'intl_phone_number_input': Accordion(
        'intl_phone_number_input',
        'A simple and customizable flutter package for inputting phone number in intl / international format uses Google\'s libphonenumber.\nimport \'package:responsive_framework/responsive_framework.dart\'',
        'https://pub.dev/packages/intl_phone_number_input'),
    'responsive_framework': Accordion(
        'responsive_framework',
        'Easily make Flutter apps responsive. Automatically adapt UI to different screen sizes. Responsiveness made simple.\nimport \'package:intl_phone_number_input/intl_phone_number_input.dart\'',
        'https://pub.dev/packages/responsive_framework'),
    'path_drawing': Accordion(
        'path_drawing',
        'A flutter library to help with (Canvas) Path creation and manipulation.\nimport \'package:path_drawing/path_drawing.dart\'',
        'https://pub.dev/packages/path_drawing'),
    'grouped_list': Accordion(
        'grouped_list',
        'A Flutter ListView where the list items can be grouped into sections.\nimport \'package:grouped_list/grouped_list.dart\'',
        'https://pub.dev/packages/grouped_list'),
    'material_floating_search_bar': Accordion(
        'material_floating_search_bar',
        'A Flutter implementation of an expandable and animated floating search bar, also known as persistent search.\nimport \'package:material_floating_search_bar/material_floating_search_bar.dart\'',
        'https://pub.dev/packages/material_floating_search_bar'),
    'flutter_tts': Accordion(
        'flutter_tts',
        'A flutter plugin for Text to Speech. This plugin is supported on iOS, Android, Web, & macOS.\nimport \'package:flutter_tts/flutter_tts.dart\'',
        'https://pub.dev/packages/flutter_tts'),
    'flutter_sound': Accordion(
        'flutter_sound',
        'A complete api for audio playback and recording. Audio player, audio recorder, media player, media recorder, sound player, sound recorder.\nimport \'package:flutter_sound/flutter_sound.dart\'',
        'https://pub.dev/packages/flutter_sound'),
    'sizer': Accordion(
        'sizer',
        'A flutter plugin for Easily make Flutter apps responsive. Automatically adapt UI to different screen sizes. Responsiveness made simple.\nimport \'package:sizer/sizer.dart\'',
        'https://pub.dev/packages/sizer'),
    'velocity_x': Accordion(
        'velocity_x',
        'A minimalist Flutter framework for rapidly building custom designs.\nimport \'package:velocity_x/velocity_x.dart\'',
        'https://pub.dev/packages/velocity_x'),
    'getwidget': Accordion(
        'getwidget',
        'GetWidget is open source library that come with pre-build 1000+ UI components.\nimport \'package:getwidget/getwidget.dart\'',
        'https://pub.dev/packages/getwidget'),
    'flutter_sticky_header': Accordion(
        'flutter_sticky_header',
        'A Flutter implementation of sticky headers with a sliver as a child.\nimport \'package:flutter_sticky_header/flutter_sticky_header.dart\'',
        'https://pub.dev/packages/flutter_sticky_header'),
    'speech_to_text': Accordion(
        'speech_to_text',
        'A Flutter plugin that exposes device specific speech to text recognition capability.\nimport \'package:speech_to_text/speech_to_text.dart\'',
        'https://pub.dev/packages/speech_to_text'),
    'like_button': Accordion(
        'like_button',
        'Like Button is a flutter library that allows you to create a button with animation effects similar to Twitter\'s heart when you like something and animation effects to increase like count.\nimport \'package:like_button/like_button.dart\'',
        'https://pub.dev/packages/like_button'),
    'marquee': Accordion(
        'marquee',
        'A Flutter widget that scrolls text infinitely.\nimport \'package:marquee/marquee.dart\'',
        'https://pub.dev/packages/marquee'),
    'syncfusion_flutter_pdf': Accordion(
        'syncfusion_flutter_pdf',
        'The Flutter PDF is a library written natively in Dart for creating, reading, editing, and securing PDF files in Android, iOS, and web platforms.\nimport \'package:syncfusion_flutter_pdf/pdf.dart\'',
        'https://pub.dev/packages/syncfusion_flutter_pdf'),
    'implicitly_animated_reorderable_list': Accordion(
        'implicitly_animated_reorderable_list',
        'A Flutter ListView that implicitly animates between the changes of two lists with the support to reorder its items.\nimport \'package:implicitly_animated_reorderable_list/implicitly_animated_reorderable_list.dart\'',
        'https://pub.dev/packages/implicitly_animated_reorderable_list'),
    'syncfusion_flutter_gauges': Accordion(
        'syncfusion_flutter_gauges',
        'The Flutter Gauges library includes the data visualization widgets Linear Gauge and Radial Gauge (a.k.a. circular gauge) to create modern, interactive, animated gauges.\nimport \'package:syncfusion_flutter_gauges/gauges.dart\'',
        'https://pub.dev/packages/syncfusion_flutter_gauges'),
    'flutter_custom_clippers': Accordion(
        'flutter_custom_clippers',
        'Flutter package that provides you custom clippers to help you achieve various custom shapes.\nimport \'package:flutter_custom_clippers/flutter_custom_clippers.dart\'',
        'https://pub.dev/packages/flutter_custom_clippers'),
    'signature': Accordion(
        'signature',
        'A Flutter plugin providing performance optimized signature canvas with ability to set custom style, boundaries and initial state.\nimport \'package:signature/signature.dart\'',
        'https://pub.dev/packages/signature'),
    'step_progress_indicator': Accordion(
        'step_progress_indicator',
        'Open source Flutter package, bar indicator made of a series of selected and unselected steps.\nimport \'package:step_progress_indicator/step_progress_indicator.dart\'',
        'https://pub.dev/packages/step_progress_indicator'),
    'adaptive_dialog': Accordion(
        'adaptive_dialog',
        'Show alert dialog or modal action sheet adaptively according to platform.\nimport \'package:adaptive_dialog/adaptive_dialog.dart\'',
        'https://pub.dev/packages/adaptive_dialog'),
    'maps_launcher': Accordion(
        'maps_launcher',
        'Simple Flutter plugin to open the maps application (or browser) on all platforms.\nimport \'package:maps_launcher/maps_launcher.dart\'',
        'https://pub.dev/packages/maps_launcher'),
    'url_strategy': Accordion(
        'url_strategy',
        'Package for Flutter apps that allows setting the web URL strategy with a single line of code.\nimport \'package:url_strategy/url_strategy.dart\'',
        'https://pub.dev/packages/url_strategy'),
    'animated_bottom_navigation_bar': Accordion(
        'animated_bottom_navigation_bar',
        'AnimatedBottomNavigationBar is a customizable widget inspired by dribble shot.\nimport \'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart\'',
        'https://pub.dev/packages/animated_bottom_navigation_bar'),
    'syncfusion_flutter_sliders': Accordion(
        'syncfusion_flutter_sliders',
        'package:syncfusion_flutter_sliders/sliders.dart\nimport \'package:syncfusion_flutter_sliders/sliders.dart\'',
        'https://pub.dev/packages/syncfusion_flutter_sliders'),
    'readmore': Accordion(
        'readmore',
        'A Flutter Sliders library for creating highly customizable and UI-rich slider, range slider, and range selector widgets for filtering purposes.\nimport \'package:readmore/readmore.dart\'',
        'https://pub.dev/packages/readmore'),
    'bubble_tab_indicator': Accordion(
        'bubble_tab_indicator',
        'A Flutter library to add bubble-like effect to tab indicator to TabBar.\nimport \'package:bubble_tab_indicator/bubble_tab_indicator.dart\'',
        'https://pub.dev/packages/bubble_tab_indicator'),
    'flutter_multi_formatter': Accordion(
        'flutter_multi_formatter',
        'A package of formatters for international phone numbers, credit / debit cards and a masked formatter.\nimport \'package:flutter_multi_formatter/flutter_multi_formatter.dart\'',
        'https://pub.dev/packages/flutter_multi_formatter'),
    'intro_views_flutter': Accordion(
        'intro_views_flutter',
        'A Flutter package for simple material design app intro screens with some cool animations.\nimport \'package:intro_views_flutter/intro_views_flutter.dart\'',
        'https://pub.dev/packages/intro_views_flutter'),
    'cupertino_listview': Accordion(
        'cupertino_listview',
        'This library tends to be the equivalent of iOS UITableView with plain sections.\nimport \'package:cupertino_listview/cupertino_listview.dart\'',
        'https://pub.dev/packages/cupertino_listview'),
    'circular_countdown_timer': Accordion(
        'circular_countdown_timer',
        'Make an animated circular countdown using Circular Countdown Timer.\nimport \'package:circular_countdown_timer/circular_countdown_timer.dart\'',
        'https://pub.dev/packages/circular_countdown_timer'),
    'youtube_player_iframe': Accordion(
        'youtube_player_iframe',
        'Flutter port of the official YouTube iFrame player API. Supports web & mobile platforms.\nimport \'package:youtube_player_iframe/youtube_player_iframe.dart\'',
        'https://pub.dev/packages/youtube_player_iframe'),
    'syncfusion_flutter_datagrid': Accordion(
        'syncfusion_flutter_datagrid',
        'The Syncfusion Flutter DataGrid is used to display and manipulate data in a tabular view.\nimport \'package:syncfusion_flutter_datagrid/datagrid.dart\'',
        'https://pub.dev/packages/syncfusion_flutter_datagrid'),
    'extended_image_library': Accordion(
        'extended_image_library',
        'package library for extended_image, extended_text and extended_text_field, provide common base class.\nimport \'package:extended_image_library/extended_image_library.dart\'',
        'https://pub.dev/packages/extended_image_library'),
    'english_words': Accordion(
        'english_words',
        'Utilities for working with English words. Counts syllables, generates well-sounding word combinations, and provides access to the top 5000 English words by usage.\nimport \'package:english_words/english_words.dart\'',
        'https://pub.dev/packages/english_words'),
    'open_file': Accordion(
        'open_file',
        'A plug-in that can call native APP to open files with string result in flutter, support iOS(UTI) / android(intent) / PC(ffi) / web(dart:html)\nimport \'package:open_file/open_file.dart\'',
        'https://pub.dev/packages/open_file'),
    'universal_html': Accordion(
        'universal_html',
        'A \'dart:html\' that works in all platforms, including Flutter and server-side. Eases cross-platform development and HTML / XML processing.\nimport \'package:universal_html/html.dart\'\nMore...',
        'https://pub.dev/packages/universal_html'),
    'wakelock': Accordion(
        'wakelock',
        'Plugin that allows you to keep the device screen awake, i.e. prevent the screen from sleeping on Android, iOS, macOS, Windows, and web.\nimport \'package:wakelock/wakelock.dart\'',
        'https://pub.dev/packages/wakelock'),
    'palette_generator': Accordion(
        'palette_generator',
        'Flutter package for generating palette colors from a source image.\nimport \'package:palette_generator/palette_generator.dart\'',
        'https://pub.dev/packages/palette_generator'),
    'map': Accordion(
        'map',
        'Map widget for Flutter written in 100% Dart. Supports Android, iOS, Web and Desktop.\nimport \'package:map/map.dart\'',
        'https://pub.dev/packages/map'),
    'move_to_background': Accordion(
        'move_to_background',
        'Flutter plugin for sending mobile applications to background. Supports iOS and Android.\nimport \'package:move_to_background/move_to_background.dart\'',
        'https://pub.dev/packages/move_to_background'),
    'dotted_decoration': Accordion(
        'dotted_decoration',
        'Dotted line decoration is handly package to draw dotted divider, dotted border for rectangle, circle or rounded rectangle.\nimport \'package:dotted_decoration/dotted_decoration.dart\'',
        'https://pub.dev/packages/dotted_decoration'),
    'overflow_view': Accordion(
        'overflow_view',
        'A widget displaying children in a line with an overflow indicator at the end if there is not enough space.\nimport \'package:overflow_view/overflow_view.dart\'',
        'https://pub.dev/packages/overflow_view'),
    'chart_sparkline': Accordion(
        'chart_sparkline',
        'Beautiful sparkline charts for Flutter.Average line, highest and lowest value.\nimport \'package:chart_sparkline/chart_sparkline.dart\'',
        'https://pub.dev/packages/chart_sparkline'),
    'draw_graph': Accordion(
        'draw_graph',
        'A dart package to draw line graphs in your flutter app.\nimport \'package:draw_graph/draw_graph.dart\'',
        'https://pub.dev/packages/draw_graph'),
    'flutter_tesseract_ocr': Accordion(
        'flutter_tesseract_ocr',
        'A Tesseract 4 adds a new neural net (LSTM) based OCR engine which is focused on line recognition.\nimport \'package:flutter_tesseract_ocr/flutter_tesseract_ocr.dart\'',
        'https://pub.dev/packages/flutter_tesseract_ocr'),
    'bubble_box': Accordion(
        'bubble_box',
        'A powerful bubble box, which implements basic bubble, border, dotted line, gradient color, angle, adaptive width and height, bubble direction, offset, etc.\nimport \'package:bubble_box/bubble_box.dart\'',
        'https://pub.dev/packages/bubble_box'),
    'horizontal_data_table': Accordion(
        'horizontal_data_table',
        'A horizontal data table with a fixed column on left handside.\nimport \'package:horizontal_data_table/horizontal_data_table.dart\'',
        'https://pub.dev/packages/horizontal_data_table'),
    'snapping_sheet': Accordion(
        'snapping_sheet',
        'A package that provides a highly customizable sheet widget that snaps to different vertical & horizontal positions.\nimport \'package:snapping_sheet/snapping_sheet.dart\'',
        'https://pub.dev/packages/snapping_sheet'),
    'data_table_2': Accordion(
        'data_table_2',
        'In-place replacement for Flutter\'s DataTable and PaginatedDataTable with fixed/sticky header and few extra features.\nimport \'package:data_table_2/data_table_2.dart\'',
        'https://pub.dev/packages/data_table_2'),
    'google_place': Accordion(
        'google_place',
        'A Flutter plugin for iOS and Android and Web that provides a Google Place API.\nimport \'package:google_place/google_place.dart\'',
        'https://pub.dev/packages/google_place'),
    'salomon_bottom_bar': Accordion(
        'salomon_bottom_bar',
        'Yet another bottom navigation bar, but with a few key promises.\nimport \'package:salomon_bottom_bar/salomon_bottom_bar.dart\'',
        'https://pub.dev/packages/salomon_bottom_bar'),
    'styled_text': Accordion(
        'styled_text',
        'Text widget with formatted text using tags. Makes it easier to use formatted text in multilingual applications.\nimport \'package:styled_text/styled_text.dart\'',
        'https://pub.dev/packages/styled_text'),
    'focus_detector': Accordion(
        'focus_detector',
        'Detects when your widget appears or disappears from the screen.\nimport \'package:focus_detector/focus_detector.dart\'',
        'https://pub.dev/packages/focus_detector'),
    'flutter zoom drawer': Accordion(
        'Flutter Zoom Drawer',
        'A Flutter package with custom implementation of the Side Menu (Drawer).\nimport \'package:flutter_zoom_drawer/flutter_zoom_drawer.dart\'',
        'https://pub.dev/packages/flutter_zoom_drawer'),
    'platform_device_id': Accordion(
        'platform_device_id',
        'You can get device id from platform - linux/mac/windows/android/ios/web.\nimport \'package:platform_device_id/platform_device_id.dart\'',
        'https://pub.dev/packages/platform_device_id'),
    'shimmer_animation': Accordion(
        'shimmer_animation',
        'This shimmer animation widget can help you bring simple yet beautiful skeleton loaders to your project with ease.\nimport \'package:shimmer_animation/shimmer_animation.dart\'',
        'https://pub.dev/packages/shimmer_animation'),
    'location': Accordion(
        'location',
        'This plugin for Flutter handles getting a location on Android and iOS. It also provides callbacks when the location is changed.\nimport \'package:location/location.dart\'',
        'https://pub.dev/packages/location'),
    'bordered_text': Accordion(
        'bordered_text',
        'Flutter plugin for applying subtle stroke to a Text widget. Supports Android, iOS, and Web.\nimport \'package:bordered_text/bordered_text.dart\'',
        'https://pub.dev/packages/bordered_text'),
    'flutter_treeview': Accordion(
        'flutter_treeview',
        'A tree widget for Flutter that can be used to display nested, hierarchical data.'
            'It includes a number of features like styling labels, icons, and import and export utilities.\nimport \'package:flutter_treeview/flutter_treeview.dart\'',
        'https://pub.dev/packages/flutter_treeview'),
    'weather': Accordion(
        'weather',
        'A weather plugin for fetching current weather and forecasting via the OpenWeatherMap API. Works for both Android and iOS.\nimport \'package:weather/weather.dart\'',
        'https://pub.dev/packages/weather'),
    'weather_icons': Accordion(
        'weather_icons',
        'Flutter library for using erikflowers/weather-icons. An icon pack with over 200 weather themed icons.\nimport \'package:weather/weather.dart\'',
        'https://pub.dev/packages/weather_icons'),
    'flutter_unity_widget': Accordion(
        'flutter_unity_widget',
        'Flutter Unity 3D widget for embedding Unity game scenes in flutter. This library now supports Unity as a Library.\nimport \'package:flutter_unity_widget/flutter_unity_widget.dart\'',
        'https://pub.dev/packages/flutter_unity_widget'),
    'flutter_screenutil': Accordion(
        'flutter_screenutil',
        'A flutter plugin for adapting screen and font size.Guaranteed to look good on different models.\nimport \'package:flutter_screenutil/flutter_screenutil.dart\'',
        'https://pub.dev/packages/flutter_screenutil'),
    'audio_service': Accordion(
        'audio_service',
        'Flutter plugin to play audio in the background while the screen is off.\nimport \'package:audio_service/audio_service.dart\'',
        'https://pub.dev/packages/audio_service'),
    'inview_notifier_list': Accordion(
        'inview_notifier_list',
        'A Flutter package that builds a listview and notifies when the widgets are on screen.\nimport \'package:inview_notifier_list/inview_notifier_list.dart\'',
        'https://pub.dev/packages/inview_notifier_list'),
    'flutter_emoji': Accordion(
        'flutter_emoji',
        'A light-weight Emoji package for Flutter with all up-to-date emojis.\nimport \'package:package:flutter_emoji/flutter_emoji.dart\'',
        'https://pub.dev/packages/flutter_emoji'),
    'loader_overlay': Accordion(
        'loader_overlay',
        'A simple package to simplify screen management. When loading any async task, this package prevent the user from interacting with the screen until the async task finishes.\nimport \'package:loader_overlay/loader_overlay.dart\'',
        'https://pub.dev/packages/loader_overlay'),
    'google_mobile_ads': Accordion(
        'google_mobile_ads',
        'Flutter plugin for Google Mobile Ads, supporting banner, interstitial (full-screen), rewarded and native ads.\nimport \'flutter pub add google_mobile_ads\'',
        'https://pub.dev/packages/google_mobile_ads'),
    'lazy_loading_list': Accordion(
        'lazy_loading_list',
        'Lazy loading Widget to load more items by the index of the item to increment you a list like infinite scroll.\nimport \'package:lazy_loading_list/lazy_loading_list.dart\'',
        'https://pub.dev/packages/lazy_loading_list'),
    'dart_ipify': Accordion(
        'dart_ipify',
        'This package uses the remote ipify web services in order to get your public IP address or geographical details from any given IP.\nimport \'package:dart_ipify/dart_ipify.dart\'',
        'https://pub.dev/packages/dart_ipify'),
    'cached_network_image': Accordion(
        'cached_network_image',
        'A flutter library to show images from the internet and keep them in the cache directory.\nimport \'package:cached_network_image/cached_network_image.dart\'',
        'https://pub.dev/packages/cached_network_image'),
    'octo_image': Accordion(
        'octo_image',
        'An image library for showing placeholders, error widgets and transform your image.\nimport \'package:octo_image/octo_image.dart\'',
        'https://pub.dev/packages/octo_image'),
    'flutter_staggered_grid_view': Accordion(
        'flutter_staggered_grid_view',
        'A Flutter staggered grid view (masonry tiles) which supports multiple columns with rows of varying sizes.\nimport \'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart\'',
        'https://pub.dev/packages/flutter_staggered_grid_view'),
    'analog_clock': Accordion(
        'analog_clock',
        'Flutter Analog Clock plugin.\nimport \'package:analog_clock/analog_clock.dart\'',
        'https://pub.dev/packages/analog_clock'),
    'barcode_widget': Accordion(
        'barcode_widget',
        'Barcode generation widget for Flutter with support for standard barcodes.\nimport \'package:barcode_widget/barcode_widget.dart\'',
        'https://pub.dev/packages/barcode_widget'),
    'ndialog': Accordion(
        'ndialog',
        'Custom native dialog style with blur background, popup animation and ProgressDialog.\nimport \'package:ndialog/ndialog.dart\'',
        'https://pub.dev/packages/ndialog'),
    'flick_video_player': Accordion(
        'flick_video_player',
        'Flick Video Player is a video player for flutter. The video_player plugin gives low level access for the video playback.\nimport \'package:flick_video_player/flick_video_player.dart\'',
        'https://pub.dev/packages/flick_video_player'),
    'audio_video_progress_bar': Accordion(
        'audio_video_progress_bar',
        'A progress bar widget to show or change the position of an audio or video stream.\nimport \'package:audio_video_progress_bar/audio_video_progress_bar.dart\'',
        'https://pub.dev/packages/audio_video_progress_bar'),
    'better_player': Accordion(
        'better_player',
        'Advanced video player based on video_player and Chewie. It\'s solves many typical use cases and it\'s easy to run.\nimport \'package:better_player/better_player.dart\'',
        'https://pub.dev/packages/better_player'),
    'video_thumbnail': Accordion(
        'video_thumbnail',
        'A flutter plugin for creating a thumbnail from a local video file or from a video URL.\nimport \'package:video_thumbnail/video_thumbnail.dart\'',
        'https://pub.dev/packages/video_thumbnail'),
    'flutter_animator': Accordion(
        'flutter_animator',
        'Enables you to create stunning flutter animations, faster, efficient and with less code.\nimport \'package:flutter_animator/flutter_animator.dart\'',
        'https://pub.dev/packages/flutter_animator'),
    'local_auth': Accordion(
        'local_auth',
        'This Flutter plugin provides means to perform local, on-device authentication of the user.\nimport \'package:local_auth/local_auth.dartt\'',
        'https://pub.dev/packages/local_auth'),
    'flutter_bloc': Accordion(
        'flutter_bloc',
        'Widgets that make it easy to integrate blocs and cubits into Flutter. Built to work with package:bloc.Learn more at bloclibrary.dev!.\nimport \'package:flutter_bloc/flutter_bloc.dart\'',
        'https://pub.dev/packages/flutter_bloc'),
    'geolocator': Accordion(
        'geolocator',
        'Geolocation plugin for Flutter. This plugin provides a cross-platform (iOS, Android) API for generic location (GPS etc.) functions.\nimport \'package:geolocator/geolocator.dart\'',
        'https://pub.dev/packages/geolocator'),
    'xml': Accordion(
        'xml',
        'A lightweight library for parsing, traversing, querying, transforming and building XML documents.\nimport \'package:xml/xml.dart\'',
        'https://pub.dev/packages/xml'),
    'flutter_youtube_downloader': Accordion(
        'flutter_youtube_downloader',
        'A flutter plugin for extracting and downloading youtube video url.\nimport \'package:flutter_youtube_downloader/flutter_youtube_downloader.dart\'',
        'https://pub.dev/packages/flutter_youtube_downloader'),
    'ext_video_player': Accordion(
        'ext_video_player',
        'Clone of video_player plugin with support for Youtube & RTMP.\nimport \'package:ext_video_player/ext_video_player.dart\'',
        'https://pub.dev/packages/ext_video_player'),
    'category_picker': Accordion(
        'category_picker',
        'An input widget to handle selection of category like choices.\nimport \'package:category_picker/category_picker.dart\'',
        'https://pub.dev/packages/category_picker'),
    'youtube_parser': Accordion(
        'youtube_parser',
        'A minimalist library that extracts IDs from all kinds of YouTube urls.\nimport \'package:youtube_parser/youtube_parser.dart\'',
        'https://pub.dev/packages/youtube_parser'),
    'easy_pip': Accordion(
        'easy_pip',
        'A widget for creating a YouTube like Picture-In-Picture interface in Flutter.\nimport \'package:easy_pip/easy_pip.dart\'',
        'https://pub.dev/packages/easy_pip'),
    'youtube_player_flutter': Accordion(
        'youtube_player_flutter',
        'Flutter plugin for playing or streaming YouTube videos inline using the official iFrame Player API.\nimport \'package:youtube_player_flutter/youtube_player_flutter.dart\'',
        'https://pub.dev/packages/youtube_player_flutter'),
    'youtube_explode_dart': Accordion(
        'youtube_explode_dart',
        'A port in dart of the youtube explode library. Supports several API functions without the need of Youtube API Key.\nimport \'package:youtube_explode_dart/youtube_explode_dart.dart\'',
        'https://pub.dev/packages/youtube_explode_dart'),
    'animated_category': Accordion(
        'animated_category',
        'Flutter library for picking category.\nimport \'package:animated_category/animated_category.dart\'',
        'https://pub.dev/packages/animated_category'),
    'launch_review': Accordion(
        'launch_review',
        'A Flutter plugin to assist in leaving user reviews/ratings in Google Play Store and Apple App Store.\nimport \'package:launch_review/launch_review.dart\'',
        'https://pub.dev/packages/launch_review'),
    'store_redirect': Accordion(
        'store_redirect',
        'A Flutter plugin to redirect users to an app page in Google Play Store and Apple App Store.\nimport \'package:store_redirect/store_redirect.dart\'',
        'https://pub.dev/packages/store_redirect'),
    'rate_my_app': Accordion(
        'rate_my_app',
        'This plugin allows to kindly ask users to rate your app if custom conditions are met (eg. install time, number of launches, etc...). You can even add your own conditions.\nimport \'package:rate_my_app/rate_my_app.dart\'',
        'https://pub.dev/packages/rate_my_app'),
    'camera': Accordion(
        'camera',
        'A Flutter plugin for iOS and Android allowing access to the device cameras.\nimport \'package:camera/camera.dart\'',
        'https://pub.dev/packages/camera'),
    'math_expressions': Accordion(
        'math_expressions',
        'A library for parsing and evaluating mathematical expressions.\nimport \'package:math_expressions/math_expressions.dart\'',
        'https://pub.dev/packages/math_expressions'),
    'day_night_time_picker': Accordion(
        'day_night_time_picker',
        'A day night time picker for Flutter with Zero Dependencies.\nimport \'package:day_night_time_picker/day_night_time_picker.dart\'',
        'https://pub.dev/packages/day_night_time_picker'),
    'flutter_picker': Accordion(
        'flutter_picker',
        'Flutter plugin picker. Include NumberPicker, DateTimePicker, ArrayPicker, and default linkage Picker.\nimport \'package:flutter_picker/flutter_picker.dart\'',
        'https://pub.dev/packages/flutter_picker'),
    'o_color_picker': Accordion(
        'o_color_picker',
        'Simple and fast 2-step color picker, which supports shades and colors customization.\nimport \'package:o_color_picker/o_color_picker.dart\'',
        'https://pub.dev/packages/o_color_picker'),
    'horizontal_picker': Accordion(
        'horizontal_picker',
        'You can select your value on Horizontal Picker while scrolling on items.\nimport \'package:horizontal_picker/horizontal_picker.dart\'',
        'https://pub.dev/packages/horizontal_picker'),
    'ola_like_country_picker': Accordion(
        'ola_like_country_picker',
        'A new Flutter package for country picker.\nimport \'package:ola_like_country_picker/ola_like_country_picker.dart\'',
        'https://pub.dev/packages/ola_like_country_picker'),
    'flutter_parsed_text': Accordion(
        'flutter_parsed_text',
        'A Flutter package to parse text and make them into multiple Flutter Text widget.\nimport \'package:flutter_parsed_text/flutter_parsed_text.dart\'',
        'https://pub.dev/packages/flutter_parsed_text'),
    'money2': Accordion(
        'money2',
        'This is a Dart implementation of Money and Currency classes.\nimport \'package:money2/money2.dart\'',
        'https://pub.dev/packages/money2'),
    'm3u_nullsafe': Accordion(
        'm3u_nullsafe',
        'Simple Dart tool to parse M3U and M3U_Plus files from a string or document string.\nimport \'package:m3u_nullsafe/m3u_nullsafe.dart\'',
        'https://pub.dev/packages/m3u_nullsafe'),
    'dio': Accordion(
        'dio',
        'A powerful Http client for Dart, which supports Interceptors, FormData, Request Cancellation, File Downloading, Timeout etc.\nimport \'package:dio/dio.dart\'',
        'https://pub.dev/packages/dio'),
    'uuid': Accordion(
        'uuid',
        'RFC4122 (v1, v4, v5) UUID Generator and Parser for all Dart platforms (Web, VM, Flutter).\nimport \'package:uuid/uuid.dart\'',
        'https://pub.dev/packages/uuid'),
    'flutter_launcher_icons': Accordion(
        'flutter_launcher_icons',
        'A package which simplifies the task of updating your Flutter app\'s launcher icon.\nimport \'package:flutter_launcher_icons/main.dart\'\nmore...',
        'https://pub.dev/packages/flutter_launcher_icons'),
    'rename': Accordion(
        'rename',
        'Helps you to change or rename your flutter project BundleId and AppName for Ios, Android, MacOS and Linux platforms.\nimport \'package:rename/rename.dart\'',
        'https://pub.dev/packages/rename'),
    'universal_platform': Accordion(
        'universal_platform',
        'Replacement for dart.io.Platform class which works on Web as well as Desktop and Mobile. Allows platform checks in your view/model layer easily.\nimport \'package:universal_platform/universal_platform.dart\'',
        'https://pub.dev/packages/universal_platform'),
    'google_geocoding': Accordion(
        'google_geocoding',
        'A new Flutter package for handle google geocoding api that geocoding and reverse geocoding requests are available.\nimport \'package:google_geocoding/google_geocoding.dart\'',
        'https://pub.dev/packages/google_geocoding'),
    'flutter_wall_layout': Accordion(
        'flutter_wall_layout',
        'A Layout widget displaying a set of bricks (widgets with different shapes) as a vertical or horizontal list, like a wall...\nimport \'package:flutter_wall_layout/flutter_wall_layout.dart\'',
        'https://pub.dev/packages/flutter_wall_layout'),
    'alice': Accordion(
        'alice',
        'Alice is an HTTP Inspector tool for Flutter which helps debugging http requests. It catches and stores http requests and responses, which can be viewed via simple UI. It is inspired from Chuck and Chucker.\nimport \'package:alice/alice.dart\'',
        'https://pub.dev/packages/alice'),
    'flutter_to_airplay': Accordion(
        'flutter_to_airplay',
        'Flutter plugin that offers two widgets, one to play a video for given url or file path using native AVPlayer and second with an option to airplay it on available Apple devices.\nimport \'package:flutter_to_airplay/flutter_to_airplay.dart\'',
        'https://pub.dev/packages/flutter_to_airplay'),
    'text_parser': Accordion(
        'text_parser',
        'A Dart package for parsing text flexibly according to preset or custom regular expression patterns.\nimport \'package:text_parser/text_parser.dart\'',
        'https://pub.dev/packages/text_parser'),
    'simple_json_persistence': Accordion(
        'simple_json_persistence',
        'Flutter data storage based on simple json files.\nimport \'package:simple_json_persistence/simple_json_persistence.dart\'',
        'https://pub.dev/packages/simple_json_persistence'),
    'common_ui_toolkit': Accordion(
        'common_ui_toolkit',
        'common UI toolkit to clean your code and use it easily and reusable code.\nimport \'package:common_ui_toolkit/common_ui_toolkit.dart\'',
        'https://pub.dev/packages/common_ui_toolkit'),
    'flutter_feed_reaction': Accordion(
        'flutter_feed_reaction',
        'A Flutter package providing you with highly customizable reactions list for posts/comments in a Social Media kind of an app.\nimport \'package:flutter_feed_reaction/flutter_feed_reaction.dart\'',
        'https://pub.dev/packages/flutter_feed_reaction'),
    'tch_common_widgets': Accordion(
        'tch_common_widgets',
        'Flutter common widgets & theming package used by Tomas Chyly. Contains custom widgets that are used on multiple projects. As well as global theming capability.\nimport \'package:tch_common_widgets/tch_common_widgets.dart\'',
        'https://pub.dev/packages/tch_common_widgets'),
    'catcher': Accordion(
        'catcher',
        'Catcher is Flutter plugin which automatically catches error/exceptions and handle them. \nimport \'package:catcher/catcher.dart\'',
        'https://pub.dev/packages/catcher'),
    'tch_appliable_core': Accordion(
        'tch_appliable_core',
        'Flutter core package used by Tomas Chyly & appliable.eu. Contains common functionality to get started faster & consistently.\nimport \'package:tch_appliable_core/tch_appliable_core.dart\'',
        'https://pub.dev/packages/tch_appliable_core'),
    'universal_translator': Accordion(
        'universal_translator',
        'A flutter plugin for adapting screen and font size.Let your UI display a reasonable layout on different screen sizes.\nimport \'package:universal_translator/universal_translator.dart\'',
        'https://pub.dev/packages/universal_translator'),
    'flutter_slider_indicator': Accordion(
        'flutter_slider_indicator',
        'Slider Indicator Widget built in for flutter.\nimport \'package:flutter_slider_indicator/flutter_slider_indicator.dart\'',
        'https://pub.dev/packages/flutter_slider_indicator'),
    'mobx': Accordion(
        'mobx',
        'MobX is a library for reactively managing the state of your applications. Use the power of observables, actions, and reactions to supercharge your Dart and Flutter apps.\nimport \'package:mobx/mobx.dart\'',
        'https://pub.dev/packages/mobx'),
    'flutter_mobx': Accordion(
        'flutter_mobx',
        'Flutter integration for MobX. It provides a set of Observer widgets that automatically rebuild when the tracked observables change.\nimport \'package:flutter_mobx/flutter_mobx.dart\'',
        'https://pub.dev/packages/flutter_mobx'),
    'mobx_codegen': Accordion(
        'mobx_codegen',
        'Adds support for annotating your MobX code with @observable, @computed, @action, making it super simple to use MobX.\nimport \'package:mobx_codegen/mobx_codegen.dart\'',
        'https://pub.dev/packages/mobx_codegen'),
    'flutter_calendar_week': Accordion(
        'flutter_calendar_week',
        'Flutter calendar week UI package.\nimport \'package:flutter_calendar_week/flutter_calendar_week.dart\'',
        'https://pub.dev/packages/flutter_calendar_week'),
    'auto_route': Accordion(
        'auto_route',
        'It’s a Flutter navigation package, it allows for strongly-typed arguments passing, effortless deep-linking and it uses code generation to simplify routes setup, with that being said it requires a minimal amount of code to generate everything needed for navigation inside of your App.\nimport \'package:auto_route/auto_route.dart\'',
        'https://pub.dev/packages/auto_route'),
    'tfann': Accordion(
        'tfann',
        'Tiny Fast Artificial Neural Network Library.\nimport \'package:tfann/tfann.dart\'',
        'https://pub.dev/packages/auto_route'),
    'roundcheckbox': Accordion(
        'roundcheckbox',
        'Package to make easier the proccess of creating a round circle box.\nimport \'package:roundcheckbox/roundcheckbox.dart\'',
        'https://pub.dev/packages/roundcheckbox'),
    'flutter_credit_card_detector': Accordion(
        'flutter_credit_card_detector',
        'A Flutter package that allows you to easily implement credit card user interface with card detection.\nimport \'package:flutter_credit_card_detector/flutter_credit_card_detector.dart\'',
        'https://pub.dev/packages/flutter_credit_card_detector'),
    'photo_card_swiper': Accordion(
        'photo_card_swiper',
        'A simple flutter package for creating a swiping card layout for list of photos.\nimport \'package:photo_card_swiper/photo_card_swiper.dart\'',
        'https://pub.dev/packages/photo_card_swiper'),
    'get_time_ago': Accordion(
        'get_time_ago',
        'A Flutter plugin to convert and format DateTime object into get_time_ago format to get String like 10 seconds ago, a minute ago, 7 hours ago, etc.\nimport \'package:get_time_ago/get_time_ago.dart\'',
        'https://pub.dev/packages/get_time_ago'),
    'google_maps_cluster_manager': Accordion(
        'google_maps_cluster_manager',
        'A Flutter package to cluster items on a Google Maps widget based on Geohash. Highly inspired by clustering_google_maps.\nimport \'package:google_maps_cluster_manager/google_maps_cluster_manager.dart\'',
        'https://pub.dev/packages/google_maps_cluster_manager'),
    'html': Accordion(
        'html',
        'APIs for parsing and manipulating HTML content outside the browser.\nimport \'package:html/dom.dart\'\nmore...',
        'https://pub.dev/packages/html'),
    'simple_tooltip': Accordion(
        'simple_tooltip',
        'A plugin for creating tooltips with shape of a balloon.\nimport \'package:simple_tooltip/simple_tooltip.dart\'',
        'https://pub.dev/packages/simple_tooltip'),
    'youtube_api': Accordion(
        'youtube_api',
        'A Flutter plugin for fetching interacting with YouTube Server to fetch data using API. Supports iOS and Android.\nimport \'package:youtube_api/youtube_api.dart\'',
        'https://pub.dev/packages/youtube_api'),
    'tabbed_view': Accordion(
        'tabbed_view',
        'Flutter widget inspired by the classic Desktop-style tab component. Supports customizable themes.\nimport \'package:tabbed_view/tabbed_view.dart\'',
        'https://pub.dev/packages/tabbed_view'),
    'simple_connection_checker': Accordion(
        'simple_connection_checker',
        'A simple package to check when the device is connected (connectivity) to internet. Also provide a method to listen for connection status changes.\nimport \'package:simple_connection_checker/simple_connection_checker.dart\'',
        'https://pub.dev/packages/simple_connection_checker'),
    'custom_page_transitions': Accordion(
        'custom_page_transitions',
        'This package helps to handle the animations of the screen transitions in an elegant and simple way.\nimport \'package:custom_page_transitions/custom_page_transitions.dart\'',
        'https://pub.dev/packages/custom_page_transitions'),
    'flutter_flame_architecture': Accordion(
        'flutter_flame_architecture',
        'Use flutter(like) widgets inside Flame. Zoom, Scroll, Wrap, Grid, SafeArea, ... You can use them all in combination with flame thanks to this intuitive package.\nimport \'package:flutter_flame_architecture/flutter_flame_architecture.dart\'',
        'https://pub.dev/packages/flutter_flame_architecture'),
    'contextmenu': Accordion(
        'contextmenu',
        'Display a beautifully animated, material context menu using pure Flutter.\nimport \'package:contextmenu/contextmenu.dart\'',
        'https://pub.dev/packages/contextmenu'),
    'textfield_tags': Accordion(
        'textfield_tags',
        'This is a widget that allows your users to create tags by entering the tag\'s name inside of textfield and make the tags appear in the textfield.\nimport \'package:textfield_tags/textfield_tags.dart\'',
        'https://pub.dev/packages/textfield_tags'),
    'supabase': Accordion(
        'supabase',
        'A Dart client for Supabase.\nimport \'package:supabase/supabase.dart\'',
        'https://pub.dev/packages/supabase'),
    'universal_scroll_view': Accordion(
        'universal_scroll_view',
        'Universal Scroll View is a cross platform package which base on Flutter framework.\nimport \'package:universal_scroll_view/universal_single_child_scroll_view.dart\'',
        'https://pub.dev/packages/universal_scroll_view'),
    'fl_location': Accordion(
        'fl_location',
        'A plugin that can access the location services of each platform and collect device location data.\nimport \'package:fl_location/fl_location.dart\'',
        'https://pub.dev/packages/fl_location'),
    'fl_location_platform_interface': Accordion(
        'fl_location_platform_interface',
        'A common platform interface for the fl_location plugin.\nimport \'package:fl_location_platform_interface/fl_location_platform_interface.dart\'',
        'https://pub.dev/packages/fl_location_platform_interface'),
    'flutter_echarts': Accordion(
        'lutter_echarts',
        'A Flutter widget to use Apache ECharts in a reactive way.\nimport \'package:flutter_echarts/flutter_echarts.dart\'',
        'https://pub.dev/packages/flutter_echarts'),
    'geofence_service': Accordion(
        'geofence_service',
        'This plugin is a geofence service with activity recognition API.\nimport \'package:geofence_service/geofence_service.dart\'',
        'https://pub.dev/packages/geofence_service'),
    'poly_geofence_service': Accordion(
        'poly_geofence_service',
        'This plugin is a service that can perform geo-fencing by creating a polygon geofence. \nimport \'package:poly_geofence_service/poly_geofence_service.dart\'',
        'https://pub.dev/packages/poly_geofence_service'),
    'fl_mlkit_scanning': Accordion(
        'fl_mlkit_scanning',
        'Realize fast and stable code scanning function based on Google ML Kit, and support Android, iOS.\nimport \'package:fl_mlkit_scanning/fl_mlkit_scanning.dart\'',
        'https://pub.dev/packages/fl_mlkit_scanning'),
    'fl_amap': Accordion(
        'fl_amap',
        '高德地图定位flutter组件.\nimport \'package:fl_amap/fl_amap.dart\'',
        'https://pub.dev/packages/fl_amap'),
    'visa': Accordion(
        'visa',
        'This is an OAuth 2.0 package that makes it super easy to add third party authentication to flutter apps.\nimport \'package:visa/auth-data.dart\'\nmore...',
        'https://pub.dev/packages/visa'),
    'bonfire': Accordion(
        'bonfire',
        'Build RPG games and similar with the power of FlameEngine!\nimport \'package:bonfire/bonfire.dart\'',
        'https://pub.dev/packages/bonfire'),
    'mop': Accordion(
        'mop',
        '本插件提供在 Flutter 运行环境中运行小程序能力.\nimport \'package:mop/mop.dart\'',
        'https://pub.dev/packages/mop'),
    'banai_tabbar': Accordion(
        'banai_tabbar',
        'This plug-in is designed to solve the problem of jitter in enlarging and reducing the tabbar font of flutter.\nimport \'package:banai_tabbar/banai_tabbar.dart\'',
        'https://pub.dev/packages/banai_tabbar'),
    'keybord_library': Accordion(
        'keybord_library',
        'a flutter keyboard library.\nimport \'package:keybord_library/keybord_library.dart\'',
        'https://pub.dev/packages/keybord_library'),
    'r_get_ip': Accordion(
        'r_get_ip',
        'A new Flutter project about get ip address.\nimport \'package:r_get_ip/r_get_ip.dart\'',
        'https://pub.dev/packages/r_get_ip'),
    'stylish_dialog': Accordion(
        'stylish_dialog',
        'A collection of stylish animated dialogs like Normal, Progress, Success, Info, Warning, and Error for flutter.\nimport \'package:stylish_dialog/stylish_dialog.dart\'',
        'https://pub.dev/packages/stylish_dialog'),
    'flutter_animation_progress_bar': Accordion(
        'flutter_animation_progress_bar',
        'This colorful Flutter widget package aims to show an animation progress bar in reactive style.\nimport \'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart\'',
        'https://pub.dev/packages/flutter_animation_progress_bar'),
    'flutter_scale_ruler': Accordion(
        'flutter_scale_ruler',
        'A simple scale ruler for adding length in feet and inches and cms.\nimport \'package:flutter_scale_ruler/flutter_scale_ruler.dart\'',
        'https://pub.dev/packages/flutter_scale_ruler'),
    'easy_firebase_auth': Accordion(
        'easy_firebase_auth',
        'Add Firebase authentication to your Flutter app with a few lines of code.\nimport \'package:easy_firebase_auth/easy_firebase_auth.dart\'',
        'https://pub.dev/packages/easy_firebase_auth'),
    'get': Accordion(
        'get',
        'Open screens/snackbars/dialogs without context, manage states and inject dependencies easily with GetX.\nimport \'package:get/get.dart\'',
        'https://pub.dev/packages/get'),
    'image_cropping': Accordion(
        'image_cropping',
        'This package helps you to crop image with ratio and free scale.\nimport \'package:image_cropping/image_cropping.dart\'',
        'https://pub.dev/packages/image_cropping'),
    'hydrated': Accordion(
        'hydrated',
        'Hydrated provides a Subject that automatically persists to Flutter\'s local storage and hydrates on creation!\nimport \'package:hydrated/hydrated.dart\'',
        'https://pub.dev/packages/hydrated'),
    'open_weather_map_client': Accordion(
        'open_weather_map_client',
        'Package that communicates with Open Weather Map to obtain climate data in a model.\nimport \'package:open_weather_map_client/open_weather_map_client.dart\'',
        'https://pub.dev/packages/open_weather_map_client'),
    'progress_loading_button': Accordion(
        'progress_loading_button',
        'A Material Flutter Button that supports variety of button styles.\nimport \'package:progress_loading_button/progress_loading_button.dart\'',
        'https://pub.dev/packages/progress_loading_button'),
    'babstrap_settings_screen': Accordion(
        'babstrap_settings_screen',
        'This package helps you to display a nice settings screen with Flutter in a very simple and fast way.\nimport \'package:babstrap_settings_screen/babstrap_settings_screen.dart\'',
        'https://pub.dev/packages/babstrap_settings_screen'),
    'appodeal_flutter': Accordion(
        'appodeal_flutter',
        'A Flutter plugin to display ads from Appodeal. It currently supports Banner, Interstitial, Reward and Non-Skippable ads.\nimport \'package:appodeal_flutter/appodeal_flutter.dart\'',
        'https://pub.dev/packages/appodeal_flutter'),
    'flutter_siri_suggestions': Accordion(
        'flutter_siri_suggestions',
        'Flutter plugin for exposure on Siri Suggestions.\nimport \'package:flutter_siri_suggestions/flutter_siri_suggestions.dart\'',
        'https://pub.dev/packages/flutter_siri_suggestions'),
    'video_editor': Accordion(
        'video_editor',
        'Video Editor allows trim, crop, rotate and scale video with a super flexible UI Design.\nimport \'package:video_editor/video_editor.dart\'',
        'https://pub.dev/packages/video_editor'),
    'flutter_lid': Accordion(
        'flutter_lid',
        'A Flutter library built to expose widgets that integrate with state notifier. Built to work with the state_notifier state management packages.\nimport \'package:flutter_lid/flutter_lid.dart\'',
        'https://pub.dev/packages/flutter_lid'),
    'floating_pullup_card': Accordion(
        'floating_pullup_card',
        'A beautiful and custom floating pull up style Card for flutter.\nimport \'package:floating_pullup_card/floating_pullup_card.dart\'',
        'https://pub.dev/packages/floating_pullup_card'),
    'responsive_grid_list': Accordion(
        'responsive_grid_list',
        'A Flutter plugin to create responsive grid lists using ListView.builder() or SliverList with a SliverChildBuilderDelegate.\nimport \'package:responsive_grid_list/responsive_grid_list.dart\'',
        'https://pub.dev/packages/responsive_grid_list'),
    'flutter_placeholder_textlines': Accordion(
        'flutter_placeholder_textlines',
        'A simple plugin to generate placeholder lines that emulates text in a UI, useful for displaying placeholder content while loading or empty items.\nimport \'package:flutter_placeholder_textlines/flutter_placeholder_textlines.dart\'',
        'https://pub.dev/packages/flutter_placeholder_textlines'),
    'tutorial_coach_mark': Accordion(
        'tutorial_coach_mark',
        'Guide that helps you to present your app and its features in a beautiful, simple and customizable way.\nimport \'package:tutorial_coach_mark/tutorial_coach_mark.dart\'',
        'https://pub.dev/packages/tutorial_coach_mark'),
    'easy_widgets': Accordion(
        'easy_widgets',
        'Simplified and quick access to most used widget with easy access to extenstions and functions/helpers which are responsive in nature.\nimport \'package:easy_widget/easy_widget.dart\'',
        'https://pub.dev/packages/easy_widgets'),
    'responsive_units': Accordion(
        'responsive_units',
        'A Flutter package that provides responsive units that scale with the device\'s screen size.\nimport \'package:responsive_units/responsive_units.dart\'',
        'https://pub.dev/packages/responsive_units'),
    'add_2_calendar': Accordion(
        'add_2_calendar',
        'A really simple Flutter plugin to add events to each platform\'s default calendar.\nimport \'package:add_2_calendar/add_2_calendar.dart\'',
        'https://pub.dev/packages/add_2_calendar'),
    'quickpass_yidun_flutter': Accordion(
        'quickpass_yidun_flutter',
        '直连三大运营商，一步校验手机号与当前 SIM 卡号一致性。优化注册/登录/支付等场景验证流程.\nimport \'package:quickpass_yidun_flutter/quickpass_flutter_plugin.dart\'',
        'https://pub.dev/packages/quickpass_yidun_flutter'),
    'flutter_custom_tab_bar': Accordion(
        'flutter_custom_tab_bar',
        'A custom tab bar to choose.\nimport \'package:flutter_custom_tab_bar/custom_tab_bar.dart\'\nmore...',
        'https://pub.dev/packages/flutter_custom_tab_bar'),
    'story_time': Accordion(
        'story_time',
        'Instagram stories like UI with rich animations and customizability.\nimport \'package:story_time/story_page_view/story_page_view.dart\'',
        'https://pub.dev/packages/story_time'),
    'custom_pop_up_menu': Accordion(
        'custom_pop_up_menu',
        'Wrap a widget with CustomPopupMenu, Tap or Long Press this widget, a popup menu would display in a suitable position.\nimport \'package:custom_pop_up_menu/custom_pop_up_menu.dart\'',
        'https://pub.dev/packages/custom_pop_up_menu'),
    'aqua': Accordion(
        'aqua',
        'Utility classes/functions to help with UI development using the Flutter framework.\nimport \'package:aqua/aqua.dart\'',
        'https://pub.dev/packages/aqua'),
    'stacked_chart': Accordion(
        'stacked_chart',
        'A flutter package for creating a stack barchart with easy customization.\nimport \'package:stacked_chart/stacked_chart.dart\'',
        'https://pub.dev/packages/stacked_chart'),
    'keyboard_languages': Accordion(
        'keyboard_languages',
        'Flutter plugin that lists available keyboard languages in Android/iOS device.\nimport \'package:keyboard_languages/keyboard_languages.dart\'',
        'https://pub.dev/packages/keyboard_languages'),
    'better_wifi_manager': Accordion(
        'better_wifi_manager',
        'A simple Wifi manager for Flutter.\nimport \'package:better_wifi_manager/better_wifi_manager.dart\'',
        'https://pub.dev/packages/better_wifi_manager'),
    'swipeable_page_route': Accordion(
        'swipeable_page_route',
        'Swipe to navigate back and admire beautifully morphing widgets.\nimport \'package:swipeable_page_route/swipeable_page_route.dart\'',
        'https://pub.dev/packages/swipeable_page_route'),
    'slide_countdown': Accordion(
        'slide_countdown',
        'Animation countdown timer for Flutter.\nimport \'package:slide_countdown/slide_countdown.dart\'',
        'https://pub.dev/packages/slide_countdown'),
    'flutter_secure_keyboard': Accordion(
        'flutter_secure_keyboard',
        'Mobile secure keyboard to prevent KeyLogger attack and screen capture.\nimport \'package:flutter_secure_keyboard/flutter_secure_keyboard.dart\'',
        'https://pub.dev/packages/flutter_secure_keyboard'),
    'localize_and_translate': Accordion(
        'localize_and_translate',
        'Flutter localization in easy steps.\nimport \'package:localize_and_translate/localize_and_translate.dart\'',
        'https://pub.dev/packages/localize_and_translate'),
    'sheep_animation': Accordion(
        'sheep_animation',
        'Package that makes creating Flutter animation easier.\nimport \'package:sheep_animation/sheep_animation.dart\'',
        'https://pub.dev/packages/sheep_animation'),
    'simple_3d': Accordion(
        'simple_3d',
        'This package was created for the convenience of 3D non-experts, including scientists.\nimport \'package:simple_3d/simple_3d.dart\'',
        'https://pub.dev/packages/simple_3d'),
    'api_event': Accordion(
        'api_event',
        'Used to get a response from a service call and control server events.\nimport \'package:api_event/api_event.dart\'',
        'https://pub.dev/packages/api_event'),
    'fl_paging': Accordion(
        'fl_paging',
        'A new Flutter package support paginating for Listview, Gridview and NestedScrollView.\nimport \'package:fl_paging/fl_paging.dart\'',
        'https://pub.dev/packages/fl_paging'),
    'snapping_page_scroll': Accordion(
        'snapping_page_scroll',
        'A plugin that acts similar to a PageView but either snaps to the closest page or scrolls multiple pages and then snaps, based on how fast the user scrolls.\nimport \'package:snapping_page_scroll/snapping_page_scroll.dart\'',
        'https://pub.dev/packages/snapping_page_scroll'),
    'table_calendar': Accordion(
        'table_calendar',
        'Highly customizable, feature-packed calendar widget for Flutter.\nimport \'package:table_calendar/table_calendar.dart\'',
        'https://pub.dev/packages/table_calendar'),
    'datatools': Accordion(
        'datatools',
        'Unified Fetch API for HTTP and files.\nimport \'package:datatools/fetch_http.dart\'',
        'https://pub.dev/packages/datatools'),
    'file_picker': Accordion(
        'file_picker',
        'A package that allows you to use the native file explorer to pick single or multiple files, with extensions filtering support.\nimport \'package:file_picker/file_picker.dart\'',
        'https://pub.dev/packages/file_picker'),
    'star_menu': Accordion(
        'star_menu',
        'Contextual popup menu with different shapes and multiple ways to fine-tune animation and position.\nimport \'package:star_menu/star_menu.dart\'',
        'https://pub.dev/packages/star_menu'),
    'flutter_collapsing_toolbar': Accordion(
        'flutter_collapsing_toolbar',
        'A Flutter package to create a Romantic Collapsing Toolbar.\nimport \'package:flutter_collapsing_toolbar/flutter_collapsing_toolbar.dart\'',
        'https://pub.dev/packages/flutter_collapsing_toolbar'),
    'gallery_saver': Accordion(
        'gallery_saver',
        'Saves images and videos from network or temporary file to external storage.\nimport \'package:gallery_saver/gallery_saver.dart\'',
        'https://pub.dev/packages/gallery_saver'),
    'google_map_iframe': Accordion(
        'google_map_iframe',
        'A minimal way to embed google maps in flutter project.\nimport \'package:google_map_iframe/google_map_iframe.dart\'',
        'https://pub.dev/packages/google_map_iframe'),
    'well_formed': Accordion(
        'well_formed',
        'A form field package designed to relieve developers of much of the form-related coding.\nimport \'package:well_formed/well_formed.dart\'',
        'https://pub.dev/packages/well_formed'),
    'api_request': Accordion(
        'api_request',
        'api request for handle call api. every request is an action has execute method.\nimport \'package:api_request/api_request.dart\'',
        'https://pub.dev/packages/api_request'),
    'sawo': Accordion(
        'sawo',
        'It helps you to authenticate user via their email or phone number.\nimport \'package:sawo/sawo.dart\'',
        'https://pub.dev/packages/sawo'),
    'fl_camera': Accordion(
        'fl_camera',
        'Support Android / IOS, Android uses camerx.\nimport \'package:fl_camera/fl_camera.dart\'',
        'https://pub.dev/packages/fl_camera'),
    'flutter_svg_provider': Accordion(
        'flutter_svg_provider',
        'Generate image provider from svg path, use flutter_svg as a dependency.\nimport \'package:flutter_svg_provider/flutter_svg_provider.dart\'',
        'https://pub.dev/packages/flutter_svg_provider'),
    'hidden_drawer_menu': Accordion(
        'hidden_drawer_menu',
        'Hidden Drawer Menu is a library for adding a beautiful drawer mode menu feature with perspective animation.\nimport \'package:hidden_drawer_menu/hidden_drawer_menu.dart\'',
        'https://pub.dev/packages/hidden_drawer_menu'),
    'responsive_navbar': Accordion(
        'responsive_navbar',
        'A responsive Navigation Bar for each field of use.\nimport \'package:responsive_navbar/responsive_navbar.dart\'',
        'https://pub.dev/packages/responsive_navbar'),
    'postgres': Accordion(
        'postgres',
        'A library for connecting to and querying PostgreSQL databases.\nimport \'package:postgres/postgres.dart\'',
        'https://pub.dev/packages/postgres'),
    'simple_audio_player': Accordion(
        'simple_audio_player',
        'A simple audio player for Flutter.\nimport \'package:simple_audio_player/simple_audio_player.dart\'',
        'https://pub.dev/packages/simple_audio_player'),
    'devilF engine': Accordion(
        'DevilF Engine',
        'A Flutter 2D RPG Game Engine On Web & Android & IOS.\nimport \'package:devilf_engine/devilf_engine.dart\'',
        'https://pub.dev/packages/devilf_engine'),
    'flutter_hidden_drawer': Accordion(
        'flutter_hidden_drawer',
        'Tooltip function built in for flutter.\nimport \'package:flutter_hidden_drawer/flutter_hidden_drawer.dart\'',
        'https://pub.dev/packages/flutter_hidden_drawer'),
    'glass': Accordion(
        'glass',
        'Easily convert any Widget into a glass / frosted glass version of itself, following the glassmorphism / glassmorphic design trend.\nimport \'package:glass/glass.dart\'',
        'https://pub.dev/packages/glass'),
    'flutter_tencentad': Accordion(
        'flutter_tencentad',
        'flutter_tencentad是一款集成了腾讯优量汇广告Android和iOSSDK的Flutter插件,方便直接调用优量汇广告SDK方法快速开发.\nimport \'package:flutter_tencentad/flutter_tencentad.dart\'',
        'https://pub.dev/packages/flutter_tencentad'),
    'xui': Accordion(
        'xui',
        '主要包含项目中常用的html元素，项目布局和js方法.\nimport \'package:xui/xui.dart\'',
        'https://pub.dev/packages/xui'),
    'tab_indicator_styler': Accordion(
        'tab_indicator_styler',
        'Add beautiful and trending tab indicators directly to your default Flutter TabBar.\nimport \'package:tab_indicator_styler/tab_indicator_styler.dart\'',
        'https://pub.dev/packages/tab_indicator_styler'),
    'draggable_widget': Accordion(
        'draggable_widget',
        'A flutter package which will help you to create a draggable widget that can be dragged around the screen.\nimport \'package:draggable_widget/draggable_widget.dart\'',
        'https://pub.dev/packages/draggable_widget'),
    'rapidfire': Accordion(
        'rapidfire',
        'A comprehensive ORM system for mobile application development.\nimport \'package:rapidfire/RapidFire.dart\'',
        'https://pub.dev/packages/rapidfire'),
    'flutter_quill': Accordion(
        'flutter_quill',
        'FlutterQuill is a rich text editor and a Quill component for Flutter.\nimport \'package:flutter_quill/flutter_quill.dart\'',
        'https://pub.dev/packages/flutter_quill'),
    'date_count_down': Accordion(
        'date_count_down',
        'A new Flutter package that provide already made Count down functionality.\nimport \'package:date_count_down/date_count_down.dart\'',
        'https://pub.dev/packages/date_count_down'),
    'geocoder_offline': Accordion(
        'geocoder_offline',
        'Dart library for super-fast offline reverse geocoding.\nimport \'package:geocoder_offline/geocoder_offline.dart\'',
        'https://pub.dev/packages/geocoder_offline'),
    'flutter_font_picker': Accordion(
        'flutter_font_picker',
        'A custom Flutter widget that lets the user select a Google Font from a custom dropdown.\nimport \'package:flutter_font_picker/flutter_font_picker.dart\'',
        'https://pub.dev/packages/flutter_font_picker'),
    'select_any': Accordion(
        'select_any',
        'A complete and flexible library for viewing data in tables or lists.\nimport \'package:select_any/select_any.dart\'',
        'https://pub.dev/packages/select_any'),
    'data_table_plus': Accordion(
        'data_table_plus',
        'Table based on DataTable stock and DataTable2, with some improvements.\nimport \'package:data_table_plus/data_table_plus.dart\'',
        'https://pub.dev/packages/data_table_plus'),
    'facio_design_system': Accordion(
        'facio_design_system',
        'The facio_components for Flutter allows you to easily use customized components from Facio Design System in your Flutter app.\nimport \'package:facio_components/components.dart\'',
        'https://pub.dev/packages/facio_design_system'),
    'flutter_audio_capture': Accordion(
        'flutter_audio_capture',
        'Capture the audio stream buffer through microphone for iOS/Android.\nimport \'package:flutter_audio_capture/flutter_audio_capture.dart\'',
        'https://pub.dev/packages/flutter_audio_capture'),
    'event_bloc': Accordion(
        'event_bloc',
        'Event Bloc is an event-based implementation of the BLoC pattern, the recommended State Management Pattern for Flutter by Google!\nimport \'package:event_bloc/event_bloc.dart\'',
        'https://pub.dev/packages/event_bloc'),
  };
  var _foundUsers = <Widget>[];
  var _getKeys = [];
  int _count = 0;
  @override
  void initState() {
    _getKeys = _array.keys.toList();
    _count = _getKeys.length;
    _getKeys.sort((a, b) => a.compareTo(b));
    // at the beginning, all users are shown
    _foundUsers = _getKeys.map((item) => _array[item]).toList().cast<Widget>();
    _ad = BannerAd(
      adUnitId: AdHelper.bannerAdUnitId,
      size: AdSize.banner,
      request: AdRequest(),
      listener: BannerAdListener(
        onAdLoaded: (_) {
          setState(() {});
        },
        onAdFailedToLoad: (ad, error) {
          // Releases an ad resource when it fails to load
          ad.dispose();

          print('Ad load failed (code=${error.code} message=${error.message})');
        },
      ),
    );
    _ad.load();
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

  @override
  void dispose() {
    _ad.dispose();

    super.dispose();
  }

  _MyImageScreen(this.url);
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        bool willLeave = false;
        // show the confirm dialog
        await showDialog(
            context: context,
            builder: (_) => AlertDialog(
                  title: Text('Are you sure want to leave?'),
                  actions: [
                    ElevatedButton(
                        onPressed: () {
                          willLeave = true;
                          Navigator.of(context).pop();
                        },
                        child: Text('Yes')),
                    TextButton(
                        onPressed: () => Navigator.of(context).pop(),
                        child: Text('No'))
                  ],
                ));
        return willLeave;
      },
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 70,
          centerTitle: true,
          title: Container(
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
                ? [
                    Image.asset(url, width: double.infinity),
                    Container(
                      padding: EdgeInsets.only(top: 20.0),
                    ),
                    Text(
                      'Collected $_count Packages',
                      style: TextStyle(
                          fontSize: 16.0, fontWeight: FontWeight.w700),
                    ),
                    Container(
                      padding: EdgeInsets.only(bottom: 2.0),
                    ),
                    Container(
                      child: AdWidget(ad: _ad),
                      width: MediaQuery.of(context).size.width,
                      height: 72.0,
                      alignment: Alignment.center,
                    ),
                    ..._foundUsers
                  ]
                : <Widget>[
                    Container(
                      child: AdWidget(ad: _ad),
                      width: MediaQuery.of(context).size.width,
                      height: 72.0,
                      alignment: Alignment.center,
                    ),
                    Container(
                      padding: const EdgeInsets.all(2.0),
                    ),
                    const Center(
                      child: Text(
                        'No results found',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ],
          ),
        ),
      ),
    );
  }
}
