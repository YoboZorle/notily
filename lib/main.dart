import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:notily/src/helpers/constants.dart';
import 'package:notily/src/screens/browse.dart';
import 'package:notily/src/screens/home.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Bottom Navigation',
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
        primaryColor: AppColor.appBg,
        primaryColorDark: AppColor.appBg,
        accentColor: AppColor.appColor,
      ),
      home: new DashboardScreen(title: 'Bottom Navigation'),
    );
  }
}

class DashboardScreen extends StatefulWidget {
  DashboardScreen({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _DashboardScreenState createState() => new _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  PageController _pageController;
  int _page = 0;

  @override
  void initState() {
    super.initState();
    _pageController = new PageController();
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  void navigationTapped(int page) {
    _pageController.animateToPage(page,
        duration: const Duration(milliseconds: 200), curve: Curves.easeOut);
  }

  void onPageChanged(int page) {
    setState(() {
      this._page = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new PageView(
        physics: NeverScrollableScrollPhysics(),
        children: [
          new Home(),
          new Browse(),
        ],
        onPageChanged: onPageChanged,
        controller: _pageController,
      ),
      bottomNavigationBar: new Theme(
        data: Theme.of(context).copyWith(
            canvasColor: AppColor.appBg, unselectedWidgetColor: Colors.grey),
        child: new BottomNavigationBar(
          selectedItemColor: AppColor.appBlack,
          unselectedItemColor: Colors.grey[400],
          backgroundColor: AppColor.appBg,
          elevation: 0,
          items: [
            new BottomNavigationBarItem(
                icon: new Icon(
                  Icons.home_filled,
                ),
                title: new Text(
                  "Home",
                  style: TextStyle(
                    fontSize: 11,
                  ),
                )),
            new BottomNavigationBarItem(
                icon: new Icon(
                  Icons.widgets_rounded,
                ),
                title: new Text(
                  "Browse",
                  style: TextStyle(
                    fontSize: 11,
                  ),
                )),
          ],
          onTap: navigationTapped,
          currentIndex: _page,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        elevation: 12,
        backgroundColor: AppColor.appColor,
        onPressed: () {
          print('fish ');
        },
        child: Icon(Icons.qr_code_rounded, color: Colors.white),
      ),
    );
  }
}
