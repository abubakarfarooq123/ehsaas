import 'package:ehsaas/home/ehsaas_rashan/basic_info_ehsaas_ration.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import 'ehsaas_card.dart';
class Ehsaas_Rashan extends StatefulWidget {
  const Ehsaas_Rashan({super.key});

  @override
  State<Ehsaas_Rashan> createState() => _Ehsaas_RashanState();
}

class _Ehsaas_RashanState extends State<Ehsaas_Rashan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: CupertinoColors.systemGreen,
        centerTitle: true,
        title: Text("احساس راشن پروگرام",style: GoogleFonts.poppins(
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
                      context, MaterialPageRoute(builder: (context) => Ehsaas_Ration_Info()));
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
                String groupLink = 'https://8171ehsaasprogram25000bisp.online/4500-rashan-program-new-update-today-2023-bisp-9000-ehsas-ration-program/';
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
                  child: Text("Ehsaas Rashan Portal",style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
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
                    context, MaterialPageRoute(builder: (context) => Ehsaas_Card()));
              },
              child: Container(
                height: 45,
                width: 270,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: CupertinoColors.systemGreen,
                ),
                child: Center(
                  child: Text("Ehsaas Card",style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
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
