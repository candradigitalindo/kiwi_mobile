import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:kiwi_mobile/shared/theme.dart';
import 'package:kiwi_mobile/widget/buttons.dart';
import 'package:kiwi_mobile/widget/forms.dart';
import 'package:kiwi_mobile/widget/home_menu.dart';

class GuestHomePage extends StatefulWidget {
  const GuestHomePage({super.key});

  @override
  State<GuestHomePage> createState() => _GuestHomePageState();
}

class _GuestHomePageState extends State<GuestHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80),
        child: AppBar(
          backgroundColor: whiteColor,
          flexibleSpace: Container(
            margin: const EdgeInsets.only(
              top: 30,
            ),
            padding: const EdgeInsets.all(5),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.menu),
                    ),
                    Container(
                      width: 150,
                      height: 50,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/logo_kiwi.png'),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.search,
                            color: greyColor,
                          ),
                        ),
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const CustomFormField(
                                        title: 'My Prefered Language',
                                      ),
                                      const SizedBox(
                                        height: 16,
                                      ),
                                      const CustomFormField(
                                        title: 'My Prefered Currency',
                                      ),
                                      const SizedBox(
                                        height: 30,
                                      ),
                                      CustomFilledButton(
                                        title: 'Save My Setting',
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
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 3,
        ),
        children: [
          buildBanner(),
          buildMenu(),
          const SizedBox(
            height: 10,
          ),
          Text(
            "Featured Properties",
            style: blackTextStayle.copyWith(
              fontSize: 20,
              fontWeight: bold,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          buildFeatured(),
          const SizedBox(
            height: 20,
          ),
          Container(
            margin: const EdgeInsets.only(
              top: 10,
            ),
            padding: const EdgeInsets.all(2),
            decoration: BoxDecoration(
              color: greyColor,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'ALL',
                    style: blackTextStayle,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'FOR SALE',
                    style: blackTextStayle,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'FOR RENT',
                    style: blackTextStayle,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'MORTGAGE',
                    style: blackTextStayle,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Sort by : ',
                style: greyTextStayle,
              ),
              const SizedBox(
                width: 3,
              ),
              TextButton(
                onPressed: () {},
                child: Row(
                  children: [
                    Text(
                      'Default Order',
                      selectionColor: lightBlueColor,
                    ),
                    const SizedBox(
                      width: 3,
                    ),
                    const Icon(Icons.sort)
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          buildSort(),
          const SizedBox(
            height: 15,
          ),
          buildPropertyNews(),
        ],
      ),
    );
  }

  Widget buildBanner() {
    return CarouselSlider(
      options: CarouselOptions(
        viewportFraction: 1,
        autoPlay: true,
        height: 400,
        initialPage: 0,
      ),
      items: [
        "assets/banner1.jpg",
        "assets/banner2.jpeg",
        "assets/banner3.jpg",
        "assets/banner4.jpg",
      ].map(
        (i) {
          return Builder(
            builder: (BuildContext context) {
              // return Container(
              //   width: MediaQuery.of(context).size.width,
              //   margin: EdgeInsets.symmetric(horizontal: 5.0),
              //   decoration: BoxDecoration(color: Colors.white),
              //   child: Container(
              //     margin: const EdgeInsets.only(
              //       top: 2,
              //       bottom: 2,
              //     ),
              //     decoration: BoxDecoration(
              //       image: DecorationImage(
              //         image: AssetImage(i),
              //         fit: BoxFit.cover,
              //       ),
              //     ),
              //   ),
              // );
              final Size size = MediaQuery.of(context).size;
              return Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                child: Stack(
                  children: [
                    SizedBox(
                      height: size.width - 10,
                      width: size.width - 6,
                      child: Image.asset(
                        i,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      left: 16,
                      right: 16,
                      bottom: 32,
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: Container(
                              height: 120,
                              color: Colors.white.withOpacity(1),
                              padding: const EdgeInsets.all(16),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  const Text(
                                    'The Feeling Of Breeze at All Time',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16,
                                    ),
                                  ),
                                  const SizedBox(height: 5),
                                  const Text(
                                    'Damansara, Sprint Express...',
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(fontSize: 12),
                                  ),
                                  const SizedBox(height: 13),
                                  const Text(
                                    'SGD \$4,500,800',
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            height: 120,
                            width: 32,
                            color: Colors.blue.withOpacity(.8),
                            child: Icon(
                              Icons.arrow_forward_ios,
                              size: 16,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              );
            },
          );
        },
      ).toList(),
    );
  }

  Widget buildMenu() {
    return Container(
      margin: const EdgeInsets.only(top: 9),
      child: Card(
        semanticContainer: true,
        elevation: 5,
        margin: const EdgeInsets.only(
          top: 5,
          bottom: 5,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: const [
                    HomeMenuItem(
                      iconUrl: 'assets/home_menu_login.png',
                      title: 'Login/Register',
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    HomeMenuItem(
                      iconUrl: 'assets/home_menu_calculator.png',
                      title: 'Calculator',
                    ),
                  ],
                ),
                Column(
                  children: const [
                    HomeMenuItem(
                      iconUrl: 'assets/home_menu_home.png',
                      title: 'Home',
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    HomeMenuItem(
                      iconUrl: 'assets/home_menu_latest-news.png',
                      title: 'Property News',
                    ),
                  ],
                ),
                Column(
                  children: const [
                    HomeMenuItem(
                      iconUrl: 'assets/home_menu_agent.png',
                      title: 'Agent',
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    HomeMenuItem(
                      iconUrl: 'assets/home_menu_create-listing.png',
                      title: 'Create Listing',
                    ),
                  ],
                ),
                Column(
                  children: const [
                    HomeMenuItem(
                      iconUrl: 'assets/home_menu_property.png',
                      title: 'Property Type',
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    HomeMenuItem(
                      iconUrl: 'assets/home_menu_most-view-property.png',
                      title: 'Most Viewed',
                    ),
                  ],
                ),
                Column(
                  children: const [
                    HomeMenuItem(
                      iconUrl: 'assets/home_menu_affiliate.png',
                      title: 'Affiliate',
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    HomeMenuItem(
                      iconUrl: 'assets/home_menu_about-us.png',
                      title: 'About Us',
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }

  Widget buildFeatured() {
    return CarouselSlider(
      options: CarouselOptions(
        viewportFraction: 1,
        autoPlay: true,
        height: 470,
        initialPage: 0,
      ),
      items: [
        "assets/banner1.jpg",
        "assets/banner2.jpeg",
        "assets/banner3.jpg",
        "assets/banner4.jpg",
      ].map(
        (i) {
          return Builder(
            builder: (BuildContext context) {
              return Container(
                margin: const EdgeInsets.all(16),
                decoration: BoxDecoration(color: Colors.white),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      height: 240,
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8.0, vertical: 16),
                      child: Stack(
                        children: [
                          Image.asset(
                            i,
                            fit: BoxFit.fitWidth,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 4,
                                    horizontal: 8,
                                  ),
                                  decoration: BoxDecoration(
                                    color: Colors.green[300],
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                  child: const Text(
                                    'FEATURED',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 10,
                                    ),
                                  ),
                                ),
                                Row(
                                  children: <Widget>[
                                    Container(
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 4,
                                        horizontal: 8,
                                      ),
                                      decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius: BorderRadius.circular(4),
                                      ),
                                      child: const Text(
                                        'FORSALE',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 10,
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 4),
                                    Container(
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 4,
                                        horizontal: 8,
                                      ),
                                      decoration: BoxDecoration(
                                        color: Colors.grey[400],
                                        borderRadius: BorderRadius.circular(4),
                                      ),
                                      child: const Text(
                                        'SALE',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 10,
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 12)
                                  ],
                                )
                              ],
                            ),
                          ),
                          Positioned(
                            left: 16,
                            right: 16,
                            bottom: 16,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                const Text(
                                  'SGD \$23,800,800',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Row(
                                  children: <Widget>[
                                    Container(
                                      margin: const EdgeInsets.only(right: 4),
                                      padding: const EdgeInsets.all(8),
                                      decoration: BoxDecoration(
                                        color: Colors.black.withOpacity(.5),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Icon(
                                        Icons.favorite_border_outlined,
                                        color: Colors.white,
                                        size: 16,
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(right: 4),
                                      padding: const EdgeInsets.all(8),
                                      decoration: BoxDecoration(
                                        color: Colors.black.withOpacity(.5),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Icon(
                                        Icons.camera_alt_rounded,
                                        color: Colors.white,
                                        size: 16,
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(right: 4),
                                      padding: const EdgeInsets.all(8),
                                      decoration: BoxDecoration(
                                        color: Colors.black.withOpacity(.5),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Icon(
                                        Icons.add,
                                        color: Colors.white,
                                        size: 16,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          const Text(
                            'An Amazing Sunset View',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w600),
                          ),
                          SizedBox(height: 4),
                          const Text(
                            'Jalan Utama Kampung Alor Bangsa, Taman Gunung Selamat',
                            style: TextStyle(fontSize: 12, color: Colors.grey),
                          ),
                          SizedBox(height: 8),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  const Text(
                                    'Beds: 6  Baths: 6  sqft: 6000',
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  const Text(
                                    'Bungalow',
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                              ElevatedButton(
                                  onPressed: () {},
                                  child: Row(
                                    children: <Widget>[
                                      const Text('Details'),
                                      SizedBox(width: 4),
                                      Icon(
                                        Icons.arrow_forward_ios,
                                        size: 12,
                                      )
                                    ],
                                  ))
                            ],
                          ),
                        ],
                      ),
                    ),
                    Divider(color: Colors.grey),
                    Padding(
                      padding: const EdgeInsets.all(12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Icon(
                                Icons.person,
                                color: Colors.grey,
                              ),
                              SizedBox(width: 4),
                              const Text(
                                'Ching Ching',
                                style:
                                    TextStyle(fontSize: 12, color: Colors.grey),
                              )
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Icon(
                                Icons.calendar_month_outlined,
                                color: Colors.grey,
                              ),
                              SizedBox(width: 4),
                              const Text(
                                '3 months ago',
                                style:
                                    TextStyle(fontSize: 12, color: Colors.grey),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          );
        },
      ).toList(),
    );
  }

  Widget buildSort() {
    return Container(
      margin: const EdgeInsets.all(16),
      decoration: BoxDecoration(color: Colors.white),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 240,
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 16),
            child: Stack(
              children: [
                Image.network(
                  'https://www.emporioarchitect.com/img/blog/membuat-desain-rumah-minimalis-modern-1-lantai-47152247091118110638-0.jpg',
                  fit: BoxFit.fitWidth,
                ),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: 4,
                          horizontal: 8,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.green[300],
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: const Text(
                          'FEATURED',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 10,
                          ),
                        ),
                      ),
                      Row(
                        children: <Widget>[
                          Container(
                            padding: const EdgeInsets.symmetric(
                              vertical: 4,
                              horizontal: 8,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: const Text(
                              'FORSALE',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 10,
                              ),
                            ),
                          ),
                          SizedBox(width: 4),
                          Container(
                            padding: const EdgeInsets.symmetric(
                              vertical: 4,
                              horizontal: 8,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.grey[400],
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: const Text(
                              'SALE',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 10,
                              ),
                            ),
                          ),
                          SizedBox(width: 12)
                        ],
                      )
                    ],
                  ),
                ),
                Positioned(
                  left: 16,
                  right: 16,
                  bottom: 16,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      const Text(
                        'SGD \$23,800,800',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Row(
                        children: <Widget>[
                          Container(
                            margin: const EdgeInsets.only(right: 4),
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: Colors.black.withOpacity(.5),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Icon(
                              Icons.favorite_border_outlined,
                              color: Colors.white,
                              size: 16,
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(right: 4),
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: Colors.black.withOpacity(.5),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Icon(
                              Icons.camera_alt_rounded,
                              color: Colors.white,
                              size: 16,
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(right: 4),
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: Colors.black.withOpacity(.5),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Icon(
                              Icons.add,
                              color: Colors.white,
                              size: 16,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Text(
                  'An Amazing Sunset View',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
                SizedBox(height: 4),
                const Text(
                  'Jalan Utama Kampung Alor Bangsa, Taman Gunung Selamat',
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
                SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const Text(
                          'Beds: 6  Baths: 6  sqft: 6000',
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const Text(
                          'Bungalow',
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    ElevatedButton(
                        onPressed: () {},
                        child: Row(
                          children: <Widget>[
                            const Text('Details'),
                            SizedBox(width: 4),
                            Icon(
                              Icons.arrow_forward_ios,
                              size: 12,
                            )
                          ],
                        ))
                  ],
                ),
              ],
            ),
          ),
          Divider(color: Colors.grey),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.person,
                      color: Colors.grey,
                    ),
                    SizedBox(width: 4),
                    const Text(
                      'Ching Ching',
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    )
                  ],
                ),
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.calendar_month_outlined,
                      color: Colors.grey,
                    ),
                    SizedBox(width: 4),
                    const Text(
                      '3 months ago',
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildPropertyNews() {
    return Container(
      margin: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: whiteColor,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Property News",
            style: blackTextStayle.copyWith(
              fontSize: 16,
              fontWeight: semibold,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(1),
            margin: const EdgeInsets.only(top: 14),
            decoration: BoxDecoration(
              color: whiteColor,
            ),
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(
                    bottom: 18,
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/banner1.jpg',
                        width: 100,
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Most Appreciative Property',
                              style: blackTextStayle.copyWith(
                                fontSize: 16,
                                fontWeight: semibold,
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              'URA releases flash estimate of 2nd Quarter 2020 private residential property price index',
                              style: greyTextStayle.copyWith(
                                fontSize: 14,
                                fontWeight: regular,
                              ),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Text('Read More'),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
