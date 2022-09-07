import 'package:flutter/material.dart';
import 'package:kiwi_mobile/shared/theme.dart';
import 'package:kiwi_mobile/widget/buttons.dart';
import 'package:kiwi_mobile/widget/forms.dart';

class GuestHomePage extends StatefulWidget {
  const GuestHomePage({super.key});

  @override
  State<GuestHomePage> createState() => _GuestHomePageState();
}

class _GuestHomePageState extends State<GuestHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: blackColor,
        ),
        leading: GestureDetector(
          onTap: () {},
          child: const Icon(Icons.menu),
        ),
        centerTitle: true,
        title: Container(
          width: 155,
          height: 50,
          margin: const EdgeInsets.only(
            top: 50,
            bottom: 50,
          ),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'assets/logo_kiwi.png',
              ),
            ),
          ),
        ),
        backgroundColor: whiteColor,
        actions: [
          PopupMenuButton(
            itemBuilder: (context) {
              return [
                PopupMenuItem(
                  child: Container(
                    padding: const EdgeInsets.all(22),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: whiteColor,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // NOTE : PHONE INPUT
                        const CustomFormField(
                          title: 'My Prefered Language',
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        // NOTE : PASSWORD INPUT
                        const CustomFormField(
                          title: 'My Prefered Currency',
                        ),

                        const SizedBox(
                          height: 30,
                        ),
                        CustomFilledButton(
                          title: 'Login',
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                ),
              ];
            },
          ),
        ],
      ),
    );
  }
}
