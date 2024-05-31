enum Complexity {//A complexibilidade refere-se ao nível de dificuldade para cultivar a planta.
  simples,
  moderado,
  dificil,
}

enum Affordability { // A Accessibilidade refere-se  ao valor da  semente no mercado
  acessivel,
  cara,
  exuberante,
}

class Seed {
  const Seed({
    required this.id,
    required this.categories,
    required this.title,
    required this.imageUrl,
    required this.properties,
    required this.benefits,
    required this.duration,
    required this.preco,
    required this.complexity,
    required this.affordability,
    required this.isOrganica,
    required this.isHeranca,
    required this.isCultivoSustentavel,
    required this.isPlantioDomestico,
  });

  final String id;
  final List<String> categories;
  final String title;
  final String imageUrl;
  final List<String> properties;
  final List<String> benefits;
  final int duration;
  final double preco;
  final Complexity complexity;
  final Affordability affordability;
  final bool isOrganica; //sementes cultivadas sem produtos químicos ou processos sintéticos.
  final bool isHeranca; //sementes que não foram geneticamente modificadas ou que têm um histórico natural e preservado.
  final bool isCultivoSustentavel; // Isso indicaria sementes cultivadas de maneira que respeite a fauna e o ecossistema.
  final bool isPlantioDomestico; //sementes ideais para jardinagem doméstica ou urbana.
}
