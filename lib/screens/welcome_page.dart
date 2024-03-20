import 'package:flutter/material.dart';
import 'package:gofinances/core/app_color.dart';
import 'package:gofinances/shared/app_images.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.red,
        child: Stack(
          children: [
            Container(
              alignment: Alignment.center,
              color: const Color(0xff5636D3),
              child: Column(
                children: [
                  Image.asset(
                    AppImages.logo,
                    width: 120,
                    height: 68,
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Text(
                    'Controle suas',
                    style: GoogleFonts.poppins(
                      fontSize: 30,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'finanças de forma',
                    style: GoogleFonts.poppins(
                      fontSize: 30,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'muito simples',
                    style: GoogleFonts.poppins(
                      fontSize: 30,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    height: 80,
                  ),
                  Text(
                    'Faça seu login com',
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'uma das contas abaixo',
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                color: AppColors.orange,
                height: 245,
                width: double.infinity,
                child: Column(
                  children: [
                    SizedBox(
                      width: 311,
                      height: 56,
                      child: TextButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                            Colors.white,
                          ),
                        ),
                        child: Row(
                          children: [
                            Image.asset(AppImages.google),
                            const Expanded(
                              child: Text(
                                'Entrar com google',
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
