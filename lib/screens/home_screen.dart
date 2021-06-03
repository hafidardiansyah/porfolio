import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:url_launcher/url_launcher.dart';

import '../components/badge_component.dart';
import '../components/list_tile_component.dart';
import '../components/floating_component.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth >= 1100) {
            return Center(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(
                  horizontal: 200.0,
                  vertical: 50.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hi, i am Hafid Ardiansyah, a graduate of SMKN 1 Kepanjen majoring in software engineering. Has 3 months internship experience in 2 different technology companies located in Malang. Likes to make something useful for others like apps. Hobbies are reading, drawing, and exercising. Now I'm still learning, because every day technology continues to develop.",
                      style: GoogleFonts.poppins(
                        fontSize: 28,
                        color: Color(0xFFF2F2F2),
                      ),
                    ),
                    SizedBox(height: 12.0),
                    _socialMedia(),
                    SizedBox(height: 36.0),
                    Text(
                      "Projects",
                      style: GoogleFonts.poppins(color: Color(0xFFF2F2F2)),
                    ),
                    SizedBox(height: 6.0),
                    Divider(color: Colors.white10, height: 2.0),
                    SizedBox(height: 12.0),
                    Row(
                      children: [
                        Expanded(child: _fnote(context, 120.0)),
                        Expanded(child: _wobboders(context, 120.0)),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(child: _apilf(context, 120.0)),
                        Expanded(child: _aresn(context, 120.0)),
                      ],
                    ),
                    SizedBox(height: 36.0),
                    Text(
                      "Pictures",
                      style: GoogleFonts.poppins(color: Color(0xFFF2F2F2)),
                    ),
                    SizedBox(height: 6.0),
                    Divider(color: Colors.white10, height: 2.0),
                    SizedBox(height: 12.0),
                    _pictures(),
                  ],
                ),
              ),
            );
          }
          if (constraints.maxWidth >= 650) {
            return Center(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(
                  horizontal: 100.0,
                  vertical: 25.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hi, i am Hafid Ardiansyah, a graduate of SMKN 1 Kepanjen majoring in software engineering. Has 3 months internship experience in 2 different technology companies located in Malang. Likes to make something useful for others like apps. Hobbies are reading, drawing, and exercising. Now I'm still learning, because every day technology continues to develop.",
                      style: GoogleFonts.poppins(
                        fontSize: 20,
                        color: Color(0xFFF2F2F2),
                      ),
                    ),
                    SizedBox(height: 12.0),
                    _socialMedia(),
                    SizedBox(height: 36.0),
                    Row(
                      children: [
                        Expanded(child: _fnote(context, 60.0)),
                        Expanded(child: _wobboders(context, 60.0)),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(child: _apilf(context, 60.0)),
                        Expanded(child: _aresn(context, 60.0)),
                      ],
                    ),
                    SizedBox(height: 36.0),
                    Text(
                      "Pictures",
                      style: GoogleFonts.poppins(color: Color(0xFFF2F2F2)),
                    ),
                    SizedBox(height: 6.0),
                    Divider(color: Colors.white10, height: 2.0),
                    SizedBox(height: 12.0),
                    _pictures(),
                  ],
                ),
              ),
            );
          }
          return Container(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(
                vertical: 20.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text(
                      "Hi, i am Hafid Ardiansyah, a graduate of SMKN 1 Kepanjen majoring in software engineering. Has 3 months internship experience in 2 different technology companies located in Malang. Likes to make something useful for others like apps. Hobbies are reading, drawing, and exercising. Now I'm still learning, because every day technology continues to develop.",
                      style: GoogleFonts.poppins(
                        fontSize: 18,
                        color: Color(0xFFF2F2F2),
                      ),
                    ),
                  ),
                  SizedBox(height: 12.0),
                  Container(
                    child: _socialMedia(),
                  ),
                  SizedBox(height: 36.0),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: _fnote(context, 12.0),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: _apilf(context, 12.0),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: _wobboders(context, 12.0),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: _aresn(context, 12.0),
                  ),
                  SizedBox(height: 36.0),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text(
                      "Pictures",
                      style: GoogleFonts.poppins(color: Color(0xFFF2F2F2)),
                    ),
                  ),
                  SizedBox(height: 6.0),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Divider(color: Colors.white10, height: 2.0),
                  ),
                  SizedBox(height: 12.0),
                  _pictures(),
                ],
              ),
            ),
          );
        }));
  }
}

