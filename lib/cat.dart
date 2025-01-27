import 'dart:convert';

class Cat {
  final String wid;
  final String title;
  final bool isRoot;
  final List<String> children;
  final String keywords;
  final String examsTitle;
  final List<String> examsArray;
  final String pathologiesTitle;
  final List<String> pathologiesArray;
  final String introduction;
  final String questionsHelper;
  final List<String> othercats;
  final String conclusion;

  Cat(
      this.wid,
      this.title,
      this.isRoot,
      this.children,
      this.keywords,
      this.examsTitle,
      this.examsArray,
      this.pathologiesTitle,
      this.pathologiesArray,
      this.introduction,
      this.questionsHelper,
      this.othercats,
      this.conclusion);

  Map<String, dynamic> toMap() {
    return {
      'wid': wid,
      'title': title,
      'isRoot': isRoot,
      'children': children,
      'keywords': keywords,
      'examsTitle': examsTitle,
      'examsArray': examsArray,
      'pathologiesTitle': pathologiesTitle,
      'pathologiesArray': pathologiesArray,
      'introduction': introduction,
      'questionsHelper': questionsHelper,
      'othercats': othercats,
      'conclusion': conclusion,
    };
  }

  factory Cat.fromMap(Map<String, dynamic> map) {
    return Cat(
      map['wid'] ?? '',
      map['title'] ?? '',
      map['isRoot'] ?? false,
      List<String>.from(map['children'] ?? []),
      map['keywords'] ?? '',
      map['examsTitle'] ?? '',
      List<String>.from(map['examsArray'] ?? []),
      map['pathologiesTitle'] ?? '',
      List<String>.from(map['pathologiesArray'] ?? []),
      map['introduction'] ?? '',
      map['questionsHelper'] ?? '',
      List<String>.from(map['othercats'] ?? []),
      map['conclusion'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Cat.fromJson(String source) => Cat.fromMap(json.decode(source));
}
