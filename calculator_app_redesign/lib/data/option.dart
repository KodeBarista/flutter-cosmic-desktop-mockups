class Option {
  Option({required this.iconName, required this.label});

  final String iconName;
  final String label;
}

final List<Option> options = [
  Option(iconName: "area", label: "Area"),
  Option(iconName: "scale", label: "Length"),
  Option(iconName: "temp", label: "Temperature"),
  Option(iconName: "volume", label: "Volume"),
  Option(iconName: "mass", label: "Mass"),
  Option(iconName: "data", label: "Data"),
  Option(iconName: "time", label: "Timer"),
  Option(iconName: "speed", label: "Speed"),
  Option(iconName: "tip", label: "Tip"),
];
