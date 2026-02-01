import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Too Pressing UI',
      theme: ThemeData(
        fontFamily: 'Roboto',
        useMaterial3: true,
      ),
      home: const WelcomePage(),
    );
  }
}

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Définition des couleurs
    final Color lightBlueColor = const Color(0xFF5B9DF8); // Bleu clair
    final Color darkBlueColor = const Color(0xFF102E4A);  // Bleu foncé
    final Color greyButtonColor = const Color(0xFFF0F0F5); // Gris clair boutons
    
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // 1. Espace du haut
              const Spacer(flex: 1),
              
              // 2. IMAGE (Corrigée)
              // Assurez-vous que 'assets/img.jpeg' est bien déclaré dans pubspec.yaml
              // J'ai réduit la hauteur à 200 pour que tout rentre dans l'écran
              Image.asset(
                'assets/img.jpeg', 
                height: 200, 
                // Si l'image ne charge pas encore, ceci affichera une erreur propre
                errorBuilder: (context, error, stackTrace) {
                  return const Icon(Icons.image_not_supported, size: 100, color: Colors.grey);
                },
              ),

              const SizedBox(height: 40),

              // 3. Titre et Sous-titre
              const Text(
                "TOO PRESSING",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF616161),
                  letterSpacing: 0.5,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                "Le temple de la propreté",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[400],
                  fontWeight: FontWeight.w400,
                ),
              ),

              const Spacer(flex: 1),

              // 4. Bouton "Démarrer"
              SizedBox(
                width: double.infinity,
                height: 55,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: lightBlueColor,
                    foregroundColor: Colors.white,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: const Text(
                    "Démarrer",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                ),
              ),

              const SizedBox(height: 16),

              // 5. Bouton "Connexion"
              SizedBox(
                width: double.infinity,
                height: 55,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: darkBlueColor,
                    foregroundColor: Colors.white,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: const Text(
                    "Connexion",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                ),
              ),

              const SizedBox(height: 16),

              // 6. Rangée des boutons "Prix" et "Coordonnéeskkkjkjkjkjk"
              Row(
                children: [
                  // Bouton Prix
                  Expanded(
                    child: SizedBox(
                      height: 55,
                      child: ElevatedButton.icon(
                        onPressed: () {},
                        icon: const Icon(Icons.attach_money, color: Colors.grey, size: 20),
                        label: const Text("Prix", style: TextStyle(color: Colors.grey, fontSize: 16)),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: greyButtonColor,
                          elevation: 0,
                          alignment: Alignment.center,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                  // Bouton Coordonnées
                  Expanded(
                    child: SizedBox(
                      height: 55,
                      child: ElevatedButton.icon(
                        onPressed: () {},
                        icon: const Icon(Icons.info_outline, color: Colors.grey, size: 20),
                        label: const Text("A propos", style: TextStyle(color: Colors.grey, fontSize: 16)),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: greyButtonColor,
                          elevation: 0,
                          alignment: Alignment.center,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              const Spacer(flex: 2),

              // 7. Texte du bas
              TextButton(
                onPressed: () {},
                child: Text(
                  "Choisir un autre magasin",
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}