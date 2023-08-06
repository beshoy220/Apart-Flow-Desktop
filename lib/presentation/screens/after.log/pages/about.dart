import 'package:apart_flow_desktop/data/local/meta.dart';
import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 80),
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ExpansionTile(
              title: const Row(
                children: [
                  Icon(Icons.email),
                  SizedBox(width: 10),
                  Text('Contact Us'),
                ],
              ),
              children: [
                Padding(
                  padding: const EdgeInsets.all(18),
                  child: Column(
                    children: [
                      Text(
                        'We take great pleasure in introducing the Email Support service, now available for our desktop users on the ${meta.appName} platform. This service has been designed to provide our users with a convenient and efficient means of controlling and saving their work. \n\nAs well as to reach out to us for assistance, new sales inquiries, feature suggestions, and feedback. We would be honored to hear from you and are committed to ensuring your utmost satisfaction with our platform. If you have any questions or concerns, please do not hesitate to contact us. Our team is eager to assist you in any way possible. Thank you for choosing ${meta.appName} as your preferred platform for your business needs.',
                        style: const TextStyle(fontSize: 18),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'Our email address : apartflow@gmail.com',
                        style: TextStyle(fontSize: 18, color: Colors.amber),
                      )
                    ],
                  ),
                )
              ],
            ),
            ExpansionTile(
              title: Row(
                children: [
                  const Icon(Icons.priority_high_sharp),
                  const SizedBox(width: 10),
                  Text('About ${meta.appName}'),
                ],
              ),
              children: [
                Padding(
                  padding: const EdgeInsets.all(18),
                  child: Column(
                    children: [
                      Text(
                        'Welcome to ${meta.appName}, the premier platform for managing and displaying your real estate inventory. Our platform is designed to help companies of all sizes streamline their real estate management processes and provide a seamless user experience for their clients.\n\nWith ${meta.appName}, you can easily upload and manage your property inventory, including photos, descriptions, and other important details. Our intuitive interface makes it easy to organize your properties by location, type, status, and other criteria, so you can quickly find the information you need and make informed decisions.\n\nBut that\'s just the beginning. Our platform also features powerful search and filtering tools that enable your clients to quickly find properties that meet their specific needs and preferences. Whether they\'re looking for a new home, a commercial space, or an investment opportunity, our platform makes it easy for them to search, compare, and save their favorite properties.\n\nAnd with our customizable branding and white-label options, you can ensure that your clients have a seamless and consistent experience throughout their real estate journey, from browsing to closing.\n\nAt ${meta.appName}, we are committed to providing the best possible experience for our clients. That\'s why we offer top-notch customer support and a range of training and consulting services to help you get the most out of our platform.\n\nThank you for choosing ${meta.appName} for your real estate management needs. We look forward to helping you succeed in the dynamic and exciting world of real estate.',
                        style: const TextStyle(fontSize: 18),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        '',
                        style: TextStyle(fontSize: 18, color: Colors.amber),
                      )
                    ],
                  ),
                )
              ],
            ),
            ExpansionTile(
              title: const Row(
                children: [
                  Icon(Icons.balance),
                  SizedBox(width: 10),
                  Text('License'),
                ],
              ),
              children: [
                Padding(
                  padding: const EdgeInsets.all(18),
                  child: Column(
                    children: [
                      Text(
                        'Proprietary License \n\nCopyright (c) ${DateTime.now().year}  ${meta.appName} \n\nAll rights reserved. This software and its accompanying documentation are the property of ${meta.appName} and may not be used, modified, or distributed without the express written consent of the owner. \n\nThis license grants the licensee a non-exclusive and non-transferable license to use the software for its intended purpose. The licensee may not copy, modify, or distribute the software or any portion thereof without the prior written consent of the owner. \n\nThe licensee acknowledges that any unauthorized use, modification, or distribution of the software may constitute a violation of copyright law and may result in legal action. \n\nThis license is governed by the laws of [your country or state]. Any disputes arising from or related to this license shall be resolved in the courts of [your country or state]. \n\nBy using this software, the licensee agrees to be bound by the terms and conditions of this license. If the licensee does not agree to these terms and conditions, they may not use the software..',
                        style: const TextStyle(fontSize: 18),
                      ),
                      const SizedBox(height: 10),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
