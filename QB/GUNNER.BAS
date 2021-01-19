CLS
 LET gun.x = 80
 LET gun.y = 50
 GOTO main.screen
ender:
 END
main.screen:
 CLS
 PRINT " ********* "
 PRINT "   GUNNER  "
 PRINT " ********* "
 PRINT
 PRINT "Type S to Start"
 PRINT "Type M to access Mode Setup"
 PRINT "Type Q to Exit"
 PRINT
 INPUT ">", inp.ms$
 IF inp.ms$ = "S" THEN GOTO start
 IF inp.ms$ = "M" THEN GOTO mode.setup
 IF inp.ms$ = "Q" THEN GOTO ender
start:
 CLS
 LET x = 80
 LET y = 50
 GOTO new.game
new.game:
 CLS
 SOUND 100, 5
 SOUND 500, 7
 SOUND 100, 8
 SOUND 500, 2
 SOUND 0, 2
 SOUND 500, 2
 LET x1 = 200
 LET y1 = 40
 LET x2 = 120
 LET y2 = 60
 LET x3 = 220
 LET y3 = 20
 LET x4 = 10
 LET y4 = 40
 CLS
 SCREEN 13
 PRINT "---------------"
 PRINT "  MISSION : 1  "
 PRINT "---------------"
 PRINT
 INPUT "Type GO to continue", key$
 GOTO game.main
game.main:
 CLS
 SCREEN 13
 CIRCLE (x, y), 5
 CIRCLE (200, 40), 3
 CIRCLE (120, 60), 3
 CIRCLE (220, 20), 3
 CIRCLE (80, 50), 3
 CIRCLE (10, 40), 3
 PSET (x1, y1), 4
 PSET (x2, y2), 4
 PSET (x3, y3), 4
 PSET (x4, y4), 4
 INPUT ":", cmd$
 IF cmd$ = "w" THEN y = y - 5
 IF cmd$ = "s" THEN y = y + 5
 IF cmd$ = "a" THEN x = x - 5
 IF cmd$ = "d" THEN x = x + 5
 IF cmd$ = "back" THEN GOTO start
 IF cmd$ = "exit" THEN GOTO ender
 LET x1 = x1 - 1
 LET x2 = x2 + 1
 LET y1 = y1 - 1
 LET y2 = y2 - 1
 LET x3 = x3 + 1
 LET x4 = x4 + 1
 LET y3 = y3 + 1
 LET y4 = y4 - 1
 IF x = x1 AND y = y1 THEN x1 = 0
 IF x = x2 AND y = y2 THEN x2 = 0
 IF x = x3 AND y = y3 THEN x3 = 0
 IF x = x4 AND y = y4 THEN x4 = 0
 IF x1 = 0 AND x2 = 0 AND x3 = 0 AND x4 = 0 THEN GOTO winner.pass
 GOTO game.main
winner.pass:
 CLS
mode.setup:

