// ignore_for_file: no_logic_in_create_state, use_key_in_widget_constructors, prefer_const_constructors

import '../widgettools/accordion.dart';
import 'package:flutter/material.dart';

class PackageScreen extends StatefulWidget {
  final String url;
  const PackageScreen(this.url);

  @override
  _MyImageScreen createState() => _MyImageScreen(url);
}

class _MyImageScreen extends State<PackageScreen> {
  final String url;
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
                      padding: EdgeInsets.only(bottom: 20.0),
                    ),
                    ..._foundUsers
                  ]
                : <Widget>[
                    Container(
                      padding: const EdgeInsets.all(20.0),
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
