import 'package:eatmore/model/categories.dart';
import 'package:eatmore/model/top_brand.dart';
import 'package:eatmore/source/app_image.dart';
import 'package:eatmore/source/sizer.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            appBar(),
            searchBar(),
            categories(),
            eventsSections(),
            topBrands(),
          ],
        ),
      ),
    );
  }

  Widget topBrands() {
    return Container(
      child: GridView.builder(
        shrinkWrap: true,
        itemCount: listTopBrand.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
        ),
        itemBuilder: (context, index) {
          return Column(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  padding: const EdgeInsets.all(6),
                  width: 50,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.grey.withOpacity(0.6),
                      width: 0.3,
                    ),
                  ),
                  child: Image.asset(listTopBrand[index].image),
                ),
              ),
              Text(
                listTopBrand[index].name,
                style: GoogleFonts.poppins(),
              ),
            ],
          );
        },
      ),
    );
  }

  Widget categories() {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 8,
      ),
      height: 50,
      child: Stack(
        children: [
          ListView.builder(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemCount: listCategories.length,
            itemBuilder: (context, index) {
              return Row(
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 4),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 5,
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black54,
                        width: 0.3,
                      ),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    child: Text(
                      listCategories[index].category,
                      style: GoogleFonts.poppins(),
                    ),
                  ),
                  if (index == listCategories.length - 1)
                    Sizer.spacerWidth(
                      size: Get.width * 0.3,
                    ),
                ],
              );
            },
          ),
          Positioned.fill(
            right: 0,
            child: Align(
              alignment: Alignment.centerRight,
              child: Container(
                width: Get.width * 0.3,
                padding: const EdgeInsets.symmetric(
                  horizontal: 8,
                  vertical: 5,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.black54,
                    width: 0.3,
                  ),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                  ),
                ),
                child: Row(
                  children: [
                    const Icon(
                      Icons.filter_alt_outlined,
                    ),
                    Text(
                      "Relevance",
                      style: GoogleFonts.poppins(),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Row eventsSections() {
    return Row(
      children: [
        Expanded(
          child: Container(
            padding: const EdgeInsets.only(left: 8, right: 4),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(25),
              ),
            ),
            child: Image.asset(AppImage.events1),
          ),
        ),
        Expanded(
          child: Container(
            padding: const EdgeInsets.only(left: 8, right: 4),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(25),
              ),
            ),
            child: Image.asset(AppImage.events2),
          ),
        ),
      ],
    );
  }

  Container searchBar() {
    return Container(
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        // border: Border.all(
        //   color: Colors.grey.withOpacity(0.6),
        //   width: 0.8,
        // ),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.6),
            blurRadius: 3.0,
            spreadRadius: 1.0,
          ),
        ],
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Row(
        children: [
          const FaIcon(
            FontAwesomeIcons.search,
            color: Colors.pink,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: Get.width * 0.8,
              child: Text(
                "Nama restaurant, makanan, minuman, Nama restaurant, makanan, minuman,",
                style: GoogleFonts.poppins(),
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Padding appBar() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const FaIcon(
            FontAwesomeIcons.mapMarkerAlt,
            color: Colors.pink,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Jalan Pengadegan Selatan No 21 A",
                    overflow: TextOverflow.ellipsis,
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.pink,
                    ),
                  ),
                  Sizer.spacerHeight(
                    size: 3,
                  ),
                  Container(
                    width: Get.width * 0.8,
                    child: const Text(
                      "Jalan Pengadegan Selatan No 21 A Pengadegan Jakarta Selatan",
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const FaIcon(
            FontAwesomeIcons.bars,
          ),
        ],
      ),
    );
  }
}