_socialMedia() {
  return Container(
    height: 40,
    child: ListView(
      scrollDirection: Axis.horizontal,
      children: [
        BadgeComponent(
            onPressed: () async {
              final url = 'mailto:contacthafidardiansyah@gmail.com';
              if (await canLaunch(url)) {
                await launch(url);
              } else {
                throw 'Could not launch $url';
              }
            },
            text: "Email"),
        SizedBox(width: 8.0),
        BadgeComponent(onPressed: () {}, text: "CV"),
        SizedBox(width: 8.0),
        BadgeComponent(
            onPressed: () {
              launch(
                  'https://www.youtube.com/channel/UCuuAMxi7XMbIOgYyW5JE2eA');
            },
            text: "Youtube"),
        SizedBox(width: 8.0),
        BadgeComponent(
            onPressed: () {
              launch('https://hafidardiansyah.blogspot.com');
            },
            text: "Blogger"),
        SizedBox(width: 8.0),
        BadgeComponent(
            onPressed: () {
              launch('https://github.com/hafidardiansyah');
            },
            text: "GitHub"),
        SizedBox(width: 8.0),
        BadgeComponent(
            onPressed: () {
              launch('https://dribbble.com/hafidardiansyah');
            },
            text: "Dribbble"),
      ],
    ),
  );
}

_pictures() {
  return CarouselSlider(
    options: CarouselOptions(
      enableInfiniteScroll: false,
      autoPlay: true,
      aspectRatio: 16 / 9,
      enlargeCenterPage: true,
    ),
    items: ['picture_1.png', 'picture_2.png', 'picture_3.png', 'picture_4.png']
        .map((i) {
      return Builder(
        builder: (BuildContext context) {
          return Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.symmetric(horizontal: 5.0),
            decoration: BoxDecoration(
              color: Colors.white10,
              borderRadius: BorderRadius.circular(12),
            ),
            padding: EdgeInsets.all(6.0),
            child: Image.asset('$i'),
          );
        },
      );
    }).toList(),
  );
}

_fnote(BuildContext context, double padding) {
  return ListTileComponent(
    onTap: () {
      showFloatingModalBottomSheet(
        context: context,
        backgroundColor: Colors.black87,
        builder: (context) => SingleChildScrollView(
          controller: ModalScrollController.of(context),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.black,
              border: Border.all(
                color: Colors.white10,
                width: 2.0,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(4.0),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: padding),
                  child: ListTileComponent(
                    onTap: () {},
                    title: "FNote",
                    subTitle:
                        "Save notes easily using FNote, attractive appearance and easy to use.",
                    image: "fnote_logo.png",
                    icon: Icons.more_vert_rounded,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: padding),
                  child: Divider(height: 2.0, color: Colors.white10),
                ),
                SizedBox(height: 12.0),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: padding),
                  child: Text(
                    'TECH',
                    style: GoogleFonts.poppins(color: Colors.white70),
                  ),
                ),
                SizedBox(height: 12.0),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: padding),
                  child: Row(
                    children: [
                      BadgeComponent(onPressed: () {}, text: "Flutter"),
                      SizedBox(width: 8.0),
                      BadgeComponent(onPressed: () {}, text: "SQFlite"),
                    ],
                  ),
                ),
                SizedBox(height: 24.0),
                CarouselSlider(
                  options: CarouselOptions(
                    enableInfiniteScroll: false,
                    autoPlay: true,
                    aspectRatio: 16 / 9,
                  ),
                  items: ['fnote_ss.png', 'fnote_logo.png'].map((i) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.symmetric(horizontal: 5.0),
                          decoration: BoxDecoration(
                            color: Colors.deepPurple,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          padding: EdgeInsets.symmetric(horizontal: 12.0),
                          child: Image.asset('$i'),
                        );
                      },
                    );
                  }).toList(),
                ),
                SizedBox(height: 24.0),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: padding),
                  child: Text(
                    "Designed with an easy interface and use, not only that the code is also made easy to use and has good performance.\n"
                    "It has the feature of displaying all notes, adding, editing, and deleting.",
                    style: GoogleFonts.poppins(
                      color: Colors.white70,
                      fontSize: 14,
                    ),
                  ),
                ),
                SizedBox(height: 24.0),
                Center(
                    child: ElevatedButton(
                  child: Text("Visit"),
                  onPressed: () {
                    launch('https://github.com/hafidardiansyah/fnote');
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateColor.resolveWith(
                        (states) => Colors.white10),
                    elevation: MaterialStateProperty.all(0),
                    overlayColor: MaterialStateColor.resolveWith(
                        (states) => Colors.white12),
                    padding: MaterialStateProperty.all(
                        EdgeInsets.symmetric(horizontal: 48.0, vertical: 24.0)),
                  ),
                )),
                SizedBox(height: 24.0),
              ],
            ),
          ),
        ),
      );
    },
    title: "FNote",
    subTitle:
        "Save notes easily using FNote, attractive appearance and easy to use.",
    image: "fnote_logo.png",
    icon: Icons.keyboard_arrow_right_rounded,
  );
}

