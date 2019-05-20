import 'package:getstarted/NewsArticle.dart';

class NewsHelper {
  static var articleCount = 4;

  static var categoryTitles = [
    "Bhavans",
    "Dav Boys Gopalapuram",
    "Sindhi Modal School",
    "Sana Modal"
  ];
  static var titles = [
    "How to Verify ID card For All Parents",
    "GUIDELINES TO FILL ONLINE LKG REGISTRATION FORM",
    "Video on Sign up Forms for Parents on the School Skies system.",
    "CLASS 10 RESULT ANALYSIS 2018 - 2019"
  ];
  static var authorNames = ["Ramesh Kumar", "Ramkumar", "Santhosh", "Venkat"];
  static var date = ["20 Jun", "01 Jun", "27 Apr", "14 Jun"];
  static var readTimes = ["", "", "", ""];
  static var imageAssetName = [
    "bhavans.jpg",
    "dav.jpg",
    "green.png",
    "logo.png"
  ];

  static getArticle(int position) {
    return NewsArticle(
        categoryTitles[position],
        titles[position],
        authorNames[position],
        date[position],
        readTimes[position],
        imageAssetName[position]);
  }
}
