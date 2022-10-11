import 'package:country_code_picker/country_localizations.dart';
import 'package:flutter/material.dart';
import 'package:fly_deal_fare/ui/deals_screen.dart';
import 'package:fly_deal_fare/ui/login_screen.dart';
import 'package:fly_deal_fare/ui/myaccount_screen.dart';
import 'package:fly_deal_fare/ui/mytrips_screen.dart';
import 'package:fly_deal_fare/ui/register_screen.dart';
import 'package:fly_deal_fare/ui/reward_screen.dart';
import 'package:fly_deal_fare/ui/search_screen.dart';
import 'package:fly_deal_fare/ui/setting.dart';
import 'package:fly_deal_fare/ui/notification_screen.dart';
import 'package:zendesk_messaging/zendesk_messaging.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      supportedLocales: [Locale('en','US')],
      localizationsDelegates: [
        CountryLocalizations.delegate
      ],
      title: 'FlyDealFare',
      // theme of the widget
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: Colors.white,
          secondary: Colors.blue,

          // or from RGB

          // primary: const Color(0xFF343A40),
          // secondary: const Color(0xFFFFC107),
        ),
      ),
      darkTheme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: Colors.white,
          secondary: Colors.white,
        ),
      ),
      color: Colors.blue,
      home: RegisterScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var pageIndex = 0;
  final pages = [
    Search(),
    Reward(),
    MyTrips(),
    Deals(),
    MyAccount(),
    Settings(),
    NotificationScreen()
  ];

  // static const String androidChannelKey =
  //     "eyJzZXR0aW5nc191cmwiOiJodHRwczovL3VjbWFzc25ldHRvbmljcy56ZW5kZXNrLmNvbS9tb2JpbGVfc2RrX2FwaS9zZXR0aW5ncy8wMUc3WEpNRUg0UkdIMDg1QkdBMlg1MzJONi5qc29uIn0=";
  // static const String iosChannelKey =
  //     "eyJzZXR0aW5nc191cmwiOiJodHRwczovL3VjbWFzc25ldHRvbmljcy56ZW5kZXNrLmNvbS9tb2JpbGVfc2RrX2FwaS9zZXR0aW5ncy8wMUc4SllHUFFCUEVIRkJaQlJOWUJWOU1ZVi5qc29uIn0=";
  // final List<String> channelMessages = [];

  @override
  void initState() {
    super.initState();
    // ZendeskMessaging.initialize(
    //     androidChannelKey: androidChannelKey, iosChannelKey: iosChannelKey);
    // // Optional, observe all incoming messages
    // ZendeskMessaging.setMessageHandler((type, arguments) {
    //   setState(() {
    //     channelMessages.add("$type - args=$arguments");
    //   });
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Container(
              height: 75,
              width: 200,
              child: Image.asset(
                "assets/images/mydrawyerlogo.png",
                fit: BoxFit.contain,
              )),
          iconTheme: const IconThemeData(color: Colors.blue),
        ),
        drawer: Drawer(
          child: ListView(
            padding: const EdgeInsets.all(0),
            children: [
              DrawerHeader(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ), //BoxDecoration
                  child: Center(
                    child: Image.asset("assets/images/mydrawyerlogo.png"),
                  ) //UserAccountDrawerHeader
                  ), //DrawerHeader
              ListTile(
                leading: const Icon(
                  Icons.person,
                  color: Colors.blue,
                ),
                title: const Text(
                  ' My Account',
                  style: TextStyle(color: Colors.blue),
                ),
                onTap: () {
                  setState(() {
                    pageIndex = 4;
                  });
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.settings,
                  color: Colors.blue,
                ),
                title: const Text(
                  'Setting',
                  style: TextStyle(color: Colors.blue),
                ),
                onTap: () {
                  setState(() {
                    pageIndex = 5;
                  });
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.add_alert_sharp,
                  color: Colors.blue,
                ),
                title: const Text(
                  'Notification',
                  style: TextStyle(color: Colors.blue),
                ),
                onTap: () {
                  setState(() {
                    pageIndex = 6;
                  });
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.chat,
                  color: Colors.blue,
                ),
                title: const Text(
                  'Chat',
                  style: TextStyle(color: Colors.blue),
                ),
                onTap: () {
                  ZendeskMessaging.show();
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.logout,
                  color: Colors.blue,
                ),
                title: const Text(
                  'LogOut',
                  style: TextStyle(color: Colors.blue),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                  enableFeedback: false,
                  onPressed: () {
                    setState(() {
                      pageIndex = 0;
                    });
                  },
                  icon: SizedBox(
                      height: 20,
                      width: 20,
                      child: Image.asset(
                        'assets/images/search_large.png',
                        color: Colors.blue,
                      ))),
              IconButton(
                enableFeedback: false,
                onPressed: () {
                  setState(() {
                    pageIndex = 1;
                  });
                },
                icon: SizedBox(
                    height: 20,
                    width: 20,
                    child: Image.asset(
                      'assets/images/reward_large.png',
                      color: Colors.blue,
                    )),
              ),
              IconButton(
                enableFeedback: false,
                onPressed: () {
                  setState(() {
                    pageIndex = 2;
                  });
                },
                icon: SizedBox(
                    height: 20,
                    width: 20,
                    child: Image.asset(
                      'assets/images/trip_large.png',
                      color: Colors.blue,
                    )),
              ),
              IconButton(
                enableFeedback: false,
                onPressed: () {
                  setState(() {
                    pageIndex = 3;
                  });
                },
                icon: SizedBox(
                    height: 20,
                    width: 20,
                    child: Image.asset(
                      'assets/images/deal_large.png',
                      color: Colors.blue,
                    )),
              ),
            ],
          ),
        ),
        body: pages[pageIndex]);
  }
}