_aresn(BuildContext context, double padding) {
  return ListTileComponent(
    onTap: () {
      showFloatingModalBottomSheet(
        context: context,
        backgroundColor: Colors.black87,
        builder: (context) => SingleChildScrollView(
          controller: ModalScrollController.of(context),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.black,
              border: Border.all(
                color: Colors.white10,
                width: 2.0,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(4.0),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: padding),
                  child: ListTileComponent(
                    onTap: () {},
                    title: "Aresn",
                    subTitle: "SPP schools easily use",
                    image: "aresn_logo.png",
                    icon: Icons.more_vert_rounded,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: padding),
                  child: Divider(height: 2.0, color: Colors.white10),
                ),
                SizedBox(height: 12.0),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: padding),
                  child: Text(
                    'TECH',
                    style: GoogleFonts.poppins(color: Colors.white70),
                  ),
                ),
                SizedBox(height: 12.0),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: padding),
                  child: Row(
                    children: [
                      BadgeComponent(onPressed: () {}, text: "HTML"),
                      SizedBox(width: 8.0),
                      BadgeComponent(onPressed: () {}, text: "CSS"),
                      SizedBox(width: 8.0),
                      BadgeComponent(onPressed: () {}, text: "JavaScript"),
                      SizedBox(width: 8.0),
                      BadgeComponent(onPressed: () {}, text: "MySQL"),
                      SizedBox(width: 8.0),
                      BadgeComponent(onPressed: () {}, text: "PHP"),
                      SizedBox(width: 8.0),
                    ],
                  ),
                ),
                SizedBox(height: 24.0),
                CarouselSlider(
                  options: CarouselOptions(
                    enableInfiniteScroll: false,
                    autoPlay: true,
                    aspectRatio: 16 / 9,
                  ),
                  items: [
                    'aresn_ss_1.png',
                    'aresn_ss_2.png',
                    'aresn_ss_3.png',
                    'aresn_ss_4.png',
                    'aresn_logo.png'
                  ].map((i) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.symmetric(horizontal: 5.0),
                          decoration: BoxDecoration(
                            color: Colors.deepPurple,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          padding: EdgeInsetsDirectional.all(12.0),
                          child: Image.asset('$i'),
                        );
                      },
                    );
                  }).toList(),
                ),
                SizedBox(height: 24.0),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: padding),
                  child: Text(
                    "Has features that help you tell your story around the world",
                    style: GoogleFonts.poppins(
                      color: Colors.white70,
                      fontSize: 14,
                    ),
                  ),
                ),
                SizedBox(height: 24.0),
                Center(
                    child: ElevatedButton(
                  child: Text("Visit"),
                  onPressed: () {
                    launch('https://github.com/hafidardiansyah/aresn');
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateColor.resolveWith(
                        (states) => Colors.white10),
                    elevation: MaterialStateProperty.all(0),
                    overlayColor: MaterialStateColor.resolveWith(
                        (states) => Colors.white12),
                    padding: MaterialStateProperty.all(
                        EdgeInsets.symmetric(horizontal: 48.0, vertical: 24.0)),
                  ),
                )),
                SizedBox(height: 24.0),
              ],
            ),
          ),
        ),
      );
    },
    title: "Aresn",
    subTitle: "SPP schools easily use",
    image: "aresn_logo.png",
    icon: Icons.keyboard_arrow_right_rounded,
  );
}

