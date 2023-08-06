import 'package:flutter/material.dart';

class SloganAndText extends StatelessWidget {
  const SloganAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RichText(
            text: TextSpan(
              text: 'Elevate Your ',
              style: TextStyle(
                fontSize: 30,
                foreground: Paint()
                  ..style = PaintingStyle.stroke
                  ..strokeWidth = 1
                  ..color = Colors.white,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: 'Real Estate',
                  style: TextStyle(
                    fontSize: 30,
                    foreground: Paint()
                      ..style = PaintingStyle.stroke
                      ..strokeWidth = 1
                      ..color = Colors.amber,
                  ),
                ),
                TextSpan(
                  text: ' Game',
                  style: TextStyle(
                    fontSize: 30,
                    foreground: Paint()
                      ..style = PaintingStyle.stroke
                      ..strokeWidth = 1
                      ..color = Colors.white,
                  ),
                )
              ],
            ),
          ),
          // Text(
          //   'Elevate Your Real Estate Game.',
          //   style: TextStyle(
          //     fontSize: 30,
          //     foreground: Paint()
          //       ..style = PaintingStyle.stroke
          //       ..strokeWidth = 1
          //       ..color = Colors.white,
          //   ),
          // ),
          const SizedBox(height: 30),
          Text(
            'All Your Real Estate Data and Clients in One Place.',
            style: TextStyle(
              fontSize: 30,
              foreground: Paint()
                ..style = PaintingStyle.stroke
                ..strokeWidth = 1
                ..color = Colors.white,
            ),
          ),
          const SizedBox(height: 30),
          const Text(
            'Welcome to our real estate app, where luxury meets convenience. Our app is designed to streamline the real estate experience for both professionals and home buyers/renters alike. With our all-in-one platform, you can manage all of your company\'s real estate data in one place, from listings and leads to transactions and contracts.',
            style: TextStyle(fontSize: 15),
          ),
          // const SizedBox(height: 30),
          // const Text(
          //   'Welcome to our real estate app, where luxury meets convenience. Our app is designed to streamline the real estate experience for both professionals and home buyers/renters alike. With our all-in-one platform, you can manage all of your company\'s real estate data in one place, from listings and leads to transactions and contracts.',
          //   style: TextStyle(fontSize: 15),
          // ),
          const SizedBox(height: 30),
          OutlinedButton(
              onPressed: () {},
              child: const Padding(
                padding: EdgeInsets.all(15.0),
                child: Text('Contact Us'),
              )),
        ],
      ),
    );
  }
}
