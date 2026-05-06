class Planta {
  final String nombreComun;
  final String nombreCientifico;
  final String imagen;
  final String caracteristicas;
  final String propiedades;
  final String tipoReproduccion;
  final String comoSeReproduce;

  Planta({
    required this.nombreComun,
    required this.nombreCientifico,
    required this.imagen,
    required this.caracteristicas,
    required this.propiedades,
    required this.tipoReproduccion,
    required this.comoSeReproduce,
  });
}

List<Planta> misPlantas = [
  Planta(
    nombreComun: "Eucalipto",
    nombreCientifico: "Eucalyptus",
    imagen: "assets/eucalipto.jpeg",
    caracteristicas: "• Árbol alto de rápido crecimiento\n• Hojas alargadas con aroma fuerte\n• Rico en aceites esenciales",
    propiedades: "• Antiséptico y antibacterial\n• Descongestionante (ayuda en gripe y tos)\n• Antiinflamatorio",
    tipoReproduccion: "Sexual",
    comoSeReproduce: "Por semillas que se forman en sus flores.",
  ),
  Planta(
    nombreComun: "Lirio",
    nombreCientifico: "Lilium",
    imagen: "assets/lirio.jpeg",
    caracteristicas: "• Flor grande y vistosa\n• Puede ser de varios colores\n• Muy usada como planta ornamental",
    propiedades: "• Calmante\n• Relajante\n• Hidratante en algunos usos",
    tipoReproduccion: "Sexual y asexual",
    comoSeReproduce: "Sexual: por semillas. Asexual: por bulbos.",
  ),
  Planta(
    nombreComun: "Hierbabuena",
    nombreCientifico: "Mentha spicata",
    imagen: "assets/hierbabuena.jpeg",
    caracteristicas: "• Hojas pequeñas y muy aromáticas\n• Crece rápido y es fácil de cuidar\n• Olor fresco característico",
    propiedades: "• Digestiva\n• Antiespasmódica (para cólicos)\n• Refrescante",
    tipoReproduccion: "Principalmente asexual",
    comoSeReproduce: "Por estolones (tallos que se extienden y generan nuevas plantas).",
  ),
  Planta(
    nombreComun: "Gardenia",
    nombreCientifico: "Gardenia jasminoides",
    imagen: "assets/gardenia.jpeg",
    caracteristicas: "• Flor blanca muy perfumada\n• Planta ornamental\n• Requiere cuidados específicos",
    propiedades: "• Relajante\n• Antiinflamatoria leve\n• Usada en aromaterapia",
    tipoReproduccion: "Sexual y asexual",
    comoSeReproduce: "Sexual: por semillas. Asexual: por esquejes.",
  ),
  Planta(
    nombreComun: "Ruda",
    nombreCientifico: "Ruta graveolens",
    imagen: "assets/ruda.jpeg",
    caracteristicas: "• Hojas pequeñas verde-azuladas\n• Olor fuerte\n• Planta resistente",
    propiedades: "• Antiinflamatoria\n• Antiespasmódica\n• Uso tradicional medicinal",
    tipoReproduccion: "Sexual y asexual",
    comoSeReproduce: "Sexual: por semillas. Asexual: por esquejes.",
  ),
];