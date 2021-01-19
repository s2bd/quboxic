CLS
 LET gun.x = 80
 LET gun.y = 50
 GOTO main.screen
ender:
 END
main.screen:
 CLS
 PRINT " **************** "
 PRINT "   PRISON ESCAPE  "
 PRINT " **************** "
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
 LET x.goal1 = 60
 LET y.goal1 = 60
 CLS
 SCREEN 13
 COLOR 4
 PRINT "---------------"
 COLOR 3
 PRINT "  PRISON CELLS  "
 COLOR 4
 PRINT "---------------"
 COLOR 7
 PRINT
 INPUT "Type GO to continue", key$
 GOTO game.main
game.main:
 CLS
 SCREEN 13
 PSET (x, y), 2
 CIRCLE (200, 40), 3
 CIRCLE (120, 60), 3
 CIRCLE (220, 20), 3
 CIRCLE (80, 50), 3
 CIRCLE (10, 40), 3
 CIRCLE (x.goal1, y.goal1), 5
 PSET (x1, y1), 4
 PSET (x2, y2), 4
 PSET (x3, y3), 4
 PSET (x4, y4), 4
 INPUT ":", cmd$
 IF cmd$ = "w" THEN y = y - 1
 IF cmd$ = "s" THEN y = y + 1
 IF cmd$ = "a" THEN x = x - 1
 IF cmd$ = "d" THEN x = x + 1
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
 IF x = x1 AND y = y1 THEN GOTO game.over
 IF x = x2 AND y = y2 THEN GOTO game.over
 IF x = x3 AND y = y3 THEN GOTO game.over
 IF x = x4 AND y = y4 THEN GOTO game.over
 IF x = x.goal1 AND y = y.goal1 THEN GOTO winner.pass
 GOTO game.main
winner.pass:
 CLS
 LET clr = 3
 LET pdr = 5
 COLOR clr
 PRINT "YEAH! You made it through"
 PRINT "the prison cells! Keep it"
 PRINT "going, pal!              "
 PRINT
 PRINT "Type GO to continue..."
 INPUT ":", key1$
 IF key1$ = "GO" THEN GOTO mission.2
 IF key1$ <> "GO" THEN GOTO winner.pass
 SWAP clr, pdr
 GOTO winner.pass
mission.2:
 CLS
 PRINT "----------------"
 PRINT " PRISON STORAGE "
 PRINT "----------------"
 PRINT
 INPUT "Type GO to continue", go1$
 LET x = 60
 LET y = 60
 LET x1 = 50
 LET y1 = 50
 LET x2 = 40
 LET y2 = 40
 GOTO m2.game
m2.game:
 CLS
 SCREEN 13
 LINE (90, 40)-(90, 80), 4
 LINE (180, 40)-(180, 80), 4
 LINE (40, 90)-(80, 90), 4
 LINE (40, 180)-(80, 180), 4
 PSET (x, y), 2
 CIRCLE (x1, y1), 6
 CIRCLE (x2, y2), 6
 INPUT ":", cmd$
 IF cmd$ = "w" THEN y = y - 1
 IF cmd$ = "s" THEN y = y + 1
 IF cmd$ = "a" THEN x = x - 1
 IF cmd$ = "d" THEN x = x + 1
 x1 = x1 - 5
 IF x1 <= 20 THEN x1 = x1 + 5
 IF x1 >= 50 THEN x1 = x1 - 5
 y1 = y1 - 5
 IF y1 <= 20 THEN y1 = y1 + 5
 IF y1 >= 50 THEN y1 = y1 - 5
 x2 = x2 - 5
 IF x2 <= 10 THEN x2 = x2 + 5
 IF x2 >= 40 THEN x2 = x2 - 5
 y2 = y2 - 5
 IF y2 <= 10 THEN y2 = y2 + 5
 IF y2 >= 40 THEN y2 = y2 - 5
 GOTO m2.game


game.over:
 PRINT "Oh no! You got killed!"
mode.setup:

