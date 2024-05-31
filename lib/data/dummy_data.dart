import 'package:flutter/material.dart';

import 'package:meals/models/category.dart';
import 'package:meals/models/seed.dart';


// Constants in Dart should be written in lowerCamelcase.
const availableCategories = [
  Category(
    id: 'c1',
    title: 'Agricultura e Comercio',
    color: Colors.purple,
  ),
  Category(
    id: 'c2',
    title: 'Rápido & Fácil',
    color: Colors.red,
  ),
  Category(
    id: 'c3',
    title: 'recalcitrantes',
    color: Colors.orange,
  ),
  Category(
    id: 'c4',
    title: 'perenes',
    color: Colors.amber,
  ),
  Category(
    id: 'c5',
    title: 'ortodoxas',
    color: Colors.blue,
  ),
  Category(
    id: 'c6',
    title: 'Exoticas',
    color: Colors.green,
  ),
  Category(
    id: 'c7',
    title: 'Consumo',
    color: Colors.lightBlue,
  ),
  Category(
    id: 'c8',
    title: 'Compostas',
    color: Colors.lightGreen,
  ),
  Category(
    id: 'c9',
    title: 'Jardinagem',
    color: Colors.pink,
  ),
  Category(
    id: 'c10',
    title: 'convencionais',
    color: Colors.teal,
  ),
  Category(
    id: 'c11',
    title: 'Ferramentas',
    color: Colors.redAccent,
  ),
];

