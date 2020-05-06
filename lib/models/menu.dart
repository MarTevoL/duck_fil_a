class Menu {
  final String name;
  final List<Meal> meals;

  Menu(this.name, this.meals);
}

class Meal {
  String name;
  String imagePath;
  int calories;
  int ratting;
  double price;
  List<Include> includes;

  Meal(this.name, this.imagePath, this.calories, this.ratting, this.price, this.includes);
}

class Include {
  String name;
  String imagePath;
  int calories;

  Include(this.name, this.imagePath, this.calories);
}

List<Include> includes = [
  Include('Tomato', 'assets/images/tomatoes_PDP_Desk.png', 5),
  Include('Lecture', 'assets/images/lettuce_PDP_Desk.png', 5),
  Include('Butter', 'assets/images/butter.png', 20),
  Include('Pickles', 'assets/images/pickles_2ct_PDP_Desk.png', 10),
];

List<Meal> breakfast = [
  Meal(
      'Egg White Grill',
      'assets/images/Stack620_0011_35592_eggWHTchk_p1_trg_42016_1240px.png',
      290,
      5,
      3.85, includes),
  Meal(
      'Sausage Egg Cheese Biscuit',
      'assets/images/Breakfast_Sausage-Egg-Cheese-Biscuit.png',
      630,
      5,
      3.09, includes),
  Meal(
      'Sausage Egg Cheese Biscuit',
      'assets/images/BaconEggCheeseMuffin-Feed_0001s_0008_CFA_1605_59_EnglishMuffin_BaconEggCheese_PROD_2121_1240px.png',
      630,
      5,
      3.09, includes),
];
List<Meal> entrees = [
  Meal(
      'Chick-fil-A® Chicken Sandwich',
      'assets/images/Jul19_CFASandwich_pdp.png',
      440,
      5,
      3.75, includes),
  Meal(
      'Grilled Chicken Club',
      'assets/images/grilledClub_colbyJack_PDP.png',
      460,
      5,
      6.55, includes),
  Meal(
      'Grilled Cool Wrap®',
      'assets/images/wrap_pdp.png',
      350,
      5,
      6.29, includes),
];
List<Meal> salads = [
  Meal(
      'Spicy Southwest Salad',
      'assets/images/sswSalad_spicyGrilled_pdp.png',
      450,
      5,
      8.19, includes),
  Meal(
      'Cobb Salad',
      'assets/images/cobbSalad_nug_pdp.png',
      540,
      5,
      7.99, includes),
  Meal(
      'Market Salad',
      'assets/images/marketSalad_grilled_pdp.png',
      250,
      5,
      8.19, includes),
];

List<Menu> tabMenu = [
  Menu(
    'Breakfast', breakfast
  ),
  Menu(
    'Entrees', entrees
  ),
  Menu(
    'Salads', salads
  ),
];
