import 'package:flutter/material.dart';
import 'package:getstarted/Walkthrough.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:getstarted/custombutton.dart';

class WalkthroughScreen extends StatefulWidget {
  final List<Walkthrough> pages = [
    Walkthrough(
      icon: Icons.record_voice_over,
      title: "Connect",
      description:
          " INNOVATIVE SCHOOL MANAGEMENT SOLUTION. GO PAPERLESS WITH SCHOOLSKIES.",
    ),
    Walkthrough(
      icon: Icons.message,
      title: "Communicate",
      description:
          "SchoolSkies School Management System is more than just a sophisticated management tool with its intuitive features and excellent support system, adding a human touch to a management system.",
    ),
    Walkthrough(
      icon: Icons.cloud,
      title: "Collaborate",
      description:
          "SchoolSkies is proud to be a Microsoft partner and is an authorized reseller of Microsoft academic licenses. We work with major academic institutions in onboarding them to the Microsoft platform.",
    ),
  ];

  @override
  _WalkthroughScreenState createState() => _WalkthroughScreenState();
}

class _WalkthroughScreenState extends State<WalkthroughScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Swiper.children(
        autoplay: false,
        index: 0,
        loop: false,
        pagination: SwiperPagination(
          margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 40.0),
          builder: DotSwiperPaginationBuilder(
              color: Colors.white30,
              activeColor: Colors.white,
              size: 6.5,
              activeSize: 8.0),
        ),
        control: SwiperControl(
          iconPrevious: null,
          iconNext: null,
        ),
        children: _getPages(context),
      ),
    );
  }

  List<Widget> _getPages(BuildContext context) {
    List<Widget> widgets = [];
    for (int i = 0; i < widget.pages.length; i++) {
      Walkthrough page = widget.pages[i];
      widgets.add(
        Container(
          color: Colors.blue,
          child: ListView(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 70.0),
                child: Icon(
                  page.icon,
                  size: 125.0,
                  color: Colors.white,
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(top: 50.0, right: 15.0, left: 15.0),
                child: Text(
                  page.title,
                  softWrap: true,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    decoration: TextDecoration.none,
                    fontSize: 24.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  page.description,
                  softWrap: true,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    decoration: TextDecoration.none,
                    fontSize: 15.0,
                    fontWeight: FontWeight.w300,
                    fontFamily: "OpenSans",
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: page.extraWidget,
              )
            ],
          ),
        ),
      );
    }

    widgets.add(
      new Container(
        color: Colors.blue,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Icon(
                Icons.mood,
                size: 125.0,
                color: Colors.white,
              ),
              Padding(
                padding:
                    const EdgeInsets.only(top: 50.0, right: 15.0, left: 15.0),
                child: Text(
                  "Jump straight into the action.",
                  softWrap: true,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    decoration: TextDecoration.none,
                    fontSize: 24.0,
                    fontWeight: FontWeight.w700,
                    fontFamily: "OpenSans",
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(top: 20.0, right: 15.0, left: 15.0),
                child: CustomFlatButton(
                  title: "Get Started",
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                  textColor: Colors.white,
                  onPressed: () {
                    Navigator.of(context).pushNamed("/HomeScreen");
                  },
                  splashColor: Colors.black12,
                  borderColor: Colors.white,
                  borderWidth: 2,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ),
      ),
    );
    return widgets;
  }
}
