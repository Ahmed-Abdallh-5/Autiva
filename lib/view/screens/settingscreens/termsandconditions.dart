import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TermsAndConditionsScreen extends StatelessWidget {
  const TermsAndConditionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
        centerTitle: true,
        title: Text(
          "Terms and Conditions",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Terms and Conditions",
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16.0),
            // Section 1: User Agreement
            Text(
              "1. User Agreement",
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "By using the Padel Sport app, you agree to be bound by these Terms and Conditions.",
            ),
            SizedBox(height: 16.0),

            // Section 2: User Account
            Text(
              "2. User Account",
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "To use the Padel Sport app, you may be required to create a user account by providing accurate and complete information. You are responsible for maintaining the confidentiality of your account credentials and for all activities that occur under your account. Padel Sport reserves the right to suspend or terminate your account if we suspect any unauthorized use or violation of these Terms and Conditions. Users under the age of 18 must obtain parental or guardian consent before creating an account.",
            ),
            SizedBox(height: 16.0),

            Text(
              "3. Intellectual Property",
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "The Padel Sport app, including but not limited to its design, text, graphics, images, and software, is owned by ArenaX and is protected by copyright, trademark, and other intellectual property laws. You may not reproduce, distribute, modify, or create derivative works of any part of the app without our prior written consent.",
            ),
            SizedBox(height: 16.0),
            Text(
              "4. User Conduct",
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "You agree to use the Padel Sport app in accordance with all applicable laws and regulations. You are responsible for your own behavior and content while using the app. You may not use the app for any illegal or harmful purposes, or to harass, threaten, or abuse others. We reserve the right to terminate your account for any violation of these terms.",
            ),
            SizedBox(height: 16.0),
            Text(
              "5. Payment",
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "To book a padel court, you must make a payment in advance using one of the accepted payment methods: online card, Vodafone Cash, or online wallet. All payments are non-refundable unless otherwise stated. We reserve the right to change payment methods without prior notice. By providing your payment information, you authorize us to charge your chosen payment method for the booking.",
            ),
            SizedBox(height: 16.0),
            Text(
              "6. Disclaimer of Warranties",
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "The Padel Sport app is provided \"as is\" without warranties of any kind, either express or implied. We disclaim all warranties, including but not limited to implied warranties of merchantability, fitness for a particular purpose, and non-infringement. We make no warranties about the reliability, accuracy, or completeness of the information provided through the app.",
            ),
            SizedBox(height: 16.0),
            Text(
              "7. Limitation of Liability",
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "To the maximum extent permitted by law, we shall not be liable for any indirect, incidental, special, consequential, or exemplary damages, including but not limited to, damages for loss of profits,  business interruption, or loss of data, arising out of or in connection with the use or inability to use the Padel Sport app.",
            ),
            SizedBox(height: 16.0),
            Text(
              "8. Dispute Resolution",
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Any dispute arising out of or in connection with these Terms and Conditions shall be governed by and construed in accordance with the laws . Any legal action or proceeding arising out of or in connection with these Terms and Conditions shall be brought exclusively in the courts",
            ),
            SizedBox(height: 16.0),
            Text(
              "10. Severability",
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "If any provision of these Terms and Conditions is found to be invalid, illegal, or unenforceable, such provision shall be deemed severed from these Terms and Conditions and shall not affect the validity and enforceability of the remaining   provisions.",
            ),
            SizedBox(height: 16.0),
          ],
        ),
      ),
    );
  }
}
