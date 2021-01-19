GOTO main.screen
main.screen:
'PRESS THE F5 BUTTON TO START
'------------------------------------------------
'Made by As39002 , the game is in total freakout
'memory. So please do NOT attempt to copy the
'system files onto any means of production.
'This may lead to 48 months of imprisonment.
'------------------------------------------------
CLS
 SCREEN 7
 PRINT
 PRINT
 COLOR 4
 PRINT "       GERMATTAX    v.1.0.0 "
 COLOR 2
 PRINT "Made by As39002"
 COLOR 3
 PRINT " > Main Menu < "
 COLOR 6
 PRINT " START = type S "
 PRINT " EXIT  = type Q "
 PRINT
 PRINT
 PRINT "           Hope you enjoy it! :) "

 INPUT ">", inp$
 IF inp$ = "S" THEN GOTO starter
 IF inp$ = "Q" THEN GOTO ender
 IF inp$ = "M" THEN GOTO mega.war

starter:
 PRINT
 PRINT
 PRINT
 COLOR 3
 PRINT "     Mission 1    "
 COLOR 5
 PRINT
 PRINT
 PRINT "Hint:-          "
 COLOR 4
 PRINT " type W,A,S,D to move "
 SOUND 100, 40
 LET germ.x = 30
 LET germ.y = 30
 LET germ2.x = 80
 LET germ2.y = 80
germ.game:
 CLS
 PSET (40, 40), 6
 PSET (80, 50), 6
 PSET (35, 25), 6
 PSET (90, 81), 7
 PSET (90, 80), 7
 PSET (90, 79), 7
 IF germ.x = 40 AND germ.y = 40 THEN GOTO loser
 IF germ.x = 80 AND germ.y = 50 THEN GOTO loser
 IF germ.x = 35 AND germ.y = 25 THEN GOTO loser
 IF germ.x = 90 AND germ.y = 80 THEN GOTO mission.2
 PSET (germ.x, germ.y), 2
 PSET (germ2.x, germ2.y), 4


 INPUT ">", gm.mv$
 IF gm.mv$ = "d" THEN germ.x = germ.x + 5
 IF gm.mv$ = "a" THEN germ.x = germ.x - 5
 IF gm.mv$ = "s" THEN germ.y = germ.y + 5
 IF gm.mv$ = "w" THEN germ.y = germ.y - 5
 IF gm.mv$ = "exit" THEN GOTO ender
 IF gm.mv$ = "back" THEN GOTO main.screen
 IF gm.mv$ = "i" THEN germ2.y = germ2.y - 5
 IF gm.mv$ = "k" THEN germ2.y = germ2.y + 5
 IF gm.mv$ = "j" THEN germ2.x = germ2.x - 5
 IF gm.mv$ = "l" THEN germ2.x = germ2.x + 5

 GOTO germ.game

loser:
 PRINT " Ha Ha Ha !!! YOU LOST!!! ;) "
 SOUND 400, 40
 SOUND 600, 40
 SOUND 500, 40
 GOTO main.screen

mission.2:

mega.war:
  CLS
  PRINT
  PRINT
  PRINT
  COLOR 6
  PRINT " *************************** "
  PRINT "      THE ROOM OF DANGER     "
  PRINT "     --------------------    "
  PRINT "      MISSION 1 : GET THE    "
  PRINT "    A-5 BOMB FROM THE LOBBY  "
  PRINT " *************************** "
  PRINT
  PRINT
  COLOR 2
  PRINT " Do you accept? (y/n) "
  COLOR 7
  INPUT ">", accpt1$
  IF accpt1$ = "Y" THEN GOTO mw.mission.1
  IF accpt1$ = "y" THEN GOTO mw.mission.1
  IF accpt1$ = "N" THEN GOTO main.screen
  IF accpt1$ = "n" THEN GOTO main.screen
  LET a.x = 50
  LET a.y = 50
  LET b.x = 70
  LET b.y = 240
  LET c.x = 70
  LET c.y = 140
  LET d.x = 60
  LET d.y = 80

  GOTO mw.mission.1
 
mw.mission.1:
  CLS
  SCREEN 13
  PSET (a.x, a.y), 7
  PSET (b.x, b.y), 6
  PSET (c.x, c.y), 2
  PSET (d.x, d.y), 9

  INPUT ">", mv$
  IF mv$ = "w" THEN a = a.y - 5
  IF mv$ = "s" THEN a = a.y + 5
  IF mv$ = "a" THEN a = a.x - 5
  IF mv$ = "d" THEN a = a.x + 5
  IF mv$ = "exit" THEN GOTO ender
  IF mv$ = "back" THEN GOTO main.screen
 
  IF mv$ = "t" THEN b = b.y - 5
  IF mv$ = "g" THEN b = b.y + 5
  IF mv$ = "f" THEN b = b.x - 5
  IF mv$ = "h" THEN b = b.x + 5

  IF mv$ = "i" THEN c.y = c.y - 5
  IF mv$ = "k" THEN c.y = c.y + 5
  IF mv$ = "j" THEN c.x = c.x - 5
  IF mv$ = "l" THEN c.x = c.x + 5

  IF mv$ = "8" THEN d.y = d.y - 5
  IF mv$ = "2" THEN d.y = d.y + 5
  IF mv$ = "4" THEN d.x = d.x - 5
  IF mv$ = "6" THEN d.x = d.x + 5

  GOTO mw.mission.1

ender:
 END



