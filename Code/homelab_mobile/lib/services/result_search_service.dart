import 'package:HomeLab/helpers/constants.dart';

final String apiUrl = apiUrl;

class ResultSeacrhService {
  var searchResult = [];

  getResultSearch()  {
    searchResult = [
      {
        'labName': 'Labo 1',
        'analyseLabel': 'Analyse 1',
        'price': 12000,
        'dateLine': 3
      },
      {
        'labName': 'Labo 2',
        'analyseLabel': 'Analyse 2',
        'price': 13000,
        'dateLine': 4
      },
      {
        'labName': 'Labo 3',
        'analyseLabel': 'Analyse 3',
        'price': 12000,
        'dateLine': 10
      },
      {
        'labName': 'Labo 4',
        'analyseLabel': 'Analyse 4',
        'price': 12000,
        'dateLine': 20
      },
    ];

    return searchResult;
  }
}
