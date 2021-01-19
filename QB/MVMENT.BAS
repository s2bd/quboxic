CLS
LET a.x = 60
LET a.y = 40
LET b.x = 50
LET b.y = 20
boom:
 CLS
 SCREEN 13
 PSET (a.x, a.y), 2
 PSET (b.x, b.y), 3

 c.go$ = INKEY$
 SELECT CASE c.go$
 CASE "W"
 PSET (a.x, a.y - 5), 2
 CASE "S"
 PSET (a.x, a.y + 5), 2
 CASE "A"
 PSET (a.x - 5, a.y), 2
 CASE "D"
 PSET (a.x + 5, a.y), 2
 END SELECT

