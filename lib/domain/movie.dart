import 'dart:convert';

Movie movieFromJson(String str) => Movie.fromJsonToDomain(json.decode(str));

class Movie {
  Movie({
    required this.displayTitle,
    required this.mpaaRating,
    required this.author,
    required this.headline,
    required this.summaryShort,
    required this.publicationDate,
    required this.dateUpdated,
    required this.link,
    required this.multimedia,
  });

  String displayTitle;
  String mpaaRating;
  String author;
  String headline;
  String summaryShort;
  DateTime publicationDate;
  DateTime dateUpdated;
  Link link;
  Multimedia multimedia;

  factory Movie.fromJsonToDomain(Map<String, dynamic> json) => Movie(
        displayTitle: json["display_title"],
        mpaaRating: json["mpaa_rating"],
        author: json["byline"],
        headline: json["headline"],
        summaryShort: json["summary_short"],
        publicationDate: DateTime.parse(json["publication_date"]),
        dateUpdated: DateTime.parse(json["date_updated"]),
        link: Link.fromJson(json["link"]),
        multimedia: Multimedia.fromJson(json["multimedia"]),
      );
}

class Link {
  Link({
    required this.type,
    required this.url,
    required this.suggestedLinkText,
  });

  String type;
  String url;
  String suggestedLinkText;

  factory Link.fromJson(Map<String, dynamic> json) => Link(
        type: json["type"],
        url: json["url"],
        suggestedLinkText: json["suggested_link_text"],
      );

  Map<String, dynamic> toJson() => {
        "type": type,
        "url": url,
        "suggested_link_text": suggestedLinkText,
      };
}

class Multimedia {
  Multimedia({
    required this.type,
    required this.src,
    required this.height,
    required this.width,
  });

  String type;
  String src;
  int height;
  int width;

  factory Multimedia.fromJson(Map<String, dynamic> json) => Multimedia(
        type: json["type"],
        src: json["src"],
        height: json["height"],
        width: json["width"],
      );

  Map<String, dynamic> toJson() => {
        "type": type,
        "src": src,
        "height": height,
        "width": width,
      };
}
