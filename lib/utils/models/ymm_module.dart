class YMMModule {
  String name;
  String imagePath;

  YMMModule({
    required this.name,
    required this.imagePath,
  });
}

final List<YMMModule> modules = [
  YMMModule(
    name: 'Neftdan yonilgʻi moylash materiallarini olish',
    imagePath: 'assets/images/neft.png',
  ),
  YMMModule(
    name: 'Yonilg‘ilar',
    imagePath: 'assets/images/yonilgi.jpeg',
  ),
  YMMModule(
    name: 'Mоylоvchi mаtеriаllаr',
    imagePath: 'assets/images/moy.jpeg',
  ),
  YMMModule(
    name: 'Motor moylari',
    imagePath: 'assets/images/motor.png',
  ),
  YMMModule(
    name: 'Transmission moylar',
    imagePath: 'assets/images/transmissiya.jpeg',
  ),
  YMMModule(
    name: 'Plastik-surkov moylari',
    imagePath: 'assets/images/plastik.png',
  ),
  YMMModule(
    name: 'Maxsus suyuqliklar',
    imagePath: 'assets/images/suyuqlik.jpeg',
  ),
];
