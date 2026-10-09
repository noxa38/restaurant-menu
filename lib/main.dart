import 'package:flutter/material.dart';
import 'models/dish.dart';

void main() {
  runApp(const RestaurantApp());
}

/// Point d'entrée principal de l'application
class RestaurantApp extends StatelessWidget {
  const RestaurantApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Menu du Restaurant',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        useMaterial3: true,
      ),
      home: const MenuHomeScreen(),
    );
  }
}

/// Écran principal affichant le menu du restaurant avec catégories et plats
class MenuHomeScreen extends StatefulWidget {
  const MenuHomeScreen({super.key});

  @override
  State<MenuHomeScreen> createState() => _MenuHomeScreenState();
}

class _MenuHomeScreenState extends State<MenuHomeScreen> {
  // Catégorie actuellement sélectionnée (par défaut la première : 'Formules')
  String _selectedCategory = restaurantCategories.first;

  @override
  Widget build(BuildContext context) {
    // Filtrer les plats selon la catégorie sélectionnée
    final filteredDishes = sampleDishes
        .where((dish) => dish.category == _selectedCategory)
        .toList();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Menu du Restaurant Le Gourmet'),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // ==========================================
          // 1. BARRE DE CATÉGORIES DÉFILABLE HORIZONTALEMENT
          // ==========================================
          Container(
            padding: const EdgeInsets.symmetric(vertical: 12.0),
            color: Colors.grey[100],
            child: SizedBox(
              height: 50,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                itemCount: restaurantCategories.length,
                itemBuilder: (context, index) {
                  final category = restaurantCategories[index];
                  final isSelected = category == _selectedCategory;
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4.0),
                    child: ChoiceChip(
                      label: Text(
                        category,
                        style: TextStyle(
                          color: isSelected ? Colors.white : Colors.black87,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      selected: isSelected,
                      selectedColor: Theme.of(context).colorScheme.primary,
                      backgroundColor: Colors.white,
                      onSelected: (selected) {
                        setState(() {
                          _selectedCategory = category;
                        });
                      },
                    ),
                  );
                },
              ),
            ),
          ),

          // En-tête de section dynamique
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Catégorie : $_selectedCategory',
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          // ==========================================
          // 2. LISTE VERTICALE DES PLATS DE LA CATÉGORIE
          // ==========================================
          Expanded(
            child: filteredDishes.isEmpty
                ? const Center(
                    child: Text('Aucun plat disponible dans cette catégorie.'),
                  )
                : ListView.builder(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    itemCount: filteredDishes.length,
                    itemBuilder: (context, index) {
                      return DishCard(dish: filteredDishes[index]);
                    },
                  ),
          ),
        ],
      ),
    );
  }
}

/// Composant visuel réutilisable pour afficher un plat sous forme de carte (Card)
class DishCard extends StatelessWidget {
  final Dish dish;

  const DishCard({super.key, required this.dish});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      margin: const EdgeInsets.only(bottom: 16.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      clipBehavior: Clip.antiAlias,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Image illustrative du plat (responsive avec hauteur fixe)
          SizedBox(
            height: 160,
            width: double.infinity,
            child: Image.network(
              dish.imageUrl,
              fit: BoxFit.cover,
              // Gestion du chargement et des erreurs d'image
              loadingBuilder: (context, child, loadingProgress) {
                if (loadingProgress == null) return child;
                return Container(
                  color: Colors.grey[200],
                  child: const Center(
                    child: CircularProgressIndicator(),
                  ),
                );
              },
              errorBuilder: (context, error, stackTrace) {
                return Container(
                  color: Colors.grey[300],
                  child: const Icon(Icons.broken_image, size: 50, color: Colors.grey),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Nom du plat et Prix (Row)
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        dish.name,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    // Affichage des prix HT et TTC (TVA 5,8% obligatoire)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          '${dish.priceTTC.toStringAsFixed(2)} € TTC',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                        ),
                        Text(
                          '(${dish.priceHT.toStringAsFixed(2)} € HT)',
                          style: TextStyle(
                            fontSize: 11,
                            color: Colors.grey[600],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 6),
                // Mention obligatoire de la TVA 5.8%
                const Text(
                  'TVA incluse : 5,8%',
                  style: TextStyle(
                    fontSize: 11,
                    fontStyle: FontStyle.italic,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 8),
                // Courte description (1 ou 2 lignes)
                Text(
                  dish.description,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey[700],
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
