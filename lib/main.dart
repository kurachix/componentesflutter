import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:device_preview/device_preview.dart';

import 'widgets/texto_superior.dart';
import 'widgets/campo_formulario.dart';
import 'widgets/botao_padrao.dart';
import 'widgets/texto_com_span.dart';
import 'widgets/botao_login.dart';

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
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
              onPressed: () {},
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
            top: 380,
            left: 27,
            child: BotaoLogin(
              texto: 'Continue With Apple',
              icone: Icon(
                Icons.apple,
                size: 24,
                color: Colors.black,
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}