class MediaInfo {
  MediaInfo({
    required this.title,
    required this.artist,
    required this.artName,
    required this.seekTime,
    required this.mediaLength,
  });

  final String title;
  final String artist;
  final String artName;
  final String seekTime;
  final String mediaLength;
}

final mediaList = [
  MediaInfo(
    title: "Grustnyj dens",
    artist: "Artik & Asti",
    artName: "gd",
    seekTime: "0:58",
    mediaLength: "3:37",
  ),
  MediaInfo(
    title: "In a Hood Near You",
    artist: "Suni Clay",
    artName: "hny",
    seekTime: "2:48",
    mediaLength: "6:23",
  ),
  MediaInfo(
    title: "24K Magic",
    artist: "Bruno Mars",
    artName: "24km",
    seekTime: "0:47",
    mediaLength: "3:54",
  ),
  MediaInfo(
    title: "LET THE WORLD BURN",
    artist: "Chris Grey",
    artName: "ltwb",
    seekTime: "1:34",
    mediaLength: "2:42",
  ),
  MediaInfo(
    title: "Night Changes",
    artist: "One Direction",
    artName: "nc",
    seekTime: "0:27",
    mediaLength: "3:46",
  ),
];