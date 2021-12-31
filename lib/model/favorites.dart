import 'package:eatmore/source/app_image.dart';

class Favorites {
  final String id;
  final String name;
  final String image;

  Favorites({
    this.id = "",
    this.name = "",
    this.image = "",
  });
}

List<dynamic> listFavorites = [
  Favorites(id: "1", name: "Empal Gentong", image: AppImage.eg),
  Favorites(id: "2", name: "Ayam Geprek", image: AppImage.geprek),
  Favorites(id: "3", name: "Lodeh", image: AppImage.lodeh),
  Favorites(id: "4", name: "Nasi Goreng", image: AppImage.nasgor),
  Favorites(id: "5", name: "Bakpia", image: AppImage.pia),
  Favorites(id: "6", name: "Pempek", image: AppImage.pp),
  Favorites(id: "7", name: "Soto", image: AppImage.soto),
  Favorites(id: "8", name: "Tahu Campur", image: AppImage.tc),
];
