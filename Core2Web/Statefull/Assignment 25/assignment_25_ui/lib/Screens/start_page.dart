import 'package:assignment_25_ui/Screens/login_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartPage extends StatefulWidget {
  const StartPage({super.key});

  @override
  State createState() => _StartPageState();
}

class _StartPageState extends State {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Image.asset(
              "assets/startpage.png"
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 53.53),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Enjoy your",
                 style:GoogleFonts.poppins(
                  fontWeight:FontWeight.w400,
                  fontSize:34.22,
                  color: const Color.fromRGBO(47, 47, 47, 1)
                 )
                ),
                Row(
                  children: [
                    Text(
                      "life with ",
                      style:GoogleFonts.poppins(
                        fontWeight:FontWeight.w400,
                        fontSize:34.22,
                        color: const Color.fromRGBO(47, 47, 47, 1)
                      )
                    ),
                    Text(
                      "Plants",
                      style:GoogleFonts.poppins(
                        fontWeight:FontWeight.w600,
                        fontSize:34.22,
                        color: const Color.fromRGBO(47, 47, 47, 1)
                      )
                    ),
                  ],
                )
              ],
            ),
          ),
          const SizedBox(height: 30),
          GestureDetector(
            onTap: (){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const LoginPage()));
            },
            child: Container(
              height: 50,
              width: MediaQuery.of(context).size.width*0.85,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                gradient: LinearGradient(
                  end: Alignment.topCenter,
                  begin: Alignment.bottomCenter,
                  colors: [
                    Color.fromRGBO(62, 102, 24, 1),
                    Color.fromRGBO(124, 180, 70, 1)
                  ]
                )
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Get Started",
                    style: GoogleFonts.rubik(
                      fontSize:18,
                      color:const Color.fromRGBO(255, 255, 255, 1),
                      fontWeight:FontWeight.w500
                    ),
                  ),
                  const SizedBox(width: 10),
                  const Icon(Icons.arrow_forward_ios_sharp,color:Color.fromRGBO(255, 255, 255, 1))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}