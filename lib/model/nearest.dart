import 'package:eatmore/source/app_image.dart';

class Nearest {
  final String id;
  final String distance;
  final String isPromoted;
  final String discount;
  final String time;
  final String rating;
  final String resto;
  final String category;
  final String avgPrice;
  final String image;

  Nearest({
    this.id = "",
    this.distance = "",
    this.isPromoted = "",
    this.discount = "",
    this.time = "",
    this.rating = "",
    this.resto = "",
    this.category = "",
    this.avgPrice = "",
    this.image = "",
  });
}

List<dynamic> listNearest = [
  Nearest(
    id: "1",
    distance: "6",
    isPromoted: "0",
    discount: "20",
    time: "12",
    rating: "4",
    resto: "Bakso Pak Man",
    category: "Berkuah",
    avgPrice: "14.000",
    image: AppImage.wrBakso,
  ),
  Nearest(
    id: "2",
    distance: "6",
    isPromoted: "0",
    discount: "20",
    time: "12",
    rating: "4",
    resto: "Mie Ayam",
    category: "Khas Jawa",
    avgPrice: "14.000",
    image: AppImage.wrMie,
  ),
  Nearest(
    id: "3",
    distance: "6",
    isPromoted: "0",
    discount: "20",
    time: "12",
    rating: "4",
    resto: "Sop Ayam Pak Min",
    category: "Berkuah",
    avgPrice: "14.000",
    image: AppImage.wrPakmin,
  ),
  Nearest(
    id: "4",
    distance: "6",
    isPromoted: "0",
    discount: "20",
    time: "12",
    rating: "4",
    resto: "Pempek Aseli Ikan",
    category: "Khas Palembang",
    avgPrice: "14.000",
    image: AppImage.wrPempek,
  ),
  Nearest(
    id: "5",
    distance: "6",
    isPromoted: "0",
    discount: "20",
    time: "12",
    rating: "4",
    resto: "Rawon Setan",
    category: "Khas Jawa",
    avgPrice: "14.000",
    image: AppImage.wrRawon,
  ),
  Nearest(
    id: "6",
    distance: "6",
    isPromoted: "0",
    discount: "20",
    time: "12",
    rating: "4",
    resto: "Sego Kuning Bu Nunik",
    category: "Khas Jawa",
    avgPrice: "14.000",
    image: AppImage.wrSegoKuning,
  ),
  Nearest(
    id: "7",
    distance: "6",
    isPromoted: "0",
    discount: "20",
    time: "12",
    rating: "4",
    resto: "Soto Lamongan Babon",
    category: "Khas Jawa",
    avgPrice: "14.000",
    image: AppImage.wrSoto,
  ),
  Nearest(
    id: "6",
    distance: "6",
    isPromoted: "0",
    discount: "20",
    time: "12",
    rating: "4",
    resto: "Tahu Telor Betek",
    category: "Khas Jawa",
    avgPrice: "14.000",
    image: AppImage.wrTahuTelor,
  ),
];
