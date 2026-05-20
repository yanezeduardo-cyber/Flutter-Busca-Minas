import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import 'game_screen.dart';
import 'settings_screen.dart';
import 'high_score_screen.dart';
import 'instructions_screen.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.blue, Colors.purple]
          )
        ),
        child: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Spacer(),
                FadeInUp(child: Text("BUSCAMINAS", style: Theme.of(context).textTheme.displayMedium?.copyWith(color: Colors.white, fontWeight: FontWeight.bold))),
                const SizedBox(height: 50),
                FadeInUp(delay: const Duration(milliseconds: 200), child: _MenuButton(text: "JUGAR", icon: Icons.play_arrow, onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const GameScreen())))),
                FadeInUp(delay: const Duration(milliseconds: 400), child: _MenuButton(text: "MARCADORES", icon: Icons.emoji_events, onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const HighScoreScreen())))),
                FadeInUp(delay: const Duration(milliseconds: 600), child: _MenuButton(text: "CONFIGURACION", icon: Icons.settings, onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const SettingsScreen())))),
                FadeInUp(delay: const Duration(milliseconds: 800), child: _MenuButton(text: "COMO JUGAR", icon: Icons.help, onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const InstructionsScreen())))),
                const Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _MenuButton extends StatelessWidget {
  final String text;
  final IconData icon;
  final VoidCallback onTap;

  const _MenuButton({required this.text, required this.icon, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: SizedBox(
        width: 220,
        height: 55,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white.withOpacity(0.9),
            foregroundColor: Colors.blue.shade700,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            elevation: 5,
          ),
          onPressed: onTap,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, size: 28),
              const SizedBox(width: 10),
              Text(text, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            ],
          ),
        ),
      ),
    );
  }
}

