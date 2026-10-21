import 'package:flutter/material.dart';
import 'package:qavexcourtpieceelite/core/app_state.dart';
import 'package:qavexcourtpieceelite/core/themes.dart';
import 'package:qavexcourtpieceelite/core/sound.dart';
import 'package:qavexcourtpieceelite/screens/splash.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final appState = AppState();
  await appState.init();
  SoundService.I.enabled = appState.soundOn;
  if (appState.soundOn) {
    SoundService.I.startBgm();
  }
  runApp(AppScope(state: appState, child: const QxApp()));
}

class QxApp extends StatelessWidget {
  const QxApp({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBuilder(
      builder: (context, s) {
        final theme = QxThemes.byId(s.themeId, s.highContrast);
        return MaterialApp(
          title: 'Qavex Court Piece Elite',
          debugShowCheckedModeBanner: false,
          theme: theme.toTheme(),
          builder: (context, child) {
            final mq = MediaQuery.of(context);
            return MediaQuery(
              data: mq.copyWith(
                  textScaler: TextScaler.linear(s.textScale)),
              child: child!,
            );
          },
          home: const SplashScreen(),
        );
      },
    );
  }
}
