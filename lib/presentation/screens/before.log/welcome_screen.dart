import 'package:apart_flow_desktop/presentation/widgets/before.log/slogan_and_text.dart';
import 'package:apart_flow_desktop/presentation/widgets/before.log/stepper.dart';
import 'package:flutter/material.dart';
import '../../../data/local/meta.dart';
import '../../widgets/common/title_bar.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return WindowTitleBar(
      isLightTheme: false,
      backgroundColor: const Color(0xff070727),
      child: Stack(children: [
        // Container(
        //   decoration: BoxDecoration(
        //     image: DecorationImage(
        //       image: AssetImage('assets/background.png'),
        //       fit: BoxFit.cover,
        //     ),
        //   ),
        // ),
        Scaffold(
            backgroundColor: const Color(0xff070727),
            appBar: AppBar(
              elevation: 0,
              backgroundColor: const Color(0x00000000),
              title: Row(
                children: [
                  Image.asset('assets/logo/logo_full_light.png'),
                  const SizedBox(width: 10),
                  Text('${meta.appName} | Desktop version'),
                ],
              ),
            ),
            body: const Row(
              children: [
                Expanded(child: StepperExample()),
                Expanded(child: SloganAndText())
              ],
            )),
      ]),
    );
  }
}
