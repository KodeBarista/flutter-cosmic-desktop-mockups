const int _rows = 5;
const int _pctPerRow = 100 ~/ _rows; // 20
const int _boltRowIndex = _rows ~/ 2; // middle row (index 2 of 0..4)

enum _RowState { m1, m2, m3 }

String _symbol(_RowState state) {
  switch (state) {
    case _RowState.m1:
      return '░'; // empty / less-than-half charged row
    case _RowState.m2:
      return '▒'; // half-or-more charged row
    case _RowState.m3:
      return '█'; // fully charged row
  }
}

_RowState _rowState(int percent, int rowIndexFromBottom) {
  final low = rowIndexFromBottom * _pctPerRow; // bottom of this row's range
  if (percent >= low + _pctPerRow) {
    return _RowState.m3;
  } else if (percent >= low + _pctPerRow ~/ 2) {
    return _RowState.m2;
  } else {
    return _RowState.m1;
  }
}

/// Renders the battery icon for [percent] (0-100), showing the lightning
/// bolt on the middle row only when [charging] is true.
String batteryIcon(int percent, bool charging) {
  final int clamped = percent < 0 ? 0 : (percent > 100 ? 100 : percent);
  final buffer = StringBuffer();

  buffer.writeln(' ▄▄▄');
  buffer.writeln('┌───┐');

  // draw top row (index 4) down to bottom row (index 0)
  for (int i = _rows - 1; i >= 0; i--) {
    final state = _rowState(clamped, i);
    final ch = _symbol(state);
    final row = (i == _boltRowIndex && charging) ? '$ch⚡$ch' : '$ch$ch$ch';
    buffer.writeln('│$row│');
  }
  buffer.write('└───┘');

  return buffer.toString();
}