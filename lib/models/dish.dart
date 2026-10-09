class Dish {
  final String name;
  final String imageUrl;
  final double priceHT;
  final String description;
  final String category;

  const Dish({
    required this.name,
    required this.imageUrl,
    required this.priceHT,
    required this.description,
    required this.category,
  });

  double get priceTTC => priceHT * 1.058;
}

const List<String> categories = [
  'Formules',
  'Entrées',
  'Plats',
  'Desserts',
  'Boissons',
  'T-shirts',
];

const List<Dish> dishes = [
  Dish(
    name: 'Menu Express',
    imageUrl: 'https://images.unsplash.com/photo-1543353071-10c8ba85a904?auto=format&fit=crop&w=500&q=80',
    priceHT: 15.0,
    description: 'Entree + Plat ou Plat + Dessert',
    category: 'Formules',
  ),
  Dish(
    name: 'Menu Gourmet',
    imageUrl: 'https://images.unsplash.com/photo-1555396273-367ea4eb4db5?auto=format&fit=crop&w=500&q=80',
    priceHT: 25.0,
    description: 'Entree + Plat + Dessert',
    category: 'Formules',
  ),
  Dish(
    name: 'Salade Caesar',
    imageUrl: 'https://images.unsplash.com/photo-1550304943-4f24f54ddde9?auto=format&fit=crop&w=500&q=80',
    priceHT: 8.5,
    description: 'Laitue, poulet, parmesan, sauce caesar',
    category: 'Entrées',
  ),
  Dish(
    name: 'Soupe à l oignon',
    imageUrl: 'https://images.unsplash.com/photo-1547592166-23ac45744acd?auto=format&fit=crop&w=500&q=80',
    priceHT: 7.0,
    description: 'Oignons caramélisés et croûtons au gratin',
    category: 'Entrées',
  ),
  Dish(
    name: 'Entrecôte Frites',
    imageUrl: 'https://images.unsplash.com/photo-1558030006-450675393462?auto=format&fit=crop&w=500&q=80',
    priceHT: 18.0,
    description: 'Viande tendre avec frites maison',
    category: 'Plats',
  ),
  Dish(
    name: 'Saumon Grillé',
    imageUrl: 'https://images.unsplash.com/photo-1467003909585-2f8a72700288?auto=format&fit=crop&w=500&q=80',
    priceHT: 16.5,
    description: 'Pavé de saumon et légumes de saison',
    category: 'Plats',
  ),
  Dish(
    name: 'Tiramisu',
    imageUrl: 'https://images.unsplash.com/photo-1571877227200-a0d98ea607e9?auto=format&fit=crop&w=500&q=80',
    priceHT: 6.5,
    description: 'Biscuit, café et mascarpone',
    category: 'Desserts',
  ),
  Dish(
    name: 'Fondant Chocolat',
    imageUrl: 'https://images.unsplash.com/photo-1606313564200-e75d5e30476c?auto=format&fit=crop&w=500&q=80',
    priceHT: 7.0,
    description: 'Cœur coulant chocolat',
    category: 'Desserts',
  ),
  Dish(
    name: 'Coca-Cola',
    imageUrl: 'https://images.unsplash.com/photo-1513558161293-cdaf765ed2fd?auto=format&fit=crop&w=500&q=80',
    priceHT: 3.5,
    description: 'Bouteille 33cl',
    category: 'Boissons',
  ),
  Dish(
    name: 'Jus d Orange',
    imageUrl: 'https://images.unsplash.com/photo-1621506289937-a8e4df240d0b?auto=format&fit=crop&w=500&q=80',
    priceHT: 4.0,
    description: 'Pressé minute',
    category: 'Boissons',
  ),
  Dish(
    name: 'T-shirt Noir',
    imageUrl: 'https://images.unsplash.com/photo-1521572267360-ee0c2909d518?auto=format&fit=crop&w=500&q=80',
    priceHT: 20.0,
    description: '100% coton, logo brodé',
    category: 'T-shirts',
  ),
];
