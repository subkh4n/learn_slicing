import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sahurin/core.dart';
import 'package:sahurin/shared/utils/theme.dart';
import '../../../../shared/widget/botton_navigation.dart';
import '../controller/dashboard_controller.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({Key? key}) : super(key: key);

  Widget build(context, DashboardController controller) {
    controller.view = this;

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 25.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 56.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hi , Anna",
                          style: darkBoldTextstyle.copyWith(
                              fontSize: 20.0, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Selamat Berpuasa!",
                          style: darkTextStyle.copyWith(
                            fontSize: 20.0,
                          ),
                        ),
                      ],
                    ),
                    const CircleAvatar(
                      backgroundImage: AssetImage(
                        "assets/profile.png",
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Container(
                height: 235.0,
                decoration: BoxDecoration(
                  color: greenColor,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(
                      30.0,
                    ),
                  ),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      left: 20.0,
                      top: 0.0,
                      bottom: 0.0,
                      child: SizedBox(
                        width: 100.0,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "30%",
                              style: GoogleFonts.oswald(
                                fontSize: 30.0,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "Discount Only Valid for Today",
                              style: GoogleFonts.oswald(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Text(
                "Jadwal adzan & imsak",
                style: darkBoldTextstyle.copyWith(
                  fontSize: 16.0,
                ),
              ),
              const SizedBox(
                height: 15.0,
              ),
              Container(
                height: 140.0,
                decoration: BoxDecoration(
                  // color: greenColor,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(
                      16.0,
                    ),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 1.0,
                      blurRadius: 5.0,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: Stack(
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            30.0,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 20.0,
                      top: 0.0,
                      bottom: 0.0,
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Hari ini",
                                  style: darkTextStyle.copyWith(
                                    fontSize: 12.0,
                                  ),
                                ),
                                const SizedBox(
                                  width: 5.0,
                                ),
                                Text(
                                  "30 Maret 2023",
                                  style: darkBoldTextstyle.copyWith(
                                    fontSize: 12.0,
                                  ),
                                ),
                                const Icon(
                                  Icons.wb_sunny,
                                  color: Colors.yellow,
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Adzan Dzuhur",
                                      style: greenTextstyle.copyWith(
                                        fontSize: 12.0,
                                      ),
                                    ),
                                    Text(
                                      "11:48",
                                      style: goldBoldTextstyle.copyWith(
                                        fontSize: 20.0,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  width: 30.0,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Saat ini waktu",
                                      style: greenTextstyle.copyWith(
                                        fontSize: 12.0,
                                      ),
                                    ),
                                    Text(
                                      "Imsa'",
                                      style: goldBoldTextstyle.copyWith(
                                        fontSize: 20.0,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  width: 30.0,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "waktu Saat ini",
                                      style: greenTextstyle.copyWith(
                                        fontSize: 12.0,
                                      ),
                                    ),
                                    Text(
                                      "04:30",
                                      style: goldBoldTextstyle.copyWith(
                                        fontSize: 20.0,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Text(
                "Jaga Pola Makanmu",
                style: darkBoldTextstyle.copyWith(
                  fontSize: 16.0,
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    height: 236,
                    width: 186,
                    decoration: BoxDecoration(
                      color: greenColor,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(
                          30.0,
                        ),
                      ),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          left: 20.0,
                          top: 10.0,
                          bottom: 0.0,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "194g",
                                style: whiteTextStyle.copyWith(
                                  fontSize: 35.0,
                                ),
                              ),
                              Text(
                                "Total Karbohidrat",
                                style: whiteTextStyle.copyWith(
                                  fontSize: 14.0,
                                ),
                              ),
                              const SizedBox(
                                height: 30.0,
                              ),
                              Image.asset(
                                "assets/yellow.png",
                                width: 70.0,
                                height: 50.0,
                                fit: BoxFit.fill,
                              ),
                              const SizedBox(
                                height: 10.0,
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Max.",
                                    style: whiteTextStyle.copyWith(
                                      fontSize: 12.0,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 5.0,
                                  ),
                                  Text(
                                    "250 g",
                                    style: whiteTextstyle.copyWith(
                                      fontSize: 12.0,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 20.0,
                                  ),
                                  Text(
                                    "Net.",
                                    style: whiteTextStyle.copyWith(
                                      fontSize: 12.0,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 5.0,
                                  ),
                                  Text(
                                    "173 g",
                                    style: whiteTextstyle.copyWith(
                                      fontSize: 12.0,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 5.0,
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          right: 20,
                          bottom: 10,
                          child: Container(
                            height: 40,
                            width: 70,
                            decoration: BoxDecoration(
                              color: whiteColor,
                              borderRadius: const BorderRadius.all(
                                Radius.circular(10.0),
                              ),
                            ),
                            child: TextButton(
                              onPressed: () {},
                              child: Text(
                                "Masukan",
                                style: greenTextstyle.copyWith(
                                  fontSize: 12.0,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 20.0,
                  ),
                  Container(
                    height: 236,
                    width: 186,
                    decoration: BoxDecoration(
                      color: greenColor,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(
                          30.0,
                        ),
                      ),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          left: 20.0,
                          top: 10.0,
                          bottom: 0.0,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "194g",
                                style: whiteTextStyle.copyWith(
                                  fontSize: 35.0,
                                ),
                              ),
                              Text(
                                "Total Karbohidrat",
                                style: whiteTextStyle.copyWith(
                                  fontSize: 14.0,
                                ),
                              ),
                              const SizedBox(
                                height: 30.0,
                              ),
                              Image.asset(
                                "assets/yellow.png",
                                width: 70.0,
                                height: 50.0,
                                fit: BoxFit.fill,
                              ),
                              const SizedBox(
                                height: 10.0,
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Max.",
                                    style: whiteTextStyle.copyWith(
                                      fontSize: 12.0,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 5.0,
                                  ),
                                  Text(
                                    "250 g",
                                    style: whiteTextstyle.copyWith(
                                      fontSize: 12.0,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 20.0,
                                  ),
                                  Text(
                                    "Net.",
                                    style: whiteTextStyle.copyWith(
                                      fontSize: 12.0,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 5.0,
                                  ),
                                  Text(
                                    "173 g",
                                    style: whiteTextstyle.copyWith(
                                      fontSize: 12.0,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 5.0,
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          right: 20,
                          bottom: 10,
                          child: Container(
                            height: 40,
                            width: 70,
                            decoration: BoxDecoration(
                              color: whiteColor,
                              borderRadius: const BorderRadius.all(
                                Radius.circular(10.0),
                              ),
                            ),
                            child: TextButton(
                              onPressed: () {},
                              child: Text(
                                "Masukan",
                                style: greenTextstyle.copyWith(
                                  fontSize: 12.0,
                                ),
                              ),
                            ),
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
      ),
      floatingActionButton: Container(
        height: 65,
        width: MediaQuery.of(context).size.width,
        margin: const EdgeInsets.symmetric(
          horizontal: 24,
        ),
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 5,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            BottomNavbarItem(
              imageUrl: 'assets/icon/home.png',
              isActive: true,
            ),
            BottomNavbarItem(
              imageUrl: 'assets/icon/document.png',
              isActive: false,
            ),
            BottomNavbarItem(
              imageUrl: 'assets/icon/checklist.png',
              isActive: false,
            ),
            BottomNavbarItem(
              imageUrl: 'assets/icon/notification.png',
              isActive: false,
            ),
            BottomNavbarItem(
              imageUrl: 'assets/icon/user.png',
              isActive: false,
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  @override
  State<DashboardView> createState() => DashboardController();
}
