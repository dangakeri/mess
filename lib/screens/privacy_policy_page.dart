import 'package:flutter/material.dart';

class PrivacyPolicyPage extends StatelessWidget {
  const PrivacyPolicyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Privacy Policy',
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Text(
          """Introduction:
Welcome to orders. This Privacy Policy outlines how we collect, use, disclose, and protect your personal information when you use our food ordering app. By using our app, you agree to the terms outlined in this policy.

1. Information We Collect:
a. User-Provided Information:

When you register and use our app, we collect information such as your name, contact details, delivery address, and payment information.
Order history and preferences are stored to enhance your experience.
b. Automatically Collected Information:

We gather information about your device, location, and usage patterns using technologies like cookies and similar tools.
This data helps us analyze app performance and user behavior.
2. How We Use Your Information:
a. Order Processing:

Your information is used to process and fulfill your food orders, ensuring accurate delivery to the specified address.
b. Account Management:

We manage your account details, including order history, preferences, and account security.
c. Communication:

We may use your contact details to send order confirmations, updates, and promotional offers.
You can opt-out of promotional communications at any time.
d. Improving Services:

Data is analyzed to enhance app functionality, user experience, and features.
3. Sharing of Information:
a. Third-Party Service Providers:

We may share information with third-party service providers to facilitate order processing, delivery, payment processing, and other essential services.
These providers are obligated to maintain the confidentiality of your information.
b. Legal Compliance:

Information may be disclosed when required by law or in response to legal requests.
4. Your Choices:
a. Account Information:

You can review and update your account information by logging into the app.
b. Opt-Out:

You have the option to opt-out of promotional communications by adjusting your preferences in the app settings.
5. Security Measures:
We implement security measures to protect your information from unauthorized access, disclosure, alteration, and destruction.
This includes encryption, access controls, and regular security assessments.
6. Data Retention:
We retain data for the period necessary to fulfill the purposes outlined in this policy.
You can request data deletion by contacting our support team.
7. Children's Privacy:
Our app is not intended for children under 13.
We do not knowingly collect or store information from children under 13.
8. Third-Party Links and Services:
Our app may contain links to third-party websites or services.
We are not responsible for the privacy practices of these third parties.
9. Your Rights and Control:
You have rights regarding your data, including access, correction, deletion, and objection to processing.
Requests can be submitted through our support channels.
10. Changes to this Privacy Policy:
We may update this Privacy Policy periodically.
Users will be notified of material changes, and the updated policy will be effective upon posting.
11. Contact Information:
If you have questions or concerns about this Privacy Policy, please contact us at [Your Contact Information].
12. Governing Law and Dispute Resolution:
This policy is governed by the laws of [Your Jurisdiction].
Disputes will be resolved through arbitration or other mutually agreed-upon methods.""",
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
