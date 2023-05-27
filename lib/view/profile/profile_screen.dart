import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../themes/color_style.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool isNews = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile', style: ThemeText.heading1),
        backgroundColor: const Color(0xFFF6F6F6),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(16),
              width: 400, // Lebar
              height: 180, // Tinggi
              decoration: BoxDecoration(
                color: const Color(0xffF6F6F6),
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    child: Column(
                      children: [
                        ListTile(
                          leading: Stack(
                            alignment: Alignment.bottomRight,
                            children: [
                              const CircleAvatar(
                                radius: 40,
                                // child: Icon(
                                //   Icons.account_circle_outlined,
                                //   size: 66,
                                // ),
                              ),
                              Positioned(
                                bottom: 0,
                                right: 0,
                                child: GestureDetector(
                                  onTap: () {},
                                  child: Container(
                                    width: 24,
                                    height: 24,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Color(0XFFFF7F00),
                                    ),
                                    child: const Icon(
                                      Icons.add,
                                      color: Colors.white,
                                      size: 20,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          title: Text(
                            'Kevin Nicholas',
                            style: ThemeText.headingName,
                          ),
                          subtitle: Text(
                            '21 years old',
                            style: ThemeText.headingOld,
                          ),
                        ),
                        const Divider(
                          color: Color(0xffA5A5A5),
                          thickness: 1,
                          indent: 16,
                          endIndent: 16,
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Current Weight',
                              style: ThemeText.headingOld,
                            ),
                            Text(
                              '75 Kg',
                              style: ThemeText.headingOld,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Current Goal Weight',
                              style: ThemeText.headingOld,
                            ),
                            Text(
                              '65 Kg',
                              style: ThemeText.headingOld,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Customization',
                    style: ThemeText.headingCustom,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              padding: const EdgeInsets.symmetric(
                vertical: 8,
                horizontal: 16,
              ),
              width: 400, // Lebar
              height: 200, // Tinggi
              decoration: BoxDecoration(
                color: const Color(0xffF6F6F6),
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Personal Details',
                        style: ThemeText.headingDetails,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.arrow_forward_ios_outlined,
                          size: 14,
                        ),
                      )
                    ],
                  ),
                  const Divider(
                    color: Color(0xffA5A5A5),
                    thickness: 1,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'My Membership',
                        style: ThemeText.headingDetails,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.arrow_forward_ios_outlined,
                          size: 14,
                        ),
                      ),
                    ],
                  ),
                  const Divider(
                    color: Color(0xffA5A5A5),
                    thickness: 1,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Newsletter',
                        style: ThemeText.headingDetails,
                      ),
                      Switch(
                        value: isNews,
                        inactiveTrackColor: const Color(0xffD9D9D9),
                        inactiveThumbColor: const Color(0xffF6F6F6),
                        activeTrackColor: const Color(0XFFFF7F00),
                        activeColor: const Color(0xffF6F6F6),
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        onChanged: (bool value) {
                          setState(() {
                            isNews = value;
                          });
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                    backgroundColor: const Color(0xffFF7F00)),
                onPressed: () {},
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  child: Text(
                    'Log Out',
                    style: GoogleFonts.josefinSans(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      fontStyle: FontStyle.normal,
                      color: const Color(0xFFF6F6F6),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}