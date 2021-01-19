
CLS
SCREEN 13
PRINT " SpEeDrAcErZ "
PRINT
INPUT static$
GOTO var.load

ouch.end:
CLS
END

var.load:
CLS
LET a = 120
LET b = 120
LET c = 160
LET d = 120
LET e = 140
LET f = 100
LET g = 1
LET h = 130
LET i = 320
LET j = 130
LET k = 120
LET L = 120
LET m = 120
LET n = 100
LET o = 110
LET p = 95

LET rim.x1 = 120
LET rim.y1 = 120
LET rim.x2 = 160
LET rim.y2 = 120
LET car.color = 4
LET ant.color = 1
LET tyr.color = 1

LET hp.1 = 4
LET hp.2 = 4
LET hp.3 = 4
LET hp.4 = 4
LET hp.5 = 4
LET hp.6 = 4
LET car.name = 1
LET car1 = Titan
LET car2 = Mars
LET car3 = Zeus

game.car.colors:
 CLS
 SCREEN 13
  COLOR 4
  PRINT "    Select car specifications: "
  COLOR 7
  PRINT "========== RED(4)  BLUE(1) GREY(8)"
  COLOR 3
  PRINT "      select body color:"
  COLOR 7
  PRINT
  INPUT car.color
  PRINT "      select tyre color:"
  PRINT
  INPUT tyr.color
  PRINT " [ Let's ride now!!! ] "
  PRINT
  INPUT static$

game:
 CLS
  SCREEN 13
'wheels:
 CIRCLE (a, b), 10
 CIRCLE (a, b), 5
 CIRCLE (a, b), 1
 CIRCLE (c, d), 10
 CIRCLE (c, d), 5
 CIRCLE (c, d), 1
'car.body:
 LINE (a, b)-(c, d), car.color, BF
 LINE (c, d)-(e, f), car.color
 LINE (a, b)-(e, f), car.color
 LINE (k, L)-(m, n), car.color
 LINE (m, n)-(e, f), car.color
 LINE (m, n)-(c, d), car.color
 LINE (m, n)-(o, p), ant.color

  CIRCLE (rim.x1, rim.y1), 9, tyr.color
  CIRCLE (rim.x2, rim.y2), 9, tyr.color
'grass:
 LINE (g, h)-(i, j), 2
 LINE (g, h + 1)-(i, j + 1), 2
 LINE (g, h + 2)-(i, j + 2), 2
 LINE (g, h + 3)-(i, j + 3), 2
 LINE (g, h + 4)-(i, j + 4), 2
 LINE (g, h + 5)-(i, j + 5), 2
 LINE (g, h + 6)-(i, j + 6), 2
 LINE (g, h + 7)-(i, j + 7), 2
 LINE (g, h + 8)-(i, j + 8), 2
 LINE (g, h + 9)-(i, j + 9), 2
 LINE (g, h + 10)-(i, j + 10), 2
 LINE (g, h + 11)-(i, j + 11), 2
 LINE (g, h + 12)-(i, j + 12), 2
 LINE (g, h + 13)-(i, j + 13), 2
 LINE (g, h + 14)-(i, j + 14), 2

'health bar:
  LINE (120, 20)-(140, 20), hp.1
  LINE (140, 20)-(140, 25), hp.2
  LINE (120, 20)-(120, 25), hp.3
  LINE (120, 25)-(140, 25), hp.4
  LINE (120, 25)-(100, 20), hp.5
  LINE (100, 20)-(120, 20), hp.6
  PAINT (100, 20), 4, 4

'controls:
INPUT ">", keyp$
 SELECT CASE keyp$
  CASE "a"
   a = a - 6
   c = c - 6
   e = e - 6
   k = k - 6
   m = m - 6
   o = o - 6
   rim.x1 = rim.x1 - 6
   rim.x2 = rim.x2 - 6
  CASE "d"
   a = a + 6
   c = c + 6
   e = e + 6
   k = k + 6
   m = m + 6
   o = o + 6
   rim.x1 = rim.x1 + 6
   rim.x2 = rim.x2 + 6
  CASE "exit"
   GOTO ouch.end
  CASE "open"
   GOTO opener
 END SELECT
GOTO game

opener:
 CLS
 OPEN "" FOR RANDOM AS file
 PUT file


