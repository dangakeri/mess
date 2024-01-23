import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mess/onboarding/splashscreen_page.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';

import 'privacy_policy_page.dart';

class AccountPage extends StatelessWidget {
  AccountPage({super.key});

  final Uri _whatsapp = Uri.parse('sms:+254712345678');

  final Uri _phone = Uri.parse('tel:+254712345678');

  final Uri _email = Uri.parse(
      'mailto:info@briankiprotich.com?subject=Hello&body=Thank you for contacting Brian Kiprotich! Please let us know how we can help you. We are starting a new revolution in food & nutrition we invite you to Join the Revolution!.');

  Future<void> _launchWhatsapp() async {
    if (!await launchUrl(_whatsapp)) {
      throw 'Could not launch $_whatsapp';
    }
  }

  Future<void> _launchPhone() async {
    if (!await launchUrl(_phone)) {
      throw 'Could not launch $_phone';
    }
  }

  Future<void> _launchEmail() async {
    if (!await launchUrl(_email)) {
      throw 'Could not launch $_email';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Account',
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: ListView(
          children: [
            CircleAvatar(
              radius: 50,
              backgroundColor: Colors.green.withOpacity(.3),
            ),
            const SizedBox(height: 30),
            const Text(
              'Brian Kiprotich',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              'BrianKiprotich@gmail.com',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.normal,
              ),
            ),
            const SizedBox(height: 20),
            Card(
              color: Colors.green,
              child: Column(
                children: [
                  ListTile(
                    onTap: () {
                      showModalBottomSheet(
                        showDragHandle: true,
                        isScrollControlled: true,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                          ),
                        ),
                        context: context,
                        builder: (context) => SizedBox(
                          height: MediaQuery.of(context).size.height * 0.25,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: ListView(
                              children: [
                                ListTile(
                                  contentPadding:
                                      const EdgeInsets.only(left: -15),
                                  title: const Row(
                                    children: [
                                      Text(
                                        'Reach out to us!',
                                        style: TextStyle(
                                          color: Colors.green,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ],
                                  ),
                                  subtitle: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Text(
                                        'We\'re here to help! If you have any questions or concerns, please don\'t hesitate to contact us.',
                                        style: TextStyle(
                                          color: Colors.green,
                                        ),
                                      ),
                                      const SizedBox(height: 20),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          GestureDetector(
                                            onTap: _launchEmail,
                                            child: const Column(
                                              children: [
                                                Icon(
                                                  BootstrapIcons.envelope,
                                                  color: Colors.green,
                                                  size: 30,
                                                ),
                                                SizedBox(height: 10),
                                                Text(
                                                  'Email',
                                                  style: TextStyle(
                                                    color: Colors.green,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          const Spacer(),
                                          GestureDetector(
                                            onTap: _launchPhone,
                                            child: const Column(
                                              children: [
                                                Icon(
                                                  BootstrapIcons.telephone,
                                                  color: Colors.green,
                                                  size: 30,
                                                ),
                                                SizedBox(height: 10),
                                                Text(
                                                  'Phone',
                                                  style: TextStyle(
                                                    color: Colors.green,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          const Spacer(),
                                          GestureDetector(
                                            onTap: _launchWhatsapp,
                                            child: const Column(
                                              children: [
                                                Icon(
                                                  BootstrapIcons.chat,
                                                  color: Colors.green,
                                                  size: 30,
                                                ),
                                                SizedBox(height: 10),
                                                Text(
                                                  'Message',
                                                  style: TextStyle(
                                                    color: Colors.green,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 20),
                                const Text(
                                  'We look forward to hearing from you!',
                                  style: TextStyle(
                                    color: Colors.green,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                    leading: const Icon(
                      BootstrapIcons.chat,
                      color: Colors.white,
                    ),
                    title: const Text(
                      'Contact us',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    subtitle: const Text(
                      'Talk to us',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                  const Divider(),
                  ListTile(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) => CupertinoAlertDialog(
                          title: const Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Order',
                                    style: TextStyle(),
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    'V1.0.0 Dolphin',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          content: const Text(
                            'Order is an application built to make you feel appreciated and have a good meal in time. ',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          actions: [
                            CupertinoButton(
                              child: const Text(
                                "Close",
                                style: TextStyle(
                                  color: Colors.green,
                                ),
                              ),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            )
                          ],
                        ),
                      );
                    },
                    leading: const Icon(
                      BootstrapIcons.info_circle,
                      color: Colors.white,
                    ),
                    title: const Text(
                      'About',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    subtitle: const Text(
                      'V1.0.0 Dolphin',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                  const Divider(),
                ],
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
            Card(
              color: Colors.green,
              child: Column(
                children: [
                  ListTile(
                    onTap: () {
                      Share.share('Order your food now and enjoy a delicacy');
                    },
                    leading: const Icon(
                      BootstrapIcons.share,
                      color: Colors.white,
                    ),
                    title: const Text(
                      'Share',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    subtitle: const Text(
                      'Share with friends',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  const Divider(),
                  ListTile(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) =>
                              const PrivacyPolicyPage(),
                        ),
                      );
                    },
                    leading: const Icon(
                      BootstrapIcons.lock,
                      color: Colors.white,
                    ),
                    title: const Text(
                      'Privacy Policy',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    subtitle: const Text(
                      'Our privacy policy',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
            Card(
              color: Colors.green,
              child: ListTile(
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return CupertinoAlertDialog(
                          title: const Text(
                            'Are you sure you want to \n log out?',
                            style: TextStyle(
                              fontFamily: 'Nunito',
                              fontSize: 16,
                            ),
                          ),
                          content: const Padding(
                            padding: EdgeInsets.only(top: 10),
                            child: SizedBox(),
                          ),
                          actions: [
                            CupertinoButton(
                                child: const Text(
                                  'Ok',
                                  style: TextStyle(
                                    color: Colors.green,
                                  ),
                                ),
                                onPressed: () async {
                                  Navigator.of(context).pushReplacement(
                                      MaterialPageRoute(builder: (context) {
                                    return const SplashScreenPage();
                                  }));
                                }),
                            CupertinoButton(
                                child: const Text('Cancel',
                                    style: TextStyle(
                                      color: Colors.green,
                                    )),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                })
                          ],
                        );
                      });
                },
                leading: const Icon(
                  BootstrapIcons.box_arrow_right,
                  color: Colors.white,
                ),
                title: const Text(
                  'Log out',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                subtitle: const Text(
                  'log out ',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
