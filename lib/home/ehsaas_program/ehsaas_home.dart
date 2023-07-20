import 'package:ehsaas/home/ehsaas_program/basic_info.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import 'eligibility.dart';
class Ehsaas extends StatefulWidget {
  const Ehsaas({super.key});

  @override
  State<Ehsaas> createState() => _EhsaasState();
}

class _EhsaasState extends State<Ehsaas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: CupertinoColors.systemGreen,
        centerTitle: true,
        title: Text("احساس پروگرام 8171",style: GoogleFonts.poppins(
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
                      context, MaterialPageRoute(builder: (context) => Basic_Info()));

                },
                child: Container(
                  height: 45,
                  width: 250,
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
                String groupLink = 'https://8171ehsaasprogram25000bisp.online/';
                await launch(groupLink);
                throw 'Could not launch $groupLink';

              },
              child: Container(
                height: 45,
                width: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: CupertinoColors.systemGreen,
                ),
                child: Center(
                  child: Text("Ehsaas Portal",style: GoogleFonts.poppins(
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
                    context, MaterialPageRoute(builder: (context) => Criteria()));
              },
              child: Container(
                height: 45,
                width: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: CupertinoColors.systemGreen,
                ),
                child: Center(
                  child: Text("Eligibility Criteria",style: GoogleFonts.poppins(
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