const dummyMeals = [
  Seed(
    id: 'm1',
    categories: [
      'c1',
      'c2',
    ],
    title: 'Semente de Trigo',
    affordability: Affordability.acessivel,
    complexity: Complexity.simples,
    imageUrl:
        'https://cdn.pixabay.com/photo/2016/07/20/12/44/wheat-1530321_1280.jpg',
    duration: 20,
    properties: [
      '1. Carboidratos: Principal fonte de energia do corpo, fornecendo glicose para o cérebro, músculos e outros órgãos.',
      '2. Proteínas: Essenciais para o crescimento, reparo e manutenção dos tecidos corporais.',
      '3. Fibras: Auxiliam na digestão, regulam o intestino, promovem a saciedade e controlam os níveis de colesterol.',
      '4. Vitaminas: Rica em vitaminas do complexo B, importantes para o metabolismo energético, função nervosa e saúde da pele.',
      '5. Minerais: Fonte de ferro, zinco, magnésio, fósforo e outros minerais essenciais para diversas funções do corpo.',

    ],
    benefits: [
      'Fonte de energia: Fornece energia duradoura para o corpo, auxiliando na performance física e mental.',
      'Promove a saúde digestiva: As fibras regulam o intestino, previnem a constipação e contribuem para a saúde da microbiota intestinal.',
      'Controla o colesterol: As fibras solúveis diminuem a absorção do colesterol LDL ("mau"), reduzindo o risco de doenças cardiovasculares.',
      'Auxilia no controle do peso: A fibra promove a saciedade, ajudando no controle do apetite e na perda de peso.',
      'Fortalece o sistema imunológico: As vitaminas e minerais presentes no trigo contribuem para o bom funcionamento do sistema imunológico.',
      'Faz bem para a pele: As vitaminas do complexo B e o zinco são importantes para a saúde da pele, cabelos e unhas.',
      'Previne doenças crônicas: O consumo regular de grãos integrais, como o trigo, pode reduzir o risco de doenças crônicas como diabetes tipo 2, doenças cardíacas e alguns tipos de câncer.'
    ],
    preco: 100,
    isOrganica: false,
    isCultivoSustentavel: true,
    isPlantioDomestico: true,
    isHeranca: true,
  ),
  Seed(
    id: 'm2',
    categories: [
      'c2',
    ],
    title: 'Semente de Cafe',
    affordability: Affordability.acessivel,
    complexity: Complexity.simples,
    imageUrl:
        'https://cdn.pixabay.com/photo/2021/07/13/18/58/coffee-6464307_1280.jpg',
    duration: 10,
    properties: [
      '1. Rica em Antioxidantes:',
      '2. Fonte de Cafeína:',
      '3. Rica em Ácido Clorogênico:',
      '4. Fonte de Minerais:',
      '5. Propriedades Anti-inflamatórias:'
    ],
    benefits: [
      'O café pode ser eficaz no tratamento de algumas infecções e pode ajudar a prevenir outras. \n',
      'O ácido clorogênico e outros compostos presentes nas sementes de café podem proteger o fígado contra danos causados por toxinas e doenças como cirrose hepática. \n',
      'Redução do risco de doenças crônicas: A inflamação crônica é um fator de risco para doenças como doenças cardíacas, diabetes, câncer e doenças neurodegenerativas.'
    ],
   preco: 110,
    isOrganica: false,
    isCultivoSustentavel: false,
    isPlantioDomestico: false,
    isHeranca: false,
  ),
  Seed(
    id: 'm3',
    categories: [
      'c2',
      'c3',
    ],
    title: 'Semente Abacate',
    affordability: Affordability.cara,
    complexity: Complexity.simples,
    imageUrl:
        'https://cdn.pixabay.com/photo/2017/03/04/12/10/avocado-2115922_1280.jpg',
    duration: 45,
    properties: [
      '1.Fibras: Rica em fibras solúveis e insolúveis, que auxiliam na digestão, regulam o intestino, promovem a saciedade e controlam os níveis de colesterol. \n',
      '2.Gorduras saudáveis: Fonte de gorduras monoinsaturadas e poliinsaturadas, consideradas "gorduras boas". Essas gorduras contribuem para a redução do colesterol LDL ("mau") e aumentam o colesterol HDL ("bom"), prevenindo doenças cardiovasculares. \n',
      '3.Antioxidantes: Rica em flavonoides, ácido gálico e outros compostos antioxidantes que combatem os radicais livres, prevenindo o envelhecimento precoce das células e reduzindo o risco de doenças crônicas. \n',
      '4.Vitaminas e minerais: Fonte de vitaminas E, B6, magnésio, potássio, zinco e cobre, nutrientes essenciais para diversas funções do corpo, como a saúde da pele e dos cabelos, o sistema imunológico e a produção de energia. \n',

    ],
    benefits: [
      'Ajuda na perda de peso: A fibra e a proteína da semente de abacate promovem a sensação de saciedade, o que pode auxiliar no controle do apetite e na perda de peso.',
      'Regula o açúcar no sangue: As fibras da semente de abacate ajudam a regular os níveis de açúcar no sangue, sendo benéficas para pessoas com diabetes ou pré-diabetes.',
      'Diminui a ansiedade e a insônia: O magnésio presente na semente de abacate possui propriedades relaxantes que podem ajudar a reduzir a ansiedade e melhorar a qualidade do sono.',

    ],
    preco: 200,
    isOrganica: false,
    isCultivoSustentavel: false,
    isPlantioDomestico: false,
    isHeranca: true,
  ),
  Seed(
    id: 'm4',
    categories: [
      'c4',
    ],
    title: 'Milefólio',
    affordability: Affordability.exuberante,
    complexity: Complexity.moderado,
    imageUrl:
        'https://img.freepik.com/fotos-gratis/pistache-frito-na-vista-lateral-da-mesa_141793-3118.jpg?t=st=1714670100~exp=1714673700~hmac=a0881cc980aabc594e4dc1b4c4731508947df758fbdf78f5446d0dbd56ee860f&w=740',
    duration: 60,
    properties: [
      '1.Propriedades anti-inflamatórias:O milefólio possui propriedades anti-inflamatórias que podem ajudar a reduzir a inflamação no corpo, sendo útil para aliviar dores musculares, articulares e menstruais. \n',
      '2.Propriedades cicatrizantes:O milefólio possui propriedades cicatrizantes que podem ajudar a acelerar a cicatrização de feridas e cortes. \n',
      '3.Propriedades antimicrobianas:O milefólio possui propriedades antimicrobianas que podem ajudar a combater infecções bacterianas e fúngicas. \n',
      '4.Propriedades digestivas:O milefólio possui propriedades digestivas que podem ajudar a melhorar a digestão e aliviar problemas digestivos como azia, indigestão e gases. \n',
      '5.Propriedades diuréticas: O milefólio possui propriedades diuréticas que podem ajudar a aumentar a produção de urina e eliminar toxinas do corpo. \n',
      '6.Propriedades sedativas: O milefólio possui propriedades sedativas que podem ajudar a relaxar o corpo e a mente, sendo útil para aliviar o estresse, a ansiedade e a insônia. \n',

    ],
    benefits: [
      '1.Fortalece o sistema imunológico.',
      '2.Regula o fluxo menstrual',
      '3.Alivia cólicas menstruais.',
      '4.Previne a formação de coágulos sanguíneos.',

    ],
    preco: 120,
    isOrganica: false,
    isCultivoSustentavel: false,
    isPlantioDomestico: false,
    isHeranca: false,
  ),
  Seed(
    id: 'm5',
    categories: [
      'c2'
          'c5',
      'c10',
    ],
    title: 'Soja',
    affordability: Affordability.exuberante,
    complexity: Complexity.simples,
    imageUrl:
        'https://cdn.pixabay.com/photo/2017/04/26/22/24/soy-milk-2263942_1280.jpg',
    duration: 15,
    properties: [
      '1.Rica em Proteínas:',
      '2.Fonte de Fibras:',
      '3.Baixo Teor de Gorduras Saturadas:',
      '4.Isoflavonas',

    ],
    benefits: [
      'A soja é uma das melhores fontes de proteínas vegetais, contendo todos os aminoácidos essenciais que o corpo precisa.',
      'Promovem a saúde digestiva: As fibras regulam o intestino, prevenindo a constipação e promovendo o crescimento de bactérias benéficas.',
      'A soja é rica em gorduras insaturadas, principalmente gorduras monoinsaturadas e poliinsaturadas, consideradas "gorduras boas" por serem benéficas para a saúde do coração.',
      'Alívio dos sintomas da menopausa: As isoflavonas podem ajudar a aliviar os sintomas da menopausa, como ondas de calor, suores noturnos e secura vaginal.',

    ],
    preco: 180,
    isOrganica: true,
    isCultivoSustentavel: false,
    isPlantioDomestico: true,
    isHeranca: true,
  ),
  Seed(
    id: 'm6',
    categories: [
      'c6',
      'c10',
    ],
    title: 'Semente de Jaca ',
    affordability: Affordability.acessivel,
    complexity: Complexity.dificil,
    imageUrl:
        'https://cdn.pixabay.com/photo/2017/03/27/06/12/jackfruit-seeds-2177498_1280.jpg',
    duration: 240,
    properties: [
      '1.Carboidratos: Fonte de energia para o corpo, fornecendo glicose para o cérebro, músculos e outros órgãos. \n',
      '2.Proteínas: Essenciais para o crescimento, reparo e manutenção dos tecidos corporais. \n',
      '3.Fibras: Auxiliam na digestão, regulam o intestino, promovem a saciedade e controlam os níveis de colesterol. \n',
      '4.Vitaminas: Rica em vitaminas do complexo B, importantes para o metabolismo energético, função nervosa e saúde da pele. \n',
      '5.Minerais: Fonte de ferro, zinco, magnésio, fósforo e outros minerais essenciais para diversas funções do corpo. \n',

    ],
    benefits: [
      '1.Fonte de energia: Fornece energia duradoura para o corpo, auxiliando na performance física e mental.',
      '2.Promove a saúde digestiva: As fibras regulam o intestino, previnem a constipação e contribuem para a saúde da microbiota intestinal.',
      '3.Controla o colesterol: As fibras solúveis diminuem a absorção do colesterol LDL ("mau"), reduzindo o risco de doenças cardiovasculares.',
      '4.Auxilia no controle do peso: A fibra promove a saciedade, ajudando no controle do apetite e na perda de peso.',
      '5.Fortalece o sistema imunológico: As vitaminas e minerais presentes na semente de jaca contribuem para o bom funcionamento do sistema imunológico.',
      '6.Faz bem para a pele: As vitaminas do complexo B e o zinco são importantes para a saúde da pele, cabelos e unhas.',
      '7.Previne doenças crônicas: O consumo regular de grãos integrais, como a semente de jaca, pode reduzir o risco de doenças crônicas como diabetes tipo 2, doenças cardíacas e alguns tipos de câncer.',

    ],
    preco: 280,
    isOrganica: true,
    isCultivoSustentavel: false,
    isPlantioDomestico: true,
    isHeranca: false,
  ),
  Seed(
    id: 'm7',
    categories: [
      'c7',
    ],
    title: 'Linhaça',
    affordability: Affordability.acessivel,
    complexity: Complexity.simples,
    imageUrl:
        'https://cdn.pixabay.com/photo/2023/02/28/10/52/linseed-7820555_1280.jpg',
    duration: 20,
    properties: [
      '1.  Rica em Ácidos Graxos Ômega-3',
      '2.  Fonte de Fibras:',
      '3.  Rica em Proteínas:',
      '4.  Fonte de Vitaminas e Minerais:',

    ],
    benefits: [
      'Redução do risco de doenças cardíacas: O ômega-3 ajuda a diminuir os triglicerídeos, baixar a pressão arterial e reduzir o risco de coágulos sanguíneos, protegendo o coração. \n',
      'Controlam o açúcar no sangue: As fibras solúveis ajudam a controlar os níveis de açúcar no sangue, sendo benéficas para pessoas com diabetes ou pré-diabetes. \n',
      'A linhaça é uma boa fonte de proteínas vegetais, importantes para o crescimento, reparo e manutenção dos tecidos corporais. \n',
      'Fósforo: Importante para a saúde óssea e dental.'
    ],
    preco: 300,
    isOrganica: true,
    isCultivoSustentavel: false,
    isPlantioDomestico: true,
    isHeranca: false,
  ),
  Seed(
    id: 'm8',
    categories: [
      'c8',
    ],
    title: 'Romã',
    affordability: Affordability.cara,
    complexity: Complexity.moderado,
    imageUrl:
        'https://cdn.pixabay.com/photo/2016/04/11/21/07/fruit-1323080_960_720.jpg',
    duration: 35,
    properties: [
      '1. Rica em Antioxidantes: \n Ácido elágico: Um antioxidante que protege as células contra danos causados pelos radicais livres e pode ajudar a prevenir doenças crônicas. \n',
      '2. Propriedades Anti-inflamatórias: \n Os antioxidantes presentes nas sementes de romã combatem a inflamação no corpo, reduzindo o risco de diversas doenças crônicas \n',
      '3. Auxilia na Saúde Digestiva: \n As sementes de romã são ricas em fibras, que: Promovem a saúde digestiva, regulando o intestino e prevenindo a constipação.',
      '4. Fortalece o Sistema Imunológico:\n Fortalecem o sistema imunológico, protegendo o corpo contra infecções e doenças.\n',
      '5. Promove a Saúde Bucal: \n Combatem bactérias que causam cáries e doenças gengivais. \n',
      '6. Melhora a Saúde dos Ossos: \n Aumentam a densidade mineral óssea. \n',

    ],
    benefits: [
      '1. Melhora a Saúde da Pele: \n Os antioxidantes da romã combatem os radicais livres, prevenindo o envelhecimento precoce da pele \n',
      '2.Aumento da Imunidade: \n A romã é rica em vitamina C e outros antioxidantes que fortalecem o sistema imunológico, ajudando o corpo a combater infecções e doenças. \n',
      '3. Regulação da Glicose no Sangue: \n Alguns estudos sugerem que a romã pode ajudar a regular os níveis de glicose no sangue, sendo potencialmente útil para pessoas com diabetes ou resistência à insulina. \n',
      '4. Melhoria da Memória e Função Cognitiva: \n Pesquisas indicam que os antioxidantes da romã podem ter efeitos positivos na função cognitiva, melhorando a memória e reduzindo o risco de doenças neurodegenerativas. \n',

    ],
    preco: 120,
    isOrganica: true,
    isCultivoSustentavel: false,
    isPlantioDomestico: false,
    isHeranca: true,
  ),
  Seed(
    id: 'm9',
    categories: [
      'c9',
    ],
    title: 'Semente Girassol',
    affordability: Affordability.acessivel,
    complexity: Complexity.dificil,
    imageUrl:
        'https://cdn.pixabay.com/photo/2019/08/15/19/41/sunflowers-4408769_1280.jpg',
    duration: 45,
    properties: [
      '1 Rica em gorduras insaturadas',
      '2 Fonte de proteínas',
      '3 Alto teor de fibras:',
      '4 Fonte de vitaminas e minerais:',
      '5 Propriedades antioxidantes',

    ],
    benefits: [
      '1.Previne doenças cardiovasculares: A combinação de gorduras insaturadas, fibras e antioxidantes na semente de girassol contribui para a redução do colesterol LDL ("mau") e aumenta o colesterol HDL ("bom"), prevenindo doenças cardiovasculares como infarto e AVC.',
      '2.Combate a prisão de ventre: O alto teor de fibras da semente de girassol auxilia na regulação do intestino, prevenindo a prisão de ventre e promovendo a saúde digestiva..',
      '3.Aumenta a massa muscular: A proteína presente na semente de girassol é essencial para o crescimento, reparo e manutenção dos músculos, sendo um bom complemento para a dieta de praticantes de exercícios físicos.',
      '4.Controla a pressão alta: O magnésio presente na semente de girassol ajuda a relaxar os vasos sanguíneos e controlar a pressão arterial.',
      '5.Ajuda na perda de peso: A fibra e a proteína da semente de girassol promovem a sensação de saciedade, o que pode auxiliar no controle do apetite e na perda de peso.',
      '6.Previne o envelhecimento precoce: A vitamina E presente na semente de girassol é um poderoso antioxidante que ajuda a combater os radicais livres, prevenindo o envelhecimento precoce das células e a formação de rugas.',
      '7.Regula o açúcar no sangue: As fibras da semente de girassol ajudam a regular os níveis de açúcar no sangue, sendo benéficas para pessoas com diabetes ou pré-diabetes.',
      '8.Diminui a ansiedade e a insônia: O magnésio presente na semente de girassol possui propriedades relaxantes que podem ajudar a reduzir a ansiedade e melhorar a qualidade do sono.',

    ],
    preco: 220,
    isOrganica: true,
    isCultivoSustentavel: false,
    isPlantioDomestico: true,
    isHeranca: false,
  ),
  Seed(
    id: 'm10',
    categories: [
      'c2',
      'c5',
      'c10',
    ],
    title: 'cevada',
    affordability: Affordability.exuberante,
    complexity: Complexity.simples,
    imageUrl:
        'https://cdn.pixabay.com/photo/2019/05/28/23/40/foxtail-barley-4236373_1280.jpg',
    duration: 30,
    properties: [
      '1. Rica em Fibras:\n Auxiliam na digestão, regulando o intestino e promovendo a saciedade.\n  Controlam os níveis de colesterol e contribuem para a saúde da microbiota intestinal. \n',
      '2.Beta-glucana:      \n Um tipo de fibra solúvel que ajuda a reduzir o colesterol LDL ("mau") e controlar os níveis de açúcar no sangue. \n',
      '3. Fonte de Proteínas: \n Essenciais para o crescimento, reparo e manutenção dos tecidos corporais. \n',
      '4.Vitaminas: \n Rica em vitaminas do complexo B ',

    ],
    benefits: [
      '1. Promove a saúde digestiva: \n Regula o intestino, previne a constipação e contribui para a saúde da microbiota intestinal. \n',
      '2. Controla o colesterol: \n Diminui a absorção do colesterol LDL ("mau"), reduzindo o risco de doenças cardiovasculares. \n',
      '3. Auxilia no controle do peso: \n Promove a saciedade, ajudando no controle do apetite e na perda de peso. \n',
      '4. Regula o açúcar no sangue: \n Ajuda a controlar os níveis de açúcar no sangue, sendo benéfica para pessoas com diabetes ou pré-diabetes. \n',
      '5. Fortalece o sistema imunológico: \n Contribui para o bom funcionamento do sistema imunológico. \n',

    ],
    preco: 120,
    isOrganica: true,
    isCultivoSustentavel: true,
    isPlantioDomestico: true,
    isHeranca: true,
  ),
  Seed(
    id: 'm11',
    categories: [
      'c11',
    ],
    title: 'Enxada',
    affordability: Affordability.acessivel,
    complexity: Complexity.simples,
    imageUrl:
        'https://cdn.pixabay.com/photo/2019/05/28/23/40/foxtail-barley-4236373_1280.jpg',
    duration: 0,
    properties: [

    ],
    benefits: [
      ''
    ],
    preco: 90,
    isOrganica: false,
    isCultivoSustentavel: false,
    isPlantioDomestico: false,
    isHeranca: false,
  ),
];
