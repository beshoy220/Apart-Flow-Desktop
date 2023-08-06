import 'package:apart_flow_desktop/data/local/meta.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ErrorHandlerPage extends StatefulWidget {
  String message;

  ErrorHandlerPage(
      {super.key,
      this.message = 'Unexpected Error happend with error code : #0000'});

  @override
  State<ErrorHandlerPage> createState() => _ErrorHandlerPageState();
}

class _ErrorHandlerPageState extends State<ErrorHandlerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFF070727),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Transform.scale(
                          scale: 1.2,
                          child:
                              Image.asset('assets/logo/logo_full_light.png')),
                      const SizedBox(width: 10),
                      Text(
                        meta.appName,
                        style:
                            const TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Desktop app | Redfin company version',
                    style: TextStyle(color: Colors.white),
                  ),
                  const SizedBox(height: 10)
                ],
              ),
              Text(
                widget.message,
                style: const TextStyle(color: Colors.white),
              )
            ],
          ),
        ));
  }
}