_wobboders(BuildContext context, double padding) {
  return ListTileComponent(
    onTap: () {
      showFloatingModalBottomSheet(
        context: context,
        backgroundColor: Colors.black87,
        builder: (context) => SingleChildScrollView(
          controller: ModalScrollController.of(context),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.black,
              border: Border.all(
                color: Colors.white10,
                width: 2.0,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(4.0),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: padding),
                  child: ListTileComponent(
                    onTap: () {},
                    title: "Wobboders",
                    subTitle: "Share stories using Wobboders",
                    image: "wobboders_logo.png",
                    icon: Icons.more_vert_rounded,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: padding),
                  child: Divider(height: 2.0, color: Colors.white10),
                ),
                SizedBox(height: 12.0),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: padding),
                  child: Text(
                    'TECH',
                    style: GoogleFonts.poppins(color: Colors.white70),
                  ),
                ),
                SizedBox(height: 12.0),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: padding),
                  child: Row(
                    children: [
                      BadgeComponent(onPressed: () {}, text: "Laravel"),
                      SizedBox(width: 8.0),
                      BadgeComponent(onPressed: () {}, text: "Bootstrap"),
                    ],
                  ),
                ),
                SizedBox(height: 24.0),
                CarouselSlider(
                  options: CarouselOptions(
                    enableInfiniteScroll: false,
                    autoPlay: true,
                    aspectRatio: 16 / 9,
                  ),
                  items: [
                    'wobboders_ss_1.png',
                    'wobboders_ss_2.png',
                    'wobboders_ss_3.png',
                    'wobboders_logo.png'
                  ].map((i) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.symmetric(horizontal: 5.0),
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          padding: EdgeInsetsDirectional.all(12.0),
                          child: Image.asset('$i'),
                        );
                      },
                    );
                  }).toList(),
                ),
                SizedBox(height: 24.0),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: padding),
                  child: Text(
                    "Has features that help you tell your story around the world",
                    style: GoogleFonts.poppins(
                      color: Colors.white70,
                      fontSize: 14,
                    ),
                  ),
                ),
                SizedBox(height: 24.0),
                Center(
                    child: ElevatedButton(
                  child: Text("Visit"),
                  onPressed: () {
                    launch('https://github.com/hafidardiansyah/wobboders');
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateColor.resolveWith(
                        (states) => Colors.white10),
                    elevation: MaterialStateProperty.all(0),
                    overlayColor: MaterialStateColor.resolveWith(
                        (states) => Colors.white12),
                    padding: MaterialStateProperty.all(
                        EdgeInsets.symmetric(horizontal: 48.0, vertical: 24.0)),
                  ),
                )),
                SizedBox(height: 24.0),
              ],
            ),
          ),
        ),
      );
    },
    title: "Wobboders",
    subTitle: "Share stories using Wobboders",
    image: "wobboders_logo.png",
    icon: Icons.keyboard_arrow_right_rounded,
  );
}

_apilf(BuildContext context, double padding) {
  return ListTileComponent(
    onTap: () {
      showFloatingModalBottomSheet(
        context: context,
        backgroundColor: Colors.black87,
        builder: (context) => SingleChildScrollView(
          controller: ModalScrollController.of(context),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.black,
              border: Border.all(
                color: Colors.white10,
                width: 2.0,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(4.0),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: padding),
                  child: ListTileComponent(
                    onTap: () {},
                    title: "APILF",
                    subTitle: "Share stories using APILF",
                    image: "apilf_logo.png",
                    icon: Icons.more_vert_rounded,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: padding),
                  child: Divider(height: 2.0, color: Colors.white10),
                ),
                SizedBox(height: 12.0),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: padding),
                  child: Text(
                    'TECH',
                    style: GoogleFonts.poppins(color: Colors.white70),
                  ),
                ),
                SizedBox(height: 12.0),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: padding),
                  child: Row(
                    children: [
                      BadgeComponent(onPressed: () {}, text: "Laravel"),
                      SizedBox(width: 8.0),
                      BadgeComponent(onPressed: () {}, text: "Flutter"),
                    ],
                  ),
                ),
                SizedBox(height: 24.0),
                CarouselSlider(
                  options: CarouselOptions(
                    enableInfiniteScroll: false,
                    autoPlay: true,
                    aspectRatio: 16 / 9,
                  ),
                  items: ['apilf_ss.gif', 'apilf_logo.png'].map((i) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.symmetric(horizontal: 5.0),
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          padding: EdgeInsetsDirectional.all(12.0),
                          child: Image.asset('$i'),
                        );
                      },
                    );
                  }).toList(),
                ),
                SizedBox(height: 24.0),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: padding),
                  child: Text(
                    "Has features that help you tell your story around the world",
                    style: GoogleFonts.poppins(
                      color: Colors.white70,
                      fontSize: 14,
                    ),
                  ),
                ),
                SizedBox(height: 24.0),
                Center(
                    child: ElevatedButton(
                  child: Text("Visit"),
                  onPressed: () {
                    launch('https://github.com/hafidardiansyah/APILF');
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateColor.resolveWith(
                        (states) => Colors.white10),
                    elevation: MaterialStateProperty.all(0),
                    overlayColor: MaterialStateColor.resolveWith(
                        (states) => Colors.white12),
                    padding: MaterialStateProperty.all(
                        EdgeInsets.symmetric(horizontal: 48.0, vertical: 24.0)),
                  ),
                )),
                SizedBox(height: 24.0),
              ],
            ),
          ),
        ),
      );
    },
    title: "APILF",
    subTitle: "Share stories using APILF",
    image: "apilf_logo.png",
    icon: Icons.keyboard_arrow_right_rounded,
  );
}
