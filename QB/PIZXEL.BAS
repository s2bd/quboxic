CLS
LET x = 90
LET y = 40
LET x1 = 89
LET y1 = 40
LET x2 = 90
LET y2 = 41

LET a = 120
LET b = 90
LET a1 = 119
LET b1 = 90
LET a2 = 120
LET b2 = 91
 SCREEN 13
  PSET (x, y), 4
  PSET (x1, y1), 4
  PSET (x2, y2), 4
  PSET (x3, y3), 4
  PSET (x4, y4), 4
  PSET (x5, y5), 4
  PSET (x6, y6), 4

  PSET (a, b), 2
  PSET (a1, b1), 2
  PSET (a2, b2), 2

  a = a - 6
  b = b - 6
  TIMER

