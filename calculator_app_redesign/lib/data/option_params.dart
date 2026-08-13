class OptionParams {
  OptionParams({
    required this.label,
    required this.f1,
    required this.v1,
    required this.f2,
    required this.v2,
  });

  final String label;
  final String f1;
  final String v1;
  final String f2;
  final String v2;
}

final optionParams = [
  // Area
  OptionParams(
    label: "Area",
    f1: "Acres",
    v1: "1 ac",
    f2: "Square metres",
    v2: "4,046.8564224 m²",
  ),
  // Length
  OptionParams(
    label: "Length",
    f1: "Inches",
    v1: "1 in",
    f2: "Centimetres",
    v2: "2.54 cm",
  ),
  // Temp
  OptionParams(
    label: "Temperature",
    f1: "Fahrenheit",
    v1: "1 °F",
    f2: "Celsius",
    v2: "-17.222222 °C",
  ),
  // Volume
  OptionParams(
    label: "Volume",
    f1: "Acres",
    v1: "1 ac",
    f2: "Square metres",
    v2: "4,046.8564224 m²",
  ),
  // Mass
  OptionParams(
    label: "Mass",
    f1: "Pounds",
    v1: "10 lbs",
    f2: "Kilogrammes",
    v2: "4.53592 kg",
  ),
  // Data
  OptionParams(
    label: "Data",
    f1: "Kilobytes",
    v1: "1 KB",
    f2: "Megabytes",
    v2: "0.001 MB",
  ),
  // Time
  OptionParams(
    label: "Time",
    f1: "Seconds",
    v1: "1 s",
    f2: "Square metres",
    v2: "0.00027777778 h",
  ),
  // Speed
  OptionParams(
    label: "Speed",
    f1: "Metres per second",
    v1: "1 m/s",
    f2: "Inches per second",
    v2: "39.3701 in/s",
  ),
  // Tip
  OptionParams(
    label: "Tip",
    f1: "Metres per second",
    v1: "1 m/s",
    f2: "Inches per second",
    v2: "39.3701 in/s",
  ),
];