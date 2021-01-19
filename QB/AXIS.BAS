CLS
 SCREEN 13
 COLOR 2
  PRINT " *** AXIS BENCHMARK *** "
  PRINT
  COLOR 15
  PRINT "   made by AS39002 (Mukto) "
  PRINT "   encoded by QBASIC "
  PRINT
  COLOR 4
  INPUT " < PRESS ENTER TO START >", static$
  COLOR 7
  GOTO var.load
var.load:
 CLS
 SCREEN 13
  LET time = 0
  LET click = 0
  LET a = 20
  LET b = 40
  LET c = 20
  LET d = 20
  LET e = 40
  LET f = 40
  LET g = 40
  LET h = 20
 GOTO axis

axis:
 CLS
  SCREEN 13
  PRINT " FPS:", time
  PRINT " CLK:", click
  LINE (a, b)-(c, d), 4
  LINE (e, f)-(g, h), 4
  LINE (g, h)-(a, b), 4
  LINE (c, d)-(e, f), 4
  time = time + 1
  IF time > 2 THEN a = a + 6
  IF time > 20 THEN a = a + 12
  IF time > 40 THEN a = a + 24
  IF time > 80 THEN a = a + 48
  IF time > 160 THEN a = a + 96
  IF time > 320 THEN click = click + 1
  IF time > 640 THEN time = 0
  IF click > 1200 THEN GOTO results
 GOTO axis

results:
 CLS
 SCREEN 13
  COLOR 4
  PRINT " Overall computer status:"
  COLOR 2
  PRINT "      GOOD "
  COLOR 4
  PRINT " Overall graphics adapter status:"
  COLOR 2
  PRINT "      GOOD "
  COLOR 4
  PRINT " RAM quality: "
  COLOR 8
  PRINT "      ADJUSTABLE "
  COLOR 4
  PRINT
  PRINT
  PRINT " HAVE A NICE DAY!!!   :) "
  END

