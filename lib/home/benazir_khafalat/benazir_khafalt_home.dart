import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import 'benazir_kafalat_campsite.dart';
import 'kafalat_info.dart';



class Benazir_Khafalat_Home extends StatefulWidget {
  const Benazir_Khafalat_Home({super.key});

  @override
  State<Benazir_Khafalat_Home> createState() => _Benazir_Khafalat_HomeState();
}

class _Benazir_Khafalat_HomeState extends State<Benazir_Khafalat_Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: CupertinoColors.systemGreen,
        centerTitle: true,
        title: Text("بینظیر کفالت پروگرام",style: GoogleFonts.poppins(
            color: Colors.white,
            fontSize: 23,
            fontWeight: FontWeight.bold
        ),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios,color: Colors.white,size: 30,),
          onPressed: (){
            Navigator.of(context).pop();
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 40,
            ),
            Center(
              child: InkWell(
                onTap: (){
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Kafalat_Info()));

                },
                child: Container(
                  height: 45,
                  width: 270,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: CupertinoColors.systemGreen,
                  ),
                  child: Center(
                    child: Text("Basic Info.",style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            InkWell(
              onTap: () async{
                String groupLink = 'https://8171ehsaasprogram25000bisp.online/8171-benazir-kafalat-program-new-date-announcement-from-ehsaas-nadra/';
                await launch(groupLink);
                throw 'Could not launch $groupLink';

              },
              child: Container(
                height: 45,
                width: 270,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: CupertinoColors.systemGreen,
                ),
                child: Center(
                  child: Text("Benazir Kafalat Program Portal",style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
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
                    context, MaterialPageRoute(builder: (context) => Kafalat_Campsite()));
              },
              child: Container(
                height: 45,
                width: 270,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: CupertinoColors.systemGreen,
                ),
                child: Center(
                  child: Text("Benazir Kafalat Campsite",style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
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
