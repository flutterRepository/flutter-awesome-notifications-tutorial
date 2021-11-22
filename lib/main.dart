import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/material.dart';
import 'package:flutter_awesome_notifications_tutorial/home_page.dart';

void main() {
  AwesomeNotifications().initialize(
    'resource://drawable/res_notification_app_icon', //Localisation de l'icon utiliser pour la version Android
    [
      NotificationChannel(
        channelKey: 'basic_channel',
        channelName: 'Notifications basiques',
        defaultColor: Colors.teal,
        importance: NotificationImportance.High,
        channelShowBadge: true,
      ),
      NotificationChannel(
        channelKey: 'scheduled_channel',
        channelName: 'Notifications plannifée',
        defaultColor: Colors.teal,
        locked: true, //Simple swipe ne l'enlève pas
        importance: NotificationImportance.High,
        soundSource: 'resource://raw/res_custom_notification',
      ),
    ],
  );
  runApp(AppWidget());
}

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.teal,
        colorScheme:
            ColorScheme.fromSwatch().copyWith(secondary: Colors.tealAccent),
      ),
      title: 'Green Thumbs',
      home: HomePage(),
    );
  }
}
