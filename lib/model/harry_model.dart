class HarryModel {
  String? name;
  List<AlternateNames>? alternateNames;
  String? species;
  String? gender;
  String? house;
  String? dateOfBirth;
  int? yearOfBirth;
  bool? wizard;
  String? ancestry;
  String? eyeColour;
  String? hairColour;
  Wand? wand;
  String? patronus;
  bool? hogwartsStudent;
  bool? hogwartsStaff;
  String? actor;
  List<AlternateActors>? alternateActors;
  bool? alive;
  String? image;

  HarryModel(
      {this.name,
      this.alternateNames,
      this.species,
      this.gender,
      this.house,
      this.dateOfBirth,
      this.yearOfBirth,
      this.wizard,
      this.ancestry,
      this.eyeColour,
      this.hairColour,
      this.wand,
      this.patronus,
      this.hogwartsStudent,
      this.hogwartsStaff,
      this.actor,
      this.alternateActors,
      this.alive,
      this.image});

  HarryModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    if (json['alternate_names'] != null) {
      alternateNames = <AlternateNames>[];
      json['alternate_names'].forEach((v) {
        alternateNames!.add(AlternateNames.fromJson(v));
      });
    }
    species = json['species'];
    gender = json['gender'];
    house = json['house'];
    dateOfBirth = json['dateOfBirth'];
    yearOfBirth = json['yearOfBirth'];
    wizard = json['wizard'];
    ancestry = json['ancestry'];
    eyeColour = json['eyeColour'];
    hairColour = json['hairColour'];
    wand = json['wand'] != null ? Wand.fromJson(json['wand']) : null;
    patronus = json['patronus'];
    hogwartsStudent = json['hogwartsStudent'];
    hogwartsStaff = json['hogwartsStaff'];
    actor = json['actor'];
    if (json['alternate_actors'] != null) {
      alternateActors = <AlternateActors>[];
      json['alternate_actors'].forEach((v) {
        alternateActors!.add(AlternateActors.fromJson(v));
      });
    }
    alive = json['alive'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    if (alternateNames != null) {
      data['alternate_names'] =
          alternateNames!.map((v) => v.toJson()).toList();
    }
    data['species'] = species;
    data['gender'] = gender;
    data['house'] = house;
    data['dateOfBirth'] = dateOfBirth;
    data['yearOfBirth'] = yearOfBirth;
    data['wizard'] = wizard;
    data['ancestry'] = ancestry;
    data['eyeColour'] = eyeColour;
    data['hairColour'] = hairColour;
    if (wand != null) {
      data['wand'] = wand!.toJson();
    }
    data['patronus'] = patronus;
    data['hogwartsStudent'] = hogwartsStudent;
    data['hogwartsStaff'] = hogwartsStaff;
    data['actor'] = actor;
    if (alternateActors != null) {
      data['alternate_actors'] =
          alternateActors!.map((v) => v.toJson()).toList();
    }
    data['alive'] = alive;
    data['image'] = image;
    return data;
  }
}

class AlternateNames {
  String? name;

  AlternateNames({this.name});

  AlternateNames.fromJson(Map<String, dynamic> json) {
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    return data;
  }
}

class Wand {
  String? wood;
  String? core;
  double? length;

  Wand({this.wood, this.core, this.length});

  Wand.fromJson(Map<String, dynamic> json) {
    wood = json['wood'];
    core = json['core'];
    length = json['length'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['wood'] = wood;
    data['core'] = core;
    data['length'] = length;
    return data;
  }
}

class AlternateActors {
  String? actor;

  AlternateActors({this.actor});

  AlternateActors.fromJson(Map<String, dynamic> json) {
    actor = json['actor'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['actor'] = actor;
    return data;
  }
}