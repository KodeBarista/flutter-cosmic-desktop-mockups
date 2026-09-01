enum ItemType { text, url, image }

class ClipboardItemModel {
  ClipboardItemModel({required this.type, required this.content});

  final ItemType type;
  final String content;
}

final clipboard = [
  ClipboardItemModel(type: ItemType.image, content: "assets/firetree.png"),
  ClipboardItemModel(
    type: ItemType.text,
    content: r"""
Linux hardware vendor System76 has pushed the highly anticipated Frosted Glass effect for the COSMIC desktop environment, first to Pop!_OS Linux users and later to everyone else, so here’s a first look.
System76 has been teasing us with the Frosted Glass effect for a while now, and we thought we’d have to wait until the major COSMIC 2.0 release of the Rust-based desktop environment to enjoy it. But Frosted Glass is finally here now and rolling out to current Pop!_OS Linux 24.04 LTS users.
""",
  ),
  ClipboardItemModel(type: ItemType.url, content: "https://9to5linux.com/first-look-at-cosmic-desktop-environments-frosted-glass-effect"),
  ClipboardItemModel(type: ItemType.image, content: "assets/wide-image.png"),
];
