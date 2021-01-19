GOTO intro
intro:
 CLS
 SOUND 100, 2
 SOUND 500, 1
 SOUND 100, 2
 SOUND 500, 25
 PRINT
 PRINT
 PRINT
 PRINT " AS39002 proudly "
 PRINT "   presents....  "
 SOUND 100, 2
 SOUND 500, 1
 SOUND 100, 2
 SOUND 500, 25
 CLS
 PRINT
 PRINT
 PRINT
 PRINT "  WAR MAZE "
 PRINT " ---------- "
 SOUND 100, 2
 SOUND 500, 1
 SOUND 100, 2
 SOUND 500, 25
 CLS
 PRINT
 PRINT
 PRINT
 PRINT " Audio transmission by "
 PRINT "     BASS-MASS         "
 SOUND 100, 2
 SOUND 500, 1
 SOUND 100, 2
 SOUND 500, 25
 CLS
 PRINT
 PRINT
 PRINT
 PRINT " Game script by "
 PRINT "    Q BASIC    "
 SOUND 100, 2
 SOUND 500, 1
 SOUND 100, 2
 SOUND 500, 25
 CLS
 PRINT
 PRINT
 PRINT
 PRINT " Produced by "
 PRINT "   AS39002   "
 SOUND 100, 2
 SOUND 500, 1
 SOUND 100, 2
 SOUND 500, 25
 GOTO main.game
ending.warmaze:
 END
main.game:
 CLS
 SCREEN 13
 COLOR 2
 PRINT "*********************"
 COLOR 4
 PRINT " SURVIVAL IN THE WAR "
 COLOR 2
 PRINT "*********************"
 PRINT
 COLOR 15
 PRINT " This is the base calling in..."
 PRINT " Marco, is that you? Quick! Get"
 PRINT "to the frontlines with the stuff"
 PRINT "from the docks. We're counting on"
 PRINT "your skills!"
 PRINT
 COLOR 6
 INPUT "Type Y to continue... ", cont$
 GOTO new.game
new.game:
CLS
LET x = 40
LET y = 30
LET x1 = 60
LET y1 = 40
LET x2 = 80
LET y2 = 90
LET man.x1 = 60
LET man.x2 = 60
LET man.x3 = 70
LET man.x4 = 70
LET man.x5 = 80
LET man.y1 = 20
LET man.y2 = 20
LET man.y3 = 30
LET man.y4 = 50
LET man.y5 = 20
LET flag.x1 = 120
LET flag.x2 = 130
LET flag.x3 = 140
LET flag.x4 = 150
LET flag.y1 = 160
LET flag.y2 = 160
LET flag.y3 = 160
LET flag.y4 = 160
LET die.x1 = 1
LET die.x2 = 320
LET die.y1 = 1
LET die.y2 = 1
GOTO prepare.kit.1
prepare.kit.1:
CLS
COLOR 2
PRINT " This the tool kit for preparations"
PRINT " You can choose the weapons you "
PRINT "recquire in the missions. "
PRINT
COLOR 4
PRINT " Let's make it count, for now."
PRINT " Hurry up, and select your primary"
PRINT "weapon. Just type the number of "
PRINT "the item, to use it."
PRINT
COLOR 6
PRINT " *1* Hand knife - $50"
PRINT " *2* Pistol - $200"
PRINT " *3* Shotgun - $600"
PRINT " *4* Rifle - $1200"
PRINT " *5* RPG - $4000"
PRINT
COLOR 8
INPUT "Type the desired weapon's number: ", wpn.no
IF wpn.no = 1 THEN PRINT "Knife selected"
IF wpn.no = 2 THEN PRINT "Pistol selected"
IF wpn.no <> 1 AND wpn.no <> 2 THEN GOTO prepare.kit.1
SOUND 100, 2
SOUND 200, 2
SOUND 300, 3
SOUND 400, 3
SOUND 500, 5
GOTO test.game
test.game:
CLS
'LET x = 40
'LET y = 30
'LET x1 = 60
'LET y1 = 40
'LET x2 = 80
'LET y2 = 90


PSET (x, y), 2
PSET (60, 80), 6
PSET (60, 81), 6
PSET (60, 82), 6
PSET (60, 83), 6
PSET (60, 83), 6

PSET (man.x1, man.y1), 4
PSET (man.x2, man.y2), 4
PSET (man.x3, man.y3), 4
PSET (man.x4, man.y4), 4
PSET (man.x5, man.y5), 4

CIRCLE (120, 40), 8
CIRCLE (120, 40), 4
CIRCLE (120, 40), 2

PSET (flag.x1, flag.y1), 2
PSET (flag.x2, flag.y2), 2
PSET (flag.x3, flag.y3), 2
PSET (flag.x4, flag.y4), 2

INPUT ":", cmd$
IF cmd$ = "w" THEN y = y - 5
IF cmd$ = "s" THEN y = y + 5
IF cmd$ = "a" THEN x = x - 5
IF cmd$ = "d" THEN x = x + 5
IF cmd$ = "x" THEN GOTO shot.fire
IF cmd$ = "back" THEN GOTO main.game
IF cmd$ = "exit" THEN GOTO ending.warmaze
IF cmd$ = "die" THEN GOTO die.war

man.x1 = man.x1 - 1
man.x2 = man.x2 + 1
man.x3 = man.x3 - 1
man.x4 = man.x4 + 1
man.x5 = man.x5 - 1

man.y1 = man.y1 + 1
man.y2 = man.y2 - 1
man.y3 = man.y3 + 1
man.y4 = man.y4 - 1
man.y5 = man.y5 + 1
  
flag.x1 = flag.x1 - 1
flag.x2 = flag.x2 - 1
flag.x3 = flag.x3 + 1
flag.x4 = flag.x4 + 1

flag.y1 = flag.y1 - 1
flag.y2 = flag.y2 - 1
flag.y3 = flag.y3 - 1
flag.y4 = flag.y4 - 1

x1 = x1 - 1
x2 = x2 + 1

y1 = y1 - 1
y2 = y2 + 1

IF x = man.x1 AND y = man.y1 THEN GOTO die.war
IF x = man.x2 AND y = man.y2 THEN GOTO die.war
IF x = man.x3 AND y = man.y3 THEN GOTO die.war
IF x = man.x4 AND y = man.y4 THEN GOTO die.war
IF x = x1 AND y = y1 THEN GOTO die.war
IF x = x2 AND y = y2 THEN GOTO die.war
IF x = x.goal AND y = y.goal THEN GOTO win.war

GOTO test.game
shot.fire:
CLS
'LET x = 40
'LET y = 30
'LET x1 = 60
'LET y1 = 40
'LET x2 = 80
'LET y2 = 90


CIRCLE (x, y), 2
PSET (60, 80), 6
PSET (60, 81), 6
PSET (60, 82), 6
PSET (60, 83), 6
PSET (60, 83), 6

PSET (man.x1, man.y1), 4
PSET (man.x2, man.y2), 4
PSET (man.x3, man.y3), 4
PSET (man.x4, man.y4), 4
PSET (man.x5, man.y5), 4

CIRCLE (120, 40), 8
CIRCLE (120, 40), 4
CIRCLE (120, 40), 2

PSET (flag.x1, flag.y1), 2
PSET (flag.x2, flag.y2), 2
PSET (flag.x3, flag.y3), 2
PSET (flag.x4, flag.y4), 2

SOUND 900, 2
SOUND 800, 2
SOUND 700, 2

man.x1 = man.x1 - 1
man.x2 = man.x2 + 1
man.x3 = man.x3 - 1
man.x4 = man.x4 + 1
man.x5 = man.x5 - 1

man.y1 = man.y1 + 1
man.y2 = man.y2 - 1
man.y3 = man.y3 + 1
man.y4 = man.y4 - 1
man.y5 = man.y5 + 1
  
flag.x1 = flag.x1 - 1
flag.x2 = flag.x2 - 1
flag.x3 = flag.x3 + 1
flag.x4 = flag.x4 + 1

flag.y1 = flag.y1 - 1
flag.y2 = flag.y2 - 1
flag.y3 = flag.y3 - 1
flag.y4 = flag.y4 - 1

x1 = x1 - 1
x2 = x2 + 1

y1 = y1 - 1
y2 = y2 + 1

IF x = man.x1 AND y = man.y1 THEN GOTO die.war
IF x = man.x2 AND y = man.y2 THEN GOTO die.war
IF x = man.x3 AND y = man.y3 THEN GOTO die.war
IF x = man.x4 AND y = man.y4 THEN GOTO die.war
IF x = x1 AND y = y1 THEN GOTO die.war
IF x = x2 AND y = y2 THEN GOTO die.war
IF x = x.goal AND y = y.goal THEN GOTO win.war

GOTO test.game
die.war:
LINE (die.x1, die.y1)-(die.x2, die.y2), 4
SOUND 500, 5
LET die.y1 = die.y1 + 5
LET die.y2 = die.y2 + 5
IF die.y1 = 320 AND die.y2 = 320 THEN GOTO fail.war
GOTO die.war
fail.war:
SCREEN 13
PAINT (1, 1), 4
PRINT
PRINT
PRINT
COLOR 2
PRINT "      GAME OVER "
PRINT " you died in the war!!!"
GOTO main.game
win.war:
CLS
PRINT
PRINT
PRINT
SOUND 100, 2
SOUND 200, 2
SOUND 300, 2
COLOR 2
PRINT "     CONGRATULATIONS!!!"
PRINT " you made it through the war!!!"
SOUND 100, 20
SOUND 200, 20
SOUND 300, 20
GOTO main.game
 

