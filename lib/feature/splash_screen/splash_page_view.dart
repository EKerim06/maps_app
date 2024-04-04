import 'package:flutter/material.dart';
import 'package:gen/gen/assets.gen.dart';
import 'package:kartal/kartal.dart';

///Splash View
class SplashPageView extends StatefulWidget {
  ///Splash View Constructor
  const SplashPageView({super.key});

  @override
  _SplashPageViewState createState() => _SplashPageViewState();
}

class _SplashPageViewState extends State<SplashPageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Assets.animations.mapsSplashScreenAnim.lottie(
              package: 'gen',
              height: context.sized.dynamicHeight(0.2),
            ),
            
            Text('Hatirlatici Haritalar'),
          ],
        ),
      ),
    );
  }
}
