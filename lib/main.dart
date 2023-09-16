import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:swishlist_ui/Screens/Friend/Fav.dart';
import 'package:swishlist_ui/Screens/Home/FamilyMember.dart';
import 'package:swishlist_ui/Screens/Home/Home.dart';
import 'package:swishlist_ui/Screens/Home/MembersDetails.dart';
import 'package:swishlist_ui/Screens/Home/account.dart';
import 'package:swishlist_ui/Screens/Home/privacy.dart';
import 'package:swishlist_ui/Screens/LoginScreen/LoginScreen.dart';
import 'package:swishlist_ui/Screens/Profile/Favorites.dart';
import 'package:swishlist_ui/Screens/Profile/ProfileInfo.dart';


import 'Screens/Activities/homeactivities.dart';
import 'Screens/ButtomNavScreen/ButtomNavScreen.dart';
import 'Screens/Friend/AddFriend.dart';
import 'Screens/Friend/AddListOfFriends.dart';
import 'Screens/Friend/AddNewFriend.dart';
import 'Screens/Friend/DatesAndEvents.dart';
import 'Screens/Friend/Family.dart';
import 'Screens/Friend/Friend.dart';
import 'Screens/Friend/FriendMessage.dart';
import 'Screens/Friend/FriendProfile.dart';
import 'Screens/Friend/Pets.dart';
import 'Screens/Friend/Profile.dart';
import 'Screens/Friend/SizesAndWeights.dart';
import 'Screens/Home/AddFamilyMember.dart';
import 'Screens/Home/LinkFamilyMember.dart';
import 'Screens/Home/Notification.dart';
import 'Screens/Home/ProfilePrivacy.dart';
import 'Screens/Home/RequestSend.dart';
import 'Screens/Home/SearchProduct.dart';
import 'Screens/Home/Setting.dart';
import 'Screens/LoginScreen/ResetPass.dart';
import 'Screens/LoginScreen/createnewaccount.dart';
import 'Screens/OnBoadingScreen/IntroScreen.dart';
import 'Screens/OnBoadingScreen/OnBoadingScreen1.dart';
import 'Screens/OnBoadingScreen/OnBoadingScreen2.dart';
import 'Screens/OnBoadingScreen/OnBoadingScreen3.dart';
import 'Screens/OnBoadingScreen/Sample.dart';
import 'Screens/OnBoadingScreen/introoscreen.dart';
import 'Screens/Product/EnterProductDetails.dart';
import 'Screens/Product/HomeOfProduct.dart';
import 'Screens/Product/Ialreadyhave.dart';
import 'Screens/Product/Idontwant.dart';
import 'Screens/Product/Iwant.dart';
import 'Screens/Product/NewProductAdded.dart';
import 'Screens/Product/Product.dart';
import 'Screens/Product/StatusOfProduct.dart';
import 'Screens/ProductDetails/ListOfProducts.dart';
import 'Screens/ProductDetails/ProductDetail.dart';
import 'Screens/ProductDetails/ProductDetails.dart';
import 'Screens/Profile/Account.dart';
import 'Screens/Profile/Dates And Events.dart';
import 'Screens/Profile/Intrests.dart';
import 'Screens/Profile/Pets.dart';
import 'Screens/Profile/Sized And Weights.dart';
import 'Screens/Profile/UserProfile.dart';
import 'Screens/SplashScreen/SplashScreen.dart';
import 'Screens/api/getapi.dart';
import 'constant/sharedprefrences/sharedprefrences.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  HttpOverrides.global = MyHttpOverrides();
  await SharedPrefs().init();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  runApp(const MyApp());
}
class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: SplashScreen(),
    );
  }
}

