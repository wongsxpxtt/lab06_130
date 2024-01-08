class Hobby {
  final String name;
  bool checked;

  Hobby({required this.name, required this.checked});

  static List<Hobby> getHobby(){
    return [
      Hobby(name: "เล่นโเชียล", checked: true),
      Hobby(name: "เล่นเกมส์", checked: false),
      Hobby(name: "ฟังเพลง", checked: false),
    ];
  }
}