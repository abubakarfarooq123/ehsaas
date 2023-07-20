import 'package:ehsaas/home/benazir_khafalat/benazir_khafalt_home.dart';
import 'package:ehsaas/home/ehsaas_program/ehsaas_home.dart';
import 'package:ehsaas/home/ehsaas_rashan/ehsaas_rashan_program_home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'benazir/benazir_income_home.dart';
import 'benazir_rahsan_program/benazir_rahsan_home.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
            size: 30,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        backgroundColor: CupertinoColors.systemGreen,
        centerTitle: true,
        title: Text(
          "احساس پروگرام",
          style: GoogleFonts.poppins(
              color: Colors.white, fontSize: 23, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 30,
            ),
            Center(
              child: Text(
                "8171 Ehsaas Program",
                style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 60,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Ehsaas()));
              },
              child: Container(
                height: 45,
                width: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: CupertinoColors.systemGreen,
                ),
                child: Center(
                  child: Text(
                    "احساس پروگرام 8171",
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Benazir_Income_Home()));
              },
              child: Container(
                height: 45,
                width: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: CupertinoColors.systemGreen,
                ),
                child: Center(
                  child: Text(
                    "بینظیر انکم سپورٹ پروگرام",
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Ehsaas_Rashan()));
              },
              child: Container(
                height: 45,
                width: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: CupertinoColors.systemGreen,
                ),
                child: Center(
                  child: Text(
                    "احساس راشن پروگرام",
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Benazir_Khafalat_Home()));
              },
              child: Container(
                height: 45,
                width: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: CupertinoColors.systemGreen,
                ),
                child: Center(
                  child: Text(
                    "بینظیر کفالت پروگرام",
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            InkWell(
              onTap: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Banazir_Rashan_Program()));
              },
              child: Container(
                height: 45,
                width: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: CupertinoColors.systemGreen,
                ),
                child: Center(
                  child: Text(
                    "بینظیر راشن پروگرام",
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
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
