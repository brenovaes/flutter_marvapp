/*
class Character {
  int id;
  String name;
  String description;
  Object thumbnail;
  Object comics;
  Object series;
  Object stories;
  Object events;
  Object urls;

  Character({
    this.id,
    this.name,
    this.description,
    this.thumbnail,
    this.comics,
    this.series,
    this.stories,
    this.events,
    this.urls,
  });

  factory Character.fromJson(Map<String, dynamic> map) {
    if (map == null) return null;

    return Character(
      id: map['id'],
      name: map['name'],
      description: map['description'],
      thumbnail: map['thumbnail'],
      comics: map['comics'],
      series: map['series'],
      stories: map['stories'],
      events: map['events'],
      urls: map['urls'],
    );
  }

  @override
  String toString() {
    return 'Character(id: $id, name: $name, description: $description, thumbnail: $thumbnail, comics: $comics, series: $series, stories: $stories, events: $events, urls: $urls)';
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is Character &&
        o.id == id &&
        o.name == name &&
        o.description == description &&
        o.thumbnail == thumbnail &&
        o.comics == comics &&
        o.series == series &&
        o.stories == stories &&
        o.events == events &&
        o.urls == urls;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        description.hashCode ^
        thumbnail.hashCode ^
        comics.hashCode ^
        series.hashCode ^
        stories.hashCode ^
        events.hashCode ^
        urls.hashCode;
  }
}
*/

class Characters {
  Data data;

  Characters({this.data});

  Characters.fromJson(Map<String, dynamic> json) {
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data.toJson();
    }
    return data;
  }
}

class Data {
  int offset;
  int limit;
  int total;
  int count;
  List<Results> results;

  Data({this.offset, this.limit, this.total, this.count, this.results});

  Data.fromJson(Map<String, dynamic> json) {
    offset = json['offset'];
    limit = json['limit'];
    total = json['total'];
    count = json['count'];
    if (json['results'] != null) {
      results = new List<Results>();
      json['results'].forEach((v) {
        results.add(new Results.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['offset'] = this.offset;
    data['limit'] = this.limit;
    data['total'] = this.total;
    data['count'] = this.count;
    if (this.results != null) {
      data['results'] = this.results.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Results {
  int id;
  String name;
  String description;
  String modified;
  Thumbnail thumbnail;
  String resourceURI;
  Comics comics;
  Comics series;
  Comics stories;
  Comics events;
  List<Urls> urls;

  Results(
      {this.id,
      this.name,
      this.description,
      this.modified,
      this.thumbnail,
      this.resourceURI,
      this.comics,
      this.series,
      this.stories,
      this.events,
      this.urls});

  Results.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    description = json['description'];
    modified = json['modified'];
    thumbnail = json['thumbnail'] != null
        ? new Thumbnail.fromJson(json['thumbnail'])
        : null;
    resourceURI = json['resourceURI'];
    comics =
        json['comics'] != null ? new Comics.fromJson(json['comics']) : null;
    series =
        json['series'] != null ? new Comics.fromJson(json['series']) : null;
    stories =
        json['stories'] != null ? new Comics.fromJson(json['stories']) : null;
    events =
        json['events'] != null ? new Comics.fromJson(json['events']) : null;
    if (json['urls'] != null) {
      urls = new List<Urls>();
      json['urls'].forEach((v) {
        urls.add(new Urls.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['description'] = this.description;
    data['modified'] = this.modified;
    if (this.thumbnail != null) {
      data['thumbnail'] = this.thumbnail.toJson();
    }
    data['resourceURI'] = this.resourceURI;
    if (this.comics != null) {
      data['comics'] = this.comics.toJson();
    }
    if (this.series != null) {
      data['series'] = this.series.toJson();
    }
    if (this.stories != null) {
      data['stories'] = this.stories.toJson();
    }
    if (this.events != null) {
      data['events'] = this.events.toJson();
    }
    if (this.urls != null) {
      data['urls'] = this.urls.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Thumbnail {
  String path;
  String extension;

  Thumbnail({this.path, this.extension});

  Thumbnail.fromJson(Map<String, dynamic> json) {
    path = json['path'];
    extension = json['extension'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['path'] = this.path;
    data['extension'] = this.extension;
    return data;
  }
}

class Comics {
  int available;
  String collectionURI;
  List<Items> items;
  int returned;

  Comics({this.available, this.collectionURI, this.items, this.returned});

  Comics.fromJson(Map<String, dynamic> json) {
    available = json['available'];
    collectionURI = json['collectionURI'];
    if (json['items'] != null) {
      items = new List<Items>();
      json['items'].forEach((v) {
        items.add(new Items.fromJson(v));
      });
    }
    returned = json['returned'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['available'] = this.available;
    data['collectionURI'] = this.collectionURI;
    if (this.items != null) {
      data['items'] = this.items.map((v) => v.toJson()).toList();
    }
    data['returned'] = this.returned;
    return data;
  }
}

class Items {
  String resourceURI;
  String name;

  Items({this.resourceURI, this.name});

  Items.fromJson(Map<String, dynamic> json) {
    resourceURI = json['resourceURI'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['resourceURI'] = this.resourceURI;
    data['name'] = this.name;
    return data;
  }
}

/*class Items {
  String resourceURI;
  String name;
  String type;

  Items({this.resourceURI, this.name, this.type});

  Items.fromJson(Map<String, dynamic> json) {
    resourceURI = json['resourceURI'];
    name = json['name'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['resourceURI'] = this.resourceURI;
    data['name'] = this.name;
    data['type'] = this.type;
    return data;
  }
}*/

class Urls {
  String type;
  String url;

  Urls({this.type, this.url});

  Urls.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['type'] = this.type;
    data['url'] = this.url;
    return data;
  }
}
