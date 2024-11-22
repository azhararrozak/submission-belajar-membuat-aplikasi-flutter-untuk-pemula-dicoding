class FoodList {
  String name;
  String description;
  String price;
  String image;
  String bahan;
  String resep;

  FoodList({
    required this.name,
    required this.description,
    required this.price,
    required this.image,
    required this.bahan,
    required this.resep,
  });
}

var foodList = [
  FoodList(
    name: 'Rice Beef Special',
    description: 'Rice, Beef, Vegetables',
    price: 'Rp 25.000',
    image: 'images/ricebeef.jpg',
    bahan: "Bahan: 1. Nasi\n2. Daging sapi\n3. Sayuran",
    resep: "Resep: 1. Masak nasi\n2. Masak daging sapi\n3. Masak sayuran",
  ),
  FoodList(
    name: 'Salad',
    description: 'Vegetables, Fruits',
    price: 'Rp 20.000',
    image: 'images/salad.jpg',
    bahan: "Bahan: 1. Sayuran\n2. Buah",
    resep: "Resep: 1. Cuci sayuran\n2. Cuci buah",
  ),
  FoodList(
    name: 'Pasta',
    description: 'Pasta, Cheese, Vegetables',
    price: 'Rp 30.000',
    image: 'images/pasta.jpg',
    bahan: "Bahan: 1. Pasta\n2. Keju\n3. Sayuran",
    resep: "Resep: 1. Masak pasta\n2. Masak keju\n3. Masak sayuran",
  ),
  FoodList(
    name: 'Soup',
    description: 'Water, Vegetables, Meat',
    price: 'Rp 15.000',
    image: 'images/soup.jpg',
    bahan: "Bahan: 1. Air\n2. Sayuran\n3. Daging",
    resep: "Resep: 1. Masak air\n2. Masak sayuran\n3. Masak daging",
  ),
];

