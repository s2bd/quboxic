 CLS
 SCREEN 7
 LOCATE 10, 2
a:
 LET x1 = 20
 LET x2 = 20
 LET y1 = 35
 LET y2 = 35
 LET c1 = 2
 LINE (x1, y1)-(x2, y2), c1
control:
 DO WHILE INKEY$ = move$
 SELECT CASE move$
 CASE "W"
 LOCATE north
 CASE "S"
 LOCATE south
 CASE "A"
 LOCATE west
 CASE "D"
 LOCATE east
 CASE "Q"
 LOCATE ender
 END SELECT
 LOOP
north:
 LINE (x1, y1 - 1)-(x2, y2 - 1), c1
south:
 LINE (x1, y1 + 1)-(x2, y2 + 1), c1
west:
 LINE (x1 - 1, y1)-(x2 - 1, y2), c1
east:
 LINE (x1 + 1, y1)-(x2 + 1, y2), c1
ender:
 GOTO pinpoint.ender

pinpoint.ender:
 CLS
 PRINT "Goodbye ! :( "
 SOUND 100, 10
 SOUND 200, 5
 SOUND 300, 2.5
 END

