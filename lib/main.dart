import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'widgets/botao_login.dart';
import 'widgets/botao_padrao.dart';
import 'widgets/botao_voltar.dart';
import 'widgets/campo_formulario.dart';
import 'widgets/texto_com_span.dart';
import 'widgets/texto_superior.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      title: 'Meu App',
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      initialRoute: '/',
      routes: {
        '/': (_) => const HomeScreen(),
        '/password': (_) => const PasswordLoginScreen(),
        '/create-account': (_) => const CreateAccountScreen(),
        '/forgot-password': (_) => const ForgotPasswordScreen(),
        '/reset-sent': (_) => const ResetSentScreen(),
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  void _openPasswordPage(BuildContext context) {
    Navigator.of(context).pushNamed('/password');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          FixedTitleText(text: 'Sign in'),
          Positioned(
            top: 200,
            left: 27,
            child: CampoFormulario(hintText: 'Email Address'),
          ),
          Positioned(
            top: 280,
            left: 27,
            child: BotaoPadrao(
              text: 'Continue',
              onPressed: () => _openPasswordPage(context),
            ),
          ),
          Positioned(
            top: 345,
            left: 27,
            child: TextoComSpan(
              textoNormal: 'Don\'t have an Account ? ',
              textoEmSpan: 'Create One',
            ),
          ),
          Positioned(
            top: 413,
            left: 23,
            child: SizedBox(
              width: 344,
              height: 171,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BotaoLogin(
                    texto: 'Continue With Apple',
                    icone: const Icon(
                      Icons.apple,
                      size: 24,
                      color: Colors.black,
                    ),
                    onPressed: () => _openPasswordPage(context),
                  ),
                  BotaoLogin(
                    texto: 'Continue With Google',
                    icone: const Text(
                      'G',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF4285F4),
                        height: 1.0,
                      ),
                    ),
                    onPressed: () => _openPasswordPage(context),
                  ),
                  BotaoLogin(
                    texto: 'Continue With Facebook',
                    icone: const Icon(
                      Icons.facebook,
                      size: 24,
                      color: Color(0xFF1877F2),
                    ),
                    onPressed: () => _openPasswordPage(context),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class PasswordLoginScreen extends StatelessWidget {
  const PasswordLoginScreen({super.key});

  void _openCreateAccountPage(BuildContext context) {
    Navigator.of(context).pushNamed('/create-account');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          FixedTitleText(text: 'Sign in'),
          Positioned(
            top: 200,
            left: 27,
            child: CampoFormulario(
              hintText: 'Password',
            ),
          ),
          Positioned(
            top: 280,
            left: 27,
            child: BotaoPadrao(
              text: 'Continue',
              onPressed: () => _openCreateAccountPage(context),
            ),
          ),
          Positioned(
            top: 345,
            left: 27,
            child: Text.rich(
              TextSpan(
                style: TextStyle(
                  color: Color(0xFF2D2D2D),
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
                children: [
                  TextSpan(text: 'Forgot Password ? '),
                  TextSpan(
                    text: 'Reset',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CreateAccountScreen extends StatelessWidget {
  const CreateAccountScreen({super.key});

  void _openForgotPasswordPage(BuildContext context) {
    Navigator.of(context).pushNamed('/forgot-password');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              top: 16,
              left: 24,
              child: BotaoVoltar(
                onPressed: () => Navigator.of(context).pop(),
              ),
            ),
            Positioned(
              top: 80,
              left: 24,
              right: 24,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Create Account',
                    style: TextStyle(
                      color: Color(0xFF2E2E2E),
                      fontSize: 28,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 28),
                  const CampoFormulario(hintText: 'Firstname', width: double.infinity),
                  const SizedBox(height: 12),
                  const CampoFormulario(hintText: 'Lastname', width: double.infinity),
                  const SizedBox(height: 12),
                  const CampoFormulario(hintText: 'Email Address', width: double.infinity),
                  const SizedBox(height: 12),
                  const CampoFormulario(hintText: 'Password', width: double.infinity),
                  const SizedBox(height: 24),
                  BotaoPadrao(
                    text: 'Continue',
                    width: double.infinity,
                    onPressed: () => _openForgotPasswordPage(context),
                  ),
                  const SizedBox(height: 24),
                  const Text.rich(
                    TextSpan(
                      style: TextStyle(
                        color: Color(0xFF2D2D2D),
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                      children: [
                        TextSpan(text: 'Forgot Password ? '),
                        TextSpan(
                          text: 'Reset',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  void _openResetSentPage(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute<void>(
        builder: (_) => const ResetSentScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              top: 16,
              left: 24,
              child: BotaoVoltar(
                onPressed: () => Navigator.of(context).pop(),
              ),
            ),
            Positioned(
              top: 80,
              left: 24,
              right: 24,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Forgot Password',
                    style: TextStyle(
                      color: Color(0xFF2E2E2E),
                      fontSize: 28,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 28),
                  const CampoFormulario(
                    hintText: 'Enter Email address',
                    width: double.infinity,
                  ),
                  const SizedBox(height: 24),
                  BotaoPadrao(
                    text: 'Continue',
                    width: double.infinity,
                    onPressed: () => _openResetSentPage(context),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ResetSentScreen extends StatelessWidget {
  const ResetSentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              top: 12,
              left: 24,
              child: Text(
                'Password Reset',
                style: TextStyle(
                  color: Color(0xFFC8C8C8),
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Positioned(
              top: 28,
              left: 24,
              right: 24,
              bottom: 0,
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(28)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/foto_pag5.png',
                      width: 180,
                      fit: BoxFit.contain,
                    ),
                    const SizedBox(height: 24),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 18),
                      child: Text(
                        'We Sent you an Email to reset your password.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF2E2E2E),
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          height: 1.2,
                        ),
                      ),
                    ),
                    const SizedBox(height: 18),
                    BotaoPadrao(
                      text: 'Return to Login',
                      width: 159,
                      height: 52,
                      onPressed: () => Navigator.of(context).popUntil((route) => route.isFirst),
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
