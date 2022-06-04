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
      name: 'Cewe',
      source: 'Internship recommendation',
      body:
          '''Mr Pegoud always acquired very good specialist knowledge within a very short time in the respective departments.
He had an excellent ability to familiarise himself rapidly, which always enabled him to grasp even the most complex work content very well within a very short time.
Mr Pegoud always worked using his own initiative and completely identified with his responsibilities and our company at all times. He always displayed an impressive level of
dedication and motivation.''')
];
