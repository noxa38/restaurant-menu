/// Modèle représentant un plat du restaurant
class Dish {
  final String id;
  final String name;
  final String description;
  final double priceHT;
  final String imageUrl;
  final String category;

  const Dish({
    required this.id,
    required this.name,
    required this.description,
    required this.priceHT,
    required this.imageUrl,
    required this.category,
  });

  /// Calcule le prix TTC avec la TVA obligatoire de 5,8%
  double get priceTTC => priceHT * (1 + 0.058);
}

/// Liste des catégories du restaurant demandées dans le TP
const List<String> restaurantCategories = [
  'Formules',
  'Entrées',
  'Plats',
  'Desserts',
  'Boissons',
  'T-shirts',
];

/// Données en dur (Mock data) pour chaque catégorie du restaurant
final List<Dish> sampleDishes = [
  // --- Formules ---
  Dish(
    id: 'f1',
    name: 'Formule Express',
    description: 'Entrée + Plat du jour ou Plat + Dessert, café inclus.',
    priceHT: 15.00,
    imageUrl: 'https://images.unsplash.com/photo-1543353071-10c8ba85a904?auto=format&fit=crop&w=500&q=80',
    category: 'Formules',
  ),
  Dish(
    id: 'f2',
    name: 'Formule Gourmande',
    description: 'Entrée + Plat + Dessert au choix avec boisson.',
    priceHT: 24.50,
    imageUrl: 'https://images.unsplash.com/photo-1555396273-367ea4eb4db5?auto=format&fit=crop&w=500&q=80',
    category: 'Formules',
  ),

  // --- Entrées ---
  Dish(
    id: 'e1',
    name: 'Velouté de Potiron',
    description: 'Velouté onctueux aux châtaignes et croûtons dorés.',
    priceHT: 7.50,
    imageUrl: 'https://images.unsplash.com/photo-1547592166-23ac45744acd?auto=format&fit=crop&w=500&q=80',
    category: 'Entrées',
  ),
  Dish(
    id: 'e2',
    name: 'Salade César Croustillante',
    description: 'Poulet grillé, laitue romaine, parmesan et sauce césar maison.',
    priceHT: 9.00,
    imageUrl: 'https://images.unsplash.com/photo-1550304943-4f24f54ddde9?auto=format&fit=crop&w=500&q=80',
    category: 'Entrées',
  ),
  Dish(
    id: 'e3',
    name: 'Carpaccio de Bœuf',
    description: 'Fines tranches de bœuf, huile d’olive, câpres et copeaux de parmesan.',
    priceHT: 10.50,
    imageUrl: 'https://images.unsplash.com/photo-1515669097368-22e68427d265?auto=format&fit=crop&w=500&q=80',
    category: 'Entrées',
  ),

  // --- Plats ---
  Dish(
    id: 'p1',
    name: 'Entrecôte Grillée & Frites',
    description: 'Viande bovine tendre servie avec frites maison et sauce au poivre.',
    priceHT: 19.80,
    imageUrl: 'https://images.unsplash.com/photo-1558030006-450675393462?auto=format&fit=crop&w=500&q=80',
    category: 'Plats',
  ),
  Dish(
    id: 'p2',
    name: 'Pavé de Saumon Rôti',
    description: 'Saumon frais cuit à l’unilatéral, écrasé de pomme de terre et fondue de poireaux.',
    priceHT: 18.50,
    imageUrl: 'https://images.unsplash.com/photo-1467003909585-2f8a72700288?auto=format&fit=crop&w=500&q=80',
    category: 'Plats',
  ),
  Dish(
    id: 'p3',
    name: 'Burger Artisanal Le Gourmet',
    description: 'Bœuf charolais, cheddar affogé, bacon croustillant, oignons confits.',
    priceHT: 16.00,
    imageUrl: 'https://images.unsplash.com/photo-1568901346375-23c9450c58cd?auto=format&fit=crop&w=500&q=80',
    category: 'Plats',
  ),

  // --- Desserts ---
  Dish(
    id: 'd1',
    name: 'Moelleux au Chocolat',
    description: 'Cœur coulant au chocolat noir et sa boule de glace vanille.',
    priceHT: 7.00,
    imageUrl: 'https://images.unsplash.com/photo-1606313564200-e75d5e30476c?auto=format&fit=crop&w=500&q=80',
    category: 'Desserts',
  ),
  Dish(
    id: 'd2',
    name: 'Tarte Citron Meringuée',
    description: 'Pâte sablée croustillante, crème citron acidulée et meringue légère.',
    priceHT: 6.50,
    imageUrl: 'https://images.unsplash.com/photo-1519915028121-7d3463d20b13?auto=format&fit=crop&w=500&q=80',
    category: 'Desserts',
  ),
  Dish(
    id: 'd3',
    name: 'Tiramisu Traditionnel',
    description: 'Biscuits cuillère imbibés de café, mascarpone onctueux et cacao.',
    priceHT: 7.50,
    imageUrl: 'https://images.unsplash.com/photo-1571877227200-a0d98ea607e9?auto=format&fit=crop&w=500&q=80',
    category: 'Desserts',
  ),

  // --- Boissons ---
  Dish(
    id: 'b1',
    name: 'Limonade Artisanale Bio',
    description: 'Bouteille 33cl, fraîche et pétillante aux citrons siciliens.',
    priceHT: 4.00,
    imageUrl: 'https://images.unsplash.com/photo-1513558161293-cdaf765ed2fd?auto=format&fit=crop&w=500&q=80',
    category: 'Boissons',
  ),
  Dish(
    id: 'b2',
    name: 'Jus de Fruits frais',
    description: 'Orange, pomme ou multivitaminé pressé minute.',
    priceHT: 4.50,
    imageUrl: 'https://images.unsplash.com/photo-1621506289937-a8e4df240d0b?auto=format&fit=crop&w=500&q=80',
    category: 'Boissons',
  ),
  Dish(
    id: 'b3',
    name: 'Vin Rouge AOC (Verre 12cl)',
    description: 'Sélection du sommelier, notes boisées et fruitées.',
    priceHT: 5.50,
    imageUrl: 'https://images.unsplash.com/photo-1510812431401-41d2bd2722f3?auto=format&fit=crop&w=500&q=80',
    category: 'Boissons',
  ),

  // --- T-shirts ---
  Dish(
    id: 't1',
    name: 'T-shirt "Le Gourmet" Noir',
    description: '100% Coton bio, coupe unisexe, logo brodé sur la poitrine.',
    priceHT: 20.00,
    imageUrl: 'https://images.unsplash.com/photo-1521572267360-ee0c2909d518?auto=format&fit=crop&w=500&q=80',
    category: 'T-shirts',
  ),
  Dish(
    id: 't2',
    name: 'T-shirt "Chef Cuisinier" Blanc',
    description: 'Édition collector limitée, coton premium confortable.',
    priceHT: 22.00,
    imageUrl: 'https://images.unsplash.com/photo-1583743814966-8936f5b7be1a?auto=format&fit=crop&w=500&q=80',
    category: 'T-shirts',
  ),
];
