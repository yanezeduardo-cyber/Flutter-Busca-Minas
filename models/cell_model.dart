class Cell {
  bool isMine;
  bool isRevealed;
  bool isFlagged;
  int neighborMines;

  Cell({
    this.isMine = false,
    this.isRevealed = false,
    this.isFlagged = false,
    this.neighborMines = 0,
  });
}
