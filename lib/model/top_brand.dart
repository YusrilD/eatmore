import 'package:eatmore/source/app_image.dart';

class TopBrand{
  final String id;
  final String name;
  final String image;

  TopBrand({
    this.id = "",
    this.name = "",
    this.image = "",
  });
}

List<dynamic> listTopBrand = [
  TopBrand(id: "1", name: "Mc Donalds", image: AppImage.mcd),
  TopBrand(id: "2", name: "Burger King", image: AppImage.bk),
  TopBrand(id: "3", name: "Subway", image: AppImage.sw),
  TopBrand(id: "4", name: "KFC", image: AppImage.kfc),
  TopBrand(id: "5", name: "Starbucks", image: AppImage.sb),
  TopBrand(id: "6", name: "Solaria", image: AppImage.solaria),
  TopBrand(id: "7", name: "Janji Jiwa", image: AppImage.jj),
  TopBrand(id: "8", name: "Wendys", image: AppImage.wendys),
];