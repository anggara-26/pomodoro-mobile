import 'package:flutter/material.dart';
import 'package:fokusin/core/theme/app_palette.dart';
import 'package:fokusin/core/utils/constants/image_strings.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RichText(
                text: TextSpan(
                  text: 'Yuk Mulai ',
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                        fontFamily: 'Comfortaa',
                        fontWeight: FontWeight.w600,
                      ),
                  children: [
                    TextSpan(
                      text: 'Fokusin!',
                      style:
                          Theme.of(context).textTheme.headlineSmall?.copyWith(
                                color: PomodoroColors.primary,
                                fontFamily: 'Comfortaa',
                                fontWeight: FontWeight.w600,
                              ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Text(
                'Mari buat akun atau masuk dengan google untuk melanjutkan',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: OutlinedButton(
                  onPressed: () {},
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(vertical: 2),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Positioned(
                          left: 0,
                          child: Image.asset(
                            AppImages.google,
                            width: 20,
                          ),
                        ),
                        Text(
                          'Masuk dengan Google',
                          textAlign: TextAlign.center,
                          style:
                              Theme.of(context).textTheme.labelLarge?.copyWith(
                                    fontWeight: FontWeight.w600,
                                  ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
