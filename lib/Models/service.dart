class Service {
  String name;
  String image;
  String descriptions;
  String review;
  String score;
  List<Map<String, dynamic>> images = [];

  Service(this.name, this.image, this.descriptions, this.review, this.score,
      this.images);
  static List<Service> services() {
    return [
      Service(
        "Onglerie",
        "onglerie",
        "Le lorem ipsum est, en imprimerie, une suite de mots sans signification utilisée à titre provisoire pour calibrer une mise en page, le texte définitif venant remplacer le faux-texte dès qu'il est prêt ou que la mise en page est achevée. Généralement, on utilise un texte en faux latin, le Lorem ipsum ou Lipsum.",
        "32",
        "4.8",
        [
          {"noms": "Vernis gel simple", "prix": "2500", "image": "gelsimple"},
          {"noms": "Vernis gel design", "prix": "3000", "image": "gelsimple"},
          {"noms": "Résine Simple", "prix": "5000", "image": "resinesimple"},
          {"noms": "Résine Design", "prix": "7500", "image": "resinedesign"},
          {"noms": " gel simple", "prix": "5000", "image": "gelsimple"},
          {"noms": "gel design", "prix": "7500", "image": "geldesign"},
        ],
      ),
      Service(
        "makeup",
        "makeup",
        "Le lorem ipsum est, en imprimerie, une suite de mots sans signification utilisée à titre provisoire pour calibrer une mise en page, le texte définitif venant remplacer le faux-texte dès qu'il est prêt ou que la mise en page est achevée. Généralement, on utilise un texte en faux latin, le Lorem ipsum ou Lipsum.",
        "32",
        "4.8",
        [
          {"noms": "Nude", "prix": "2500", "image": "nude"},
          {"noms": "Soirée", "prix": "10000", "image": "soiree"},
          {"noms": "Journée", "prix": "5000", "image": "journee"}
        ],
      ),
      Service(
        "pedicure",
        "pedicure",
        "Le lorem ipsum est, en imprimerie, une suite de mots sans signification utilisée à titre provisoire pour calibrer une mise en page, le texte définitif venant remplacer le faux-texte dès qu'il est prêt ou que la mise en page est achevée. Généralement, on utilise un texte en faux latin, le Lorem ipsum ou Lipsum.",
        "32",
        "4.8",
        [],
      ),
      Service(
        "manucure",
        "manucure",
        "Le lorem ipsum est, en imprimerie, une suite de mots sans signification utilisée à titre provisoire pour calibrer une mise en page, le texte définitif venant remplacer le faux-texte dès qu'il est prêt ou que la mise en page est achevée. Généralement, on utilise un texte en faux latin, le Lorem ipsum ou Lipsum.",
        "32",
        "4.8",
        [],
      ),
    ];
  }
}
