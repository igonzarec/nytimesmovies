import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:ingenio_challenge/domain/movie.dart';

import '../core/dio_client.dart';

abstract class MoviesRepository {
  Future<List<Movie>> getMovies();
}

class MoviesRepositoryImpl implements MoviesRepository {
  final DioClient _requestClient;

  MoviesRepositoryImpl(this._requestClient);

  @override
  Future<List<Movie>> getMovies() async {
    try {
      final response = await _requestClient.request("reviews/picks.json?");

      var rawList = response.data['results'] as List;

      var movies = rawList.map((e) => Movie.fromJsonToDomain(e)).toList();

      return movies;
    } on DioError catch (e) {
      log(e.message);

      rethrow;
    }
  }
}

class MockMoviesRepositoryImpl implements MoviesRepository {
  @override
  Future<List<Movie>> getMovies() async {
    await Future.delayed(const Duration(seconds: 3));
    var movies = mockResponse.map((e) => Movie.fromJsonToDomain(e)).toList();

    return movies;
  }
}

const mockResponse = [
  {
    "display_title": "Dead for A Dollar",
    "mpaa_rating": "R",
    "critics_pick": 1,
    "byline": "A.O. Scott",
    "headline": "‘Dead for a Dollar’ Review: How the Western’s Done",
    "summary_short": "Walter Hill’s lean, mean shoot-’em-up is a master class in B-movie craft.",
    "publication_date": "2022-09-29",
    "opening_date": "2022-09-30",
    "date_updated": "2022-09-29 15:20:03",
    "link": {
      "type": "article",
      "url": "https://www.nytimes.com/2022/09/29/movies/dead-for-a-dollar-review.html",
      "suggested_link_text": "Read the New York Times Review of Dead for A Dollar"
    },
    "multimedia": {
      "type": "mediumThreeByTwo210",
      "src": "https://static01.nyt.com/images/2022/09/29/multimedia/29deadfor1-1-1904/29deadfor1-1-1904-mediumThreeByTwo440.jpg",
      "height": 140,
      "width": 210
    }
  },
  {
    "display_title": "Hocus Pocus 2",
    "mpaa_rating": "PG",
    "critics_pick": 1,
    "byline": "Claire Shaffer",
    "headline": "‘Hocus Pocus 2’ Review: Still Spelling Trouble",
    "summary_short": "The Sanderson sisters return, bringing the same spooky humor with some modern twists.",
    "publication_date": "2022-09-29",
    "opening_date": "2022-09-30",
    "date_updated": "2022-09-29 14:31:03",
    "link": {
      "type": "article",
      "url": "https://www.nytimes.com/2022/09/29/movies/hocus-pocus-2-review.html",
      "suggested_link_text": "Read the New York Times Review of Hocus Pocus 2"
    },
    "multimedia": {
      "type": "mediumThreeByTwo210",
      "src": "https://static01.nyt.com/images/2022/09/28/arts/hocus1/hocus1-mediumThreeByTwo440.jpg",
      "height": 140,
      "width": 210
    }
  },
  {
    "display_title": "What We Leave Behind",
    "mpaa_rating": "",
    "critics_pick": 1,
    "byline": "Lisa Kennedy",
    "headline": "‘What We Leave Behind’ Review: A Father’s Final Project",
    "summary_short": "At 89, Julián Moreno began building a home in Mexico for his children who had immigrated to the U.S. His granddaughter made the poignant documentary “What We Leave Behind.”",
    "publication_date": "2022-09-29",
    "opening_date": "2022-09-30",
    "date_updated": "2022-09-29 11:04:03",
    "link": {
      "type": "article",
      "url": "https://www.nytimes.com/2022/09/29/movies/what-we-leave-behind-review.html",
      "suggested_link_text": "Read the New York Times Review of What We Leave Behind"
    },
    "multimedia": {
      "type": "mediumThreeByTwo210",
      "src": "https://static01.nyt.com/images/2022/09/28/arts/whatweleave1/whatweleave1-mediumThreeByTwo440.jpg",
      "height": 140,
      "width": 210
    }
  },
  {
    "display_title": "Smile",
    "mpaa_rating": "R",
    "critics_pick": 1,
    "byline": "Jeannette Catsoulis",
    "headline": "‘Smile’ Review: Grab and Grin",
    "summary_short": "A young psychiatrist believes she’s being pursued by a malevolent force in this impressive horror feature debut.",
    "publication_date": "2022-09-29",
    "opening_date": "2022-09-30",
    "date_updated": "2022-09-29 11:03:03",
    "link": {
      "type": "article",
      "url": "https://www.nytimes.com/2022/09/29/movies/smile-review.html",
      "suggested_link_text": "Read the New York Times Review of Smile"
    },
    "multimedia": {
      "type": "mediumThreeByTwo210",
      "src": "https://static01.nyt.com/images/2022/09/30/arts/smile1/smile1-mediumThreeByTwo440.jpg",
      "height": 140,
      "width": 210
    }
  },
  {
    "display_title": "Petrov's Flu",
    "mpaa_rating": "Unrated",
    "critics_pick": 1,
    "byline": "Manohla Dargis",
    "headline": "‘Petrov’s Flu’ Review: Roaming a Grim, Rowdy Underworld",
    "summary_short": "In this fever dream of a movie by Kirill Serebrennikov, a Russian man wanders a wild urban landscape that he regularly hallucinates his way out of.",
    "publication_date": "2022-09-22",
    "opening_date": null,
    "date_updated": "2022-09-22 19:07:03",
    "link": {
      "type": "article",
      "url": "https://www.nytimes.com/2022/09/22/movies/petrovs-flu-review-kirill-serebrennikov.html",
      "suggested_link_text": "Read the New York Times Review of Petrov's Flu"
    },
    "multimedia": {
      "type": "mediumThreeByTwo210",
      "src": "https://static01.nyt.com/images/2022/09/22/arts/22petrovsflu-review/22petrovsflu-review-mediumThreeByTwo440.jpg",
      "height": 140,
      "width": 210
    }
  },
  {
    "display_title": "My Imaginary Country",
    "mpaa_rating": "",
    "critics_pick": 1,
    "byline": "A.O. Scott",
    "headline": "‘My Imaginary Country’ Review: Chile in Revolt",
    "summary_short": "Patricio Guzmán, Chile’s cinematic conscience, chronicles the uprising that shook the country starting in 2019.",
    "publication_date": "2022-09-22",
    "opening_date": "2022-09-23",
    "date_updated": "2022-09-22 16:48:03",
    "link": {
      "type": "article",
      "url": "https://www.nytimes.com/2022/09/22/movies/my-imaginary-country-review.html",
      "suggested_link_text": "Read the New York Times Review of My Imaginary Country"
    },
    "multimedia": {
      "type": "mediumThreeByTwo210",
      "src": "https://static01.nyt.com/images/2022/09/22/multimedia/22imaginary1-1-a519/22imaginary1-1-a519-mediumThreeByTwo440.jpg",
      "height": 140,
      "width": 210
    }
  },
  {
    "display_title": "Carmen",
    "mpaa_rating": "",
    "critics_pick": 1,
    "byline": "Teo Bugbee",
    "headline": "‘Carmen’ Review: You Will Live in Bliss",
    "summary_short": "After her priest brother dies, a woman masquerades as a village’s irreverent new spiritual leader in this delightful drama.",
    "publication_date": "2022-09-22",
    "opening_date": null,
    "date_updated": "2022-09-22 11:02:07",
    "link": {
      "type": "article",
      "url": "https://www.nytimes.com/2022/09/22/movies/carmen-review.html",
      "suggested_link_text": "Read the New York Times Review of Carmen"
    },
    "multimedia": {
      "type": "mediumThreeByTwo210",
      "src": "https://static01.nyt.com/images/2022/09/23/arts/carmen1/carmen1-mediumThreeByTwo440.jpg",
      "height": 140,
      "width": 210
    }
  },
  {
    "display_title": "Catherine Called Birdy",
    "mpaa_rating": "PG-13",
    "critics_pick": 1,
    "byline": "Amy Nicholson",
    "headline": "‘Catherine Called Birdy’ Review: Ye Olde Lady Bird",
    "summary_short": "Bella Ramsey plays a 13th century adolescent in Lena Dunham’s winning film.",
    "publication_date": "2022-09-22",
    "opening_date": "2022-10-07",
    "date_updated": "2022-09-22 11:03:05",
    "link": {
      "type": "article",
      "url": "https://www.nytimes.com/2022/09/22/movies/catherine-called-birdy-review.html",
      "suggested_link_text": "Read the New York Times Review of Catherine Called Birdy"
    },
    "multimedia": {
      "type": "mediumThreeByTwo210",
      "src": "https://static01.nyt.com/images/2022/09/23/arts/catherine1/merlin_213264513_0b84fc3b-6919-43f2-b377-e314c4b644ae-mediumThreeByTwo440.jpg",
      "height": 140,
      "width": 210
    }
  },
  {
    "display_title": "The Woman King",
    "mpaa_rating": "PG-13",
    "critics_pick": 1,
    "byline": "Manohla Dargis",
    "headline": "‘The Woman King’ Review: She Slays",
    "summary_short": "Viola Davis leads a strong cast into battle in an epic from Gina Prince-Bythewood, inspired by real women warriors.",
    "publication_date": "2022-09-15",
    "opening_date": "2022-09-16",
    "date_updated": "2022-09-15 18:03:03",
    "link": {
      "type": "article",
      "url": "https://www.nytimes.com/2022/09/15/movies/the-woman-king-review-viola-davis.html",
      "suggested_link_text": "Read the New York Times Review of The Woman King"
    },
    "multimedia": {
      "type": "mediumThreeByTwo210",
      "src": "https://static01.nyt.com/images/2022/09/15/arts/15womanking-review/15womanking-review-mediumThreeByTwo440.jpg",
      "height": 140,
      "width": 210
    }
  },
  {
    "display_title": "Riotsville, U.S.A.",
    "mpaa_rating": "",
    "critics_pick": 1,
    "byline": "Glenn Kenny",
    "headline": "‘Riotsville, USA’ Review: A Fake Town to Explore Ongoing Unrest",
    "summary_short": "A documentary delves into the responses to the 1960s protests, revealing uncomfortable truths about that time and ours.",
    "publication_date": "2022-09-15",
    "opening_date": null,
    "date_updated": "2022-09-15 11:01:03",
    "link": {
      "type": "article",
      "url": "https://www.nytimes.com/2022/09/15/movies/riotsville-usa-review.html",
      "suggested_link_text": "Read the New York Times Review of Riotsville, U.S.A."
    },
    "multimedia": {
      "type": "mediumThreeByTwo210",
      "src": "https://static01.nyt.com/images/2022/09/15/arts/15riotsville/merlin_212615085_ecddf7a5-6e31-47e9-bc21-6e8641b74a05-mediumThreeByTwo440.jpg",
      "height": 140,
      "width": 210
    }
  },
  {
    "display_title": "The African Desperate",
    "mpaa_rating": "",
    "critics_pick": 1,
    "byline": "Devika Girish",
    "headline": "‘The African Desperate’ Review: Double Speak",
    "summary_short": "Martine Syms’s whip-smart satire brings the invisible, everyday negotiations of a Black artist to startlingly visual life.",
    "publication_date": "2022-09-15",
    "opening_date": null,
    "date_updated": "2022-09-15 11:04:03",
    "link": {
      "type": "article",
      "url": "https://www.nytimes.com/2022/09/15/movies/the-african-desperate-review.html",
      "suggested_link_text": "Read the New York Times Review of The African Desperate"
    },
    "multimedia": {
      "type": "mediumThreeByTwo210",
      "src": "https://static01.nyt.com/images/2022/09/16/arts/african1/african1-mediumThreeByTwo440.jpg",
      "height": 140,
      "width": 210
    }
  },
  {
    "display_title": "Terra Femme",
    "mpaa_rating": "",
    "critics_pick": 1,
    "byline": "Ben Kenigsberg",
    "headline": "‘Terra Femme’ Review: How Women Have Seen the World",
    "summary_short": "An assemblage of travelogues shot by women from the 1920s through the 1950s, this experimental essay film can be seen with either live or prerecorded narration.",
    "publication_date": "2022-09-14",
    "opening_date": null,
    "date_updated": "2022-09-14 21:39:59",
    "link": {
      "type": "article",
      "url": "https://www.nytimes.com/2022/09/14/movies/terra-femme-review.html",
      "suggested_link_text": "Read the New York Times Review of Terra Femme"
    },
    "multimedia": {
      "type": "mediumThreeByTwo210",
      "src": "https://static01.nyt.com/images/2022/09/16/arts/15terra-femme/merlin_212694048_7f2f2402-a019-487d-a1b6-9a2128b0243f-mediumThreeByTwo440.jpg",
      "height": 140,
      "width": 210
    }
  },
  {
    "display_title": "Dos estaciones",
    "mpaa_rating": "",
    "critics_pick": 1,
    "byline": "Manohla Dargis",
    "headline": "‘Dos Estaciones’ Review: A Tequila Factory’s Story, Sip by Sip",
    "summary_short": "A woman tries to keep her family business running in this film that employs dreamlike rhythms and documentary-style realism.",
    "publication_date": "2022-09-08",
    "opening_date": null,
    "date_updated": "2022-09-08 18:09:03",
    "link": {
      "type": "article",
      "url": "https://www.nytimes.com/2022/09/08/movies/dos-estaciones-review.html",
      "suggested_link_text": "Read the New York Times Review of Dos estaciones"
    },
    "multimedia": {
      "type": "mediumThreeByTwo210",
      "src": "https://static01.nyt.com/images/2022/09/08/multimedia/08dos-estaciones1/08dos-estaciones1-mediumThreeByTwo440.jpg",
      "height": 140,
      "width": 210
    }
  },
  {
    "display_title": "Barbarian",
    "mpaa_rating": "R",
    "critics_pick": 1,
    "byline": "Beatrice Loayza",
    "headline": "‘Barbarian’ Review: This Rental Is Hell",
    "summary_short": "Two strangers explore the basement of their Detroit rental home in this gleefully twisty horror movie by Zach Cregger.",
    "publication_date": "2022-09-08",
    "opening_date": "2022-09-09",
    "date_updated": "2022-09-08 14:02:03",
    "link": {
      "type": "article",
      "url": "https://www.nytimes.com/2022/09/08/movies/barbarian-review.html",
      "suggested_link_text": "Read the New York Times Review of Barbarian"
    },
    "multimedia": {
      "type": "mediumThreeByTwo210",
      "src": "https://static01.nyt.com/images/2022/09/09/arts/barbarian1/barbarian1-mediumThreeByTwo440.jpg",
      "height": 140,
      "width": 210
    }
  },
  {
    "display_title": "True Things",
    "mpaa_rating": "",
    "critics_pick": 1,
    "byline": "Nicolas Rapold",
    "headline": "‘True Things’ Review: Escape Routes",
    "summary_short": "This character study from Harry Wootliff bottles the lightning of a torrid fling.",
    "publication_date": "2022-09-08",
    "opening_date": "2022-09-09",
    "date_updated": "2022-09-08 12:12:03",
    "link": {
      "type": "article",
      "url": "https://www.nytimes.com/2022/09/08/movies/true-things-review.html",
      "suggested_link_text": "Read the New York Times Review of True Things"
    },
    "multimedia": {
      "type": "mediumThreeByTwo210",
      "src": "https://static01.nyt.com/images/2022/09/09/arts/truethings1/truethings1-mediumThreeByTwo440.jpg",
      "height": 140,
      "width": 210
    }
  },
  {
    "display_title": "Speak No Evil",
    "mpaa_rating": "Not Rated",
    "critics_pick": 1,
    "byline": "Jeannette Catsoulis",
    "headline": "‘Speak No Evil’ Review: Impolite Company",
    "summary_short": "A weekend visit turns nightmarish for an innocent Danish couple in this coldblooded satirical thriller.",
    "publication_date": "2022-09-08",
    "opening_date": null,
    "date_updated": "2022-09-08 11:03:03",
    "link": {
      "type": "article",
      "url": "https://www.nytimes.com/2022/09/08/movies/speak-no-evil-review.html",
      "suggested_link_text": "Read the New York Times Review of Speak No Evil"
    },
    "multimedia": {
      "type": "mediumThreeByTwo210",
      "src": "https://static01.nyt.com/images/2022/09/09/arts/speak1/speak1-mediumThreeByTwo440.jpg",
      "height": 140,
      "width": 210
    }
  },
  {
    "display_title": "Honk for Jesus. Save Your Soul.",
    "mpaa_rating": "R",
    "critics_pick": 1,
    "byline": "Lisa Kennedy",
    "headline": "‘Honk for Jesus. Save Your Soul.’ Review: Resurrecting a Megachurch",
    "summary_short": "Regina Hall and Sterling K. Brown star in this satire about a fallen megachurch pastor and his first lady praying and angling for a comeback.",
    "publication_date": "2022-09-01",
    "opening_date": "2022-09-02",
    "date_updated": "2022-09-01 18:30:04",
    "link": {
      "type": "article",
      "url": "https://www.nytimes.com/2022/09/01/movies/honk-for-jesus-save-your-soul-review.html",
      "suggested_link_text": "Read the New York Times Review of Honk for Jesus. Save Your Soul."
    },
    "multimedia": {
      "type": "mediumThreeByTwo210",
      "src": "https://static01.nyt.com/images/2022/09/02/arts/honk-for-jesus-save-your-soul/honk-for-jesus-save-your-soul-mediumThreeByTwo440.jpg",
      "height": 140,
      "width": 210
    }
  },
  {
    "display_title": "The Cathedral",
    "mpaa_rating": "",
    "critics_pick": 1,
    "byline": "Manohla Dargis",
    "headline": "‘The Cathedral’ Review: A Boy, a Home, a World",
    "summary_short": "In this striking, formally rigorous drama, the director Ricky D’Ambrose revisits his Long Island childhood with restraint and tenderness.",
    "publication_date": "2022-09-01",
    "opening_date": "2022-09-09",
    "date_updated": "2022-09-01 18:31:03",
    "link": {
      "type": "article",
      "url": "https://www.nytimes.com/2022/09/01/movies/the-cathedral-review-ricky-dambrose.html",
      "suggested_link_text": "Read the New York Times Review of The Cathedral"
    },
    "multimedia": {
      "type": "mediumThreeByTwo210",
      "src": "https://static01.nyt.com/images/2022/09/02/arts/02thecathedral-print/merlin_212008824_9c7d81c4-3a09-4e23-86e1-b2018ee6ef76-mediumThreeByTwo440.jpg",
      "height": 140,
      "width": 210
    }
  },
  {
    "display_title": "Funny Pages",
    "mpaa_rating": "R",
    "critics_pick": 1,
    "byline": "Manohla Dargis",
    "headline": "‘Funny Pages’ Review: Ordinary Life, Complex Stuff",
    "summary_short": "Owen Kline’s wonderful feature debut about an aspiring comic-book creator delves into a buzzingly alive, if anxious, world of cartooning.",
    "publication_date": "2022-08-25",
    "opening_date": null,
    "date_updated": "2022-08-25 19:00:03",
    "link": {
      "type": "article",
      "url": "https://www.nytimes.com/2022/08/25/movies/funny-pages-review-owen-kline.html",
      "suggested_link_text": "Read the New York Times Review of Funny Pages"
    },
    "multimedia": {
      "type": "mediumThreeByTwo210",
      "src": "https://static01.nyt.com/images/2022/08/26/arts/26funny-pages-review-print/merlin_211793760_ba305ab1-b4b9-42d9-a461-c9b28fc194df-mediumThreeByTwo440.jpg",
      "height": 140,
      "width": 210
    }
  },
  {
    "display_title": "Alienoid",
    "mpaa_rating": "",
    "critics_pick": 1,
    "byline": "Elisabeth Vincentelli",
    "headline": "‘Alienoid’ Review: Sorcerers, Alien Prisoners and Much, Much More",
    "summary_short": "This bonkers Korean movie could not pick just one cinematic genre, so it went for half a dozen of them at once.",
    "publication_date": "2022-08-25",
    "opening_date": null,
    "date_updated": "2022-08-25 11:03:05",
    "link": {
      "type": "article",
      "url": "https://www.nytimes.com/2022/08/25/movies/alienoid-review.html",
      "suggested_link_text": "Read the New York Times Review of Alienoid"
    },
    "multimedia": {
      "type": "mediumThreeByTwo210",
      "src": "https://static01.nyt.com/images/2022/08/26/arts/alienoid1/alienoid1-mediumThreeByTwo440.jpg",
      "height": 140,
      "width": 210
    }
  }
];
