import 'package:ehsaas/home/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
class Main extends StatefulWidget {
  const Main({super.key});

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {

  _launchWhatsapp() async {
    String groupLink = 'https://chat.whatsapp.com/Isxr2eTSMIjC6zK2mC6dTT';
      await launch(groupLink);
      throw 'Could not launch $groupLink';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Center(child: Image.asset("assets/images/logo.png")),
            SizedBox(
              height: 70,
            ),
            InkWell(
              onTap: () async{
                _launchWhatsapp();
              },
              child: Container(
                height: 50,
                width: 280,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: CupertinoColors.systemGreen,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(FontAwesomeIcons.whatsapp,color: Colors.white,),
                    SizedBox(
                      width: 10,
                    ),
                    Text("واٹس ایپ پر ہمارے ساتھ شامل ہوں۔",
                      textDirection: TextDirection.rtl,
                      style:GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 16,
                      ) ,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 150,
            ),
            InkWell(
              onTap: (){
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Home()));
              },
              child: Container(
                height: 70,
                width: 280,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "8171 Ehsaas Program",
                        style:GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                        ) ,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Icon(Icons.arrow_forward,size: 35,color: Colors.white,)
                    ],
                  ),
                ),
              ),
        ],
      ),

    ),
            Container(
              height: 60,
              width: MediaQuery.of(context).size.width,
              color: Colors.black,
              child: Center(
                  child: Text(
                    "Copyright © 2023 | 8171 Ehsaas Program 25000 BISP |",
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 11
                    ),
                  ),
              ),
            ),
          ],
        ),

    );
  }
}
