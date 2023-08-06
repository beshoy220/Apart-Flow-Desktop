import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:apart_flow_desktop/data/local/meta.dart';
import 'package:apart_flow_desktop/presentation/widgets/common/title_bar.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 9), () {
      Navigator.popAndPushNamed(context, '/welcome');
    });
  }

  @override
  Widget build(BuildContext context) {
    return WindowTitleBar(
      isLightTheme: true,
      backgroundColor: const Color(0xff070727),
      iconColor: Colors.white,
      child: Scaffold(
          backgroundColor: const Color(0xFF070727),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Transform.scale(
                    scale: 2,
                    child: Image.asset('assets/logo/logo_full_light.png')),
                SizedBox(
                  height: 150,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      DefaultTextStyle(
                        style: const TextStyle(
                          fontSize: 35.0,
                          fontFamily: 'Horizon',
                        ),
                        child: AnimatedTextKit(
                          animatedTexts: [
                            RotateAnimatedText(meta.appName),
                            RotateAnimatedText(meta.appName),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )),
    );
  }
}
