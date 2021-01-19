CLS
SCREEN 13
LET c.x = 200
LET c.y = 200
GOTO menu

ball:
 CIRCLE (c.x + move.c.x, c.y + move.c.y), 5, 15
menu:
 CLS
 SCREEN 13
 PRINT " BALL GAME 2016 "
 PRINT
 PRINT "Type Quit to exit"
 PRINT
 PRINT
 PRINT "  Do you need instructions? y/n"
 INPUT menu.choice$
 IF menu.choice$ = "y" THEN GOTO game.rules
 IF menu.choice$ = "n" THEN GOTO game.menu
 IF menu.choice$ = "Quit" THEN END
 IF menu.choice$ = "quit" THEN END
game.rules:
 CLS
 PRINT "   Rules for the Game:-  "
 PRINT
 PRINT " Use W, A, S, D to move the ball."
 PRINT " Collect points to win levels."
 PRINT
 PRINT " Press Y to continue..."
 PRINT " Press N to exit the game"
 DO WHILE INKEY$ = game.menu.selection$
 SELECT CASE game.menu.selection$
 CASE "Y"
 GOTO game.menu
 CASE "N"
 GOTO end.game
 END SELECT
 LOOP
game.menu:
 CLS
 PRINT
 PRINT "Game Menu"
 PRINT
 INPUT "Type Start to start:-", game.start$
 IF game.start$ = "Start" THEN GOTO lv.1.game
 IF game.start$ = "start" THEN GOTO lv.1.game
 IF game.start$ = "back" THEN GOTO menu
lv.1.game:
 CLS
 SOUND 500, 19
 PRINT "             LEVEL ONE    "
 PRINT "         -----------------"
 PRINT "           THE WAREHOUSE  "
 SOUND 100, 4
 SOUND 200, 5
 SOUND 100, 6
 SOUND 600, 7
 SOUND 400, 8
 SOUND 900, 9
 CLS
 CIRCLE (c.x + move.c.x, c.y + move.c.y), 5, 15
 DO WHILE INKEY$ = button.tap$
 SELECT CASE button.tap$
 CASE "W"
 move.c.x = 10
 CASE "S"
 move.c.x = -10
 CASE "A"
 move.c.y = 10
 CASE "D"
 move.c.y = -10
 CASE "Q"
 GOTO pause.screen
 END SELECT
 LOOP
infinite.loop:
 LET c1 = 5
 LET c2 = 15
 LET c.x = 35
 LET c.y = 35
 LET move.c.x = 10
 LET move.c.y = 10
 CIRCLE (c.x + move.c.x, c.y + move.c.y), c1, c2
 DO WHILE INKEY$ = "W"
 CIRCLE (c.x - move.c.x, c.y - move.c.y), c1, c2
 LOOP
 DO WHILE INKEY$ = "S"
 CIRCLE (c.x + move.c.x, c.y + move.c.y), c1, c2
 LOOP
 GOTO infinite.loop
 
pause.screen:
 COLOR 4
 PRINT
 PRINT "Are you sure you want to quit? y/n"
 PRINT
 INPUT confirm.quit$
 IF confirm.quit$ = "y" THEN GOTO menu
 IF confirm.quit$ = "Y" THEN GOTO menu
 IF confirm.quit$ = "n" THEN GOTO lv.1.game
 IF confirm.quit$ = "N" THEN GOTO lv.1.game
end.game:
 PRINT "Ouch!"
 END
 


