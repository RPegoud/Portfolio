class Recommendation {
  final String name, source, body;

  Recommendation({
    required this.name,
    required this.source,
    required this.body,
  });
}

final List<Recommendation> recommendation_list = [
  Recommendation(
      name: 'Cornelius Steinbrink',
      source: 'Data scientist (summer job)',
      body:
          '''I had the pleasure of supervising Ryan while he was working for our data analytics team at CEWE as a student trainee. 
In less than two months he completed a complex NLP project involving different machine learning models and heuristics that we could pretty much directly integrate into our analysis pipelines to generate long-term value. 
He did all this while only remote supervision was possible, which demonstrates his self-reliance. He was creative and thorough in his approach to new topics, did a great job at presenting his findings and incorporating feedback, and was overall pleasant to work with due to his friendly character. 
I can see him being a great fit for any position involving data science and analytics, machine learning and AI.'''),
  Recommendation(
      name: 'Cewe - CIM department',
      source: 'Data scientist intern',
      body:
          '''Mr Pegoud always acquired very good specialist knowledge within a very short time in the respective departments.
He had an excellent ability to familiarise himself rapidly, which always enabled him to grasp even the most complex work content very well within a very short time.
Mr Pegoud always worked using his own initiative and completely identified with his responsibilities and our company at all times. He always displayed an impressive level of dedication and motivation.'''),
];
