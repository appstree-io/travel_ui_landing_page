class Catergory {
  const Catergory({
    required this.title,
    required this.image,
    this.middleText = '',
  });

  final String title;
  final String image;
  final String middleText;
}
