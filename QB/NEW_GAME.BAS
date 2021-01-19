CLS
SCREEN 7
 PRINT "Welcome!"
 PRINT
 PRINT "Press Y to continue OR N to exit"
 start1$ = INKEY$
  SELECT CASE start1$
  CASE "Y"
  GOTO homescreen
  CASE "N"
  GOTO ending
  END SELECT

homescreen:
 CLS
 PRINT "Do OR Die"
 PRINT
 PRINT "Press S to start!"
 start2$ = INKEY$
  SELECT CASE start2$
  CASE "S"
  GOTO menu1
  CASE "Q"
  GOTO ending
  END SELECT

menu1:
 PRINT "Hell On Earth"
 PRINT
 PRINT "          * Main Menu * "
 PRINT "         START = press S"
 PRINT "         QUIT = press Q"
 menu1$ = INKEY$
  SELECT CASE menu1$
  CASE "S"
  GOTO lv.1
  CASE "Q"
  GOTO homescreen
  END SELECT

lv.1:
 'PSET (x, y), c where x = horizontal pixel, y = vertical pixel, c = color number.
  PSET (30, 25), 3
  PSET (30, 26), 4
  PSET (30, 27), 5
  PSET (30, 28), 6
  PSET (30, 29), 7
  PSET (35, 25), 3
  PSET (35, 26), 4
  PSET (35, 27), 5
  PSET (35, 28), 6
  PSET (35, 29), 7

ending:
 PRINT "Are you sure you want to quit?"
 end$ = INKEY$
  SELECT CASE end$
  CASE "Y"
  GOTO quit
  CASE "N"
  GOTO homescreen
  END SELECT

quit:
 END

