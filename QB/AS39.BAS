' This was one of my first programs written in my childhood. Supposed to a general multipurpose software for testing QBASIC functions.
' @author dmimukto 2015

'******************************************************
'THE As39002 Application Timepassing Software         *
'Made by the As39002 company                          *
'-----------------------------------------------      *
'Press Shift + F5 buttons to START             -      *
'-----------------------------------------------      *
'Do NOT edit the following command lines...unless you *
'are an authorised developer.                         *
'******************************************************
CLS

SOUND 600, 18.2
SOUND 400, 18.2
SOUND 200, 18.2
SOUND 100, 18.2
COLOR 15

PRINT "Loading..."
PRINT "Loading..."
PRINT "Loading..."

COLOR 12
CLS
PRINT "booting from CD/DVD<1%>"
SOUND 500, 5
COLOR 6, 12
PRINT " "
COLOR 12

CLS
PRINT "booting from CD/DVD<23%>"
SOUND 500, 5
COLOR 6, 12
PRINT "    "
COLOR 12

CLS
PRINT "booting from CD/DVD<38%>"
SOUND 500, 5
COLOR 6, 12
PRINT "      "
COLOR 12

CLS
PRINT "booting from CD/DVD<39%>"
SOUND 500, 5
COLOR 6, 12
PRINT "       "
COLOR 12

CLS
PRINT "booting from CD/DVD<40%>"
SOUND 500, 5
COLOR 6, 12
PRINT "        "
COLOR 12

CLS
PRINT "booting from CD/DVD<44%>"
SOUND 500, 5
COLOR 6, 12
PRINT "          "
COLOR 12

CLS
PRINT "booting from CD/DVD<80%>"
SOUND 500, 5
COLOR 6, 12
PRINT "               "
COLOR 12

CLS
PRINT "booting from CD/DVD<95%>"
SOUND 500, 5
COLOR 6, 12
PRINT "                    "
COLOR 12

CLS
PRINT "booting from CD/DVD<100%>"
SOUND 500, 5
COLOR 6, 12
PRINT "                        "
COLOR 12

starter:
CLS
COLOR 15
SOUND 500, 19
PRINT "ready :)"
CLS
SCREEN 13

CIRCLE (300, 50), 20, 4
CIRCLE (320, 50), 10, 3
CIRCLE (320, 10), 40, 6
LINE (320, 43)-(280, 65), 7, B
CIRCLE (123, 48), 35, 15
CIRCLE (123, 47), 34, 14
CIRCLE (123, 46), 33, 13
CIRCLE (123, 45), 32, 12
CIRCLE (48, 27), 60, 5
CIRCLE (49, 28), 60, 2
CIRCLE (50, 29), 60, 3

LET c.x = 122
LET c.y = 124

CIRCLE (c.x, c.y), 100, 1
CIRCLE (c.x - 1, c.y + 1), 100, 2
CIRCLE (c.x - 2, c.y + 2), 100, 3
CIRCLE (c.x - 3, c.y + 3), 100, 4
CIRCLE (c.x - 4, c.y + 4), 100, 5
CIRCLE (c.x - 5, c.y + 5), 100, 6
CIRCLE (c.x - 6, c.y + 6), 100, 7

PSET (128, 67), 15
PSET (127, 67), 15
PSET (126, 67), 15
PSET (125, 67), 15
PSET (127, 66), 15
PSET (126, 65), 15
PSET (125, 64), 15

COLOR 12
PRINT "*** AS39002 ***"
COLOR 12
PRINT "version alpha b2.2.7"
COLOR 14
PRINT "Made by Mukto"
SOUND 500, 5
SOUND 400, 5
SOUND 300, 5
SOUND 200, 5
SOUND 100, 5
COLOR 15
PRINT
PRINT "Hello :)"
PRINT
INPUT "Enter your name", name$
SOUND 900, 5
PRINT
PRINT "Nice to meet you "; name$
PRINT
COLOR 11
PRINT "Choose option"
COLOR 12
PRINT "* Start *"
PRINT
PRINT "* Exit *"
COLOR 15
INPUT "type start to play", start$
COLOR 12
IF start$ = "Exit" THEN GOTO ending.stage
IF start$ = "mbz" THEN GOTO MEGA.BALLz
IF start$ = "start" THEN PRINT "* riddles *"
PRINT "* battleships *"
PRINT "* age tester *"
PRINT "* germ game *"
PRINT "* artworks *"
PRINT "* escape! *"
PRINT "* war maze *"
PRINT "* cooper b *"
PRINT "*MEGA BALLz*"
PRINT
IF start$ <> "start" THEN END
COLOR 15
PRINT
INPUT "Type your desired content", com1$
IF com1$ = "catch the dot" THEN END
IF com1$ = "riddles" THEN GOTO riddles
IF com1$ = "age tester" THEN GOTO age.tester
IF com1$ = "artworks" THEN GOTO artwork
IF com1$ = "mega ballz" THEN GOTO MEGA.BALLz
IF com1$ = "battleships" THEN GOTO battleships
IF com1$ = "germ game" THEN GOTO germ.game
IF com1$ = "war maze" THEN GOTO war.maze
war.maze:
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

 


battleships:
 start.menu:
 CLS
 SCREEN 0
 COLOR 4
 PRINT "  Battleships XD "
 COLOR 3
 PRINT "Made by As39002"
 PRINT
 COLOR 7
 INPUT "Type GO to proceed...", go1$
 IF go1$ = "GO" THEN GOTO main.menu
 IF go1$ = "go" THEN GOTO main.menu

main.menu:
 CLS
 SCREEN 13
 COLOR 3
 PRINT "Name of player 1?"
 INPUT ">", PLR1$
 COLOR 4
 PRINT "  "; PLR1$; " is now ready!"
 PRINT
 COLOR 3
 PRINT "Name of player 2?"
 INPUT ">", PLR2$
 COLOR 2
 PRINT "  "; PLR2$; " is now ready!"
 PRINT
 COLOR 7
 PRINT "Now, let's move out!"
 INPUT "Type GO to proceed", go2$
 IF go2$ = "GO" THEN GOTO field.1
 IF go2$ = "go" THEN GOTO field.1

field.1:
 CLS
 PRINT " *** "; PLR1$; "'s Base *** "
 PRINT
 PRINT "Choose a ship:"
 COLOR 2
 PRINT " *1* AZAR 51 - power: 20 armor: 50"
 PRINT " *2* AZAR Dragon - power: 14 armor: 60"
 PRINT " *3* AZAR Tortilla - power: 25 armor: 12"
 COLOR 7
 INPUT "Type the ship's number:", ship.plr1$
 PRINT " Thanks for choosing that ship! :) "
 PRINT
 INPUT "Now type OK to proceed", ok1$
 IF ok1$ = "OK" THEN GOTO field.2
 IF ok1$ = "ok" THEN GOTO field.2

field.2:
 CLS
 PRINT " ***"; PLR2$; "'s Base *** "
 PRINT
 PRINT "Choose a ship:"
 COLOR 2
 PRINT " *1* AZAR 51 - power: 20 armor: 50"
 PRINT " *2* AZAR Dragon - power: 14 armor: 60"
 PRINT " *3* AZAR Tortilla - power: 25 armor: 12"
 COLOR 7
 INPUT "Type the ship's number:", ship.plr2$
 PRINT " Thanks for choosing that ship! :) "
 PRINT
 INPUT "Now type OK to proceed", ok2$
 IF ok2$ = "OK" THEN GOTO btl.field
 IF ok2$ = "ok" THEN GOTO btl.field

btl.field:
 CLS
 PRINT "Welcome "; PLR1$; " and "; PLR2$; " to the"
 PRINT "main battle field! Here we shall fight to"
 PRINT "the death as the ships strive to keep up"
 PRINT "with the Russians. Which MODE do you want"
 PRINT "to PLAY first?"
 PRINT
 PRINT "(1) * SURVIVAL * (1)"
 PRINT "(2) *   PvP    * (2)"
 PRINT
 INPUT "Please enter the no. of the MODE to begin", mode1$
 IF mode1$ = "1" THEN GOTO mode.1.field
 IF mode1$ = "2" THEN GOTO mode.2.field

 LET ship.X.x = 130
 LET ship.X.y = 130
 LET ship.Y.x = 160
 LET ship.Y.y = 160

mode.1.field:
 CLS
 SCREEN 13
 PSET (40, 30), 6
 CIRCLE (50, 60), 5
 CIRCLE (30, 60), 5
 CIRCLE (40, 120), 5
 CIRCLE (30, 150), 5
 CIRCLE (120, 70), 5
 LET ship.X$ = ship.plr1$
 LET ship.Y$ = ship.plr2$
 LET ship.X.x = ship.X.x
 LET ship.X.y = ship.X.y
 LET ship.Y.x = ship.Y.x
 LET ship.Y.y = ship.Y.y
 IF ship.X$ = "1" THEN PSET (ship.X.x, ship.X.y), 3
 IF ship.X$ = "2" THEN PSET (ship.X.x, ship.X.y), 4
 IF ship.X$ = "3" THEN PSET (ship.X.x, ship.X.y), 5
 IF ship.Y$ = "1" THEN PSET (ship.Y.x, ship.Y.y), 3
 IF ship.Y$ = "2" THEN PSET (ship.Y.x, ship.Y.y), 4
 IF ship.Y$ = "3" THEN PSET (ship.Y.x, ship.Y.y), 5
 INPUT ":", mv$
 IF mv$ = "w" THEN ship.X.y = ship.X.y - 10
 IF mv$ = "s" THEN ship.X.y = ship.X.y + 10
 IF mv$ = "a" THEN ship.X.x = ship.X.x - 10
 IF mv$ = "d" THEN ship.X.x = ship.X.x + 10
 IF mv$ = "exit" THEN GOTO ender
 IF mv$ = "back" THEN GOTO btl.field
 GOTO mode.1.field

mode.2.field:

ender:
END









germ.game:
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




riddles:
CLS
PRINT "*** RIDDLE MASTER 2000 ***"
SOUND 500, 1
SOUND 400, 1
SOUND 300, 1
SOUND 500, 1
SOUND 400, 1
SOUND 300, 1
SOUND 500, 1
SOUND 400, 1
SOUND 300, 1
SOUND 900, 5
COLOR 4
PRINT "Are you ready?"
SOUND 200, 5
SOUND 500, 5
PRINT
INPUT "Type your reply please", mood1$
PRINT
IF mood1$ = "no" THEN GOTO starter
IF mood1$ = "yes" THEN PRINT ":9 Let's get rolling!"
SOUND 200, 2
SOUND 100, 1
SOUND 200, 3
SOUND 300, 4
SOUND 100, 1
COLOR 8
PRINT "WARNING! If you cannot answer a riddle properly, the whole system shall shut down!"
PRINT
COLOR 15
SOUND 600, 3
SOUND 500, 3
PRINT "Round 1"
PRINT
COLOR 11
PRINT " What goes up, but never comes down? "
PRINT
COLOR 15
INPUT " Enter your answer", ans1$
SOUND 400, 5
PRINT
IF ans1$ = "age" THEN PRINT "Good answer! :)"
IF ans1$ <> "age" THEN GOTO riddles
PRINT
COLOR 15
SOUND 600, 3
SOUND 500, 3
PRINT "Round 2"
PRINT
COLOR 11
PRINT "What keeps going, but you cant follow?"
PRINT
COLOR 15
INPUT " Enter your answer", ans2$
SOUND 400, 5
PRINT
IF ans2$ = "time" THEN PRINT "Good answer! :)"
IF ans2$ <> "time" THEN GOTO riddles
PRINT
COLOR 15
SOUND 600, 3
SOUND 500, 3
PRINT "Round 3"
PRINT
COLOR 11
PRINT "What is true for tree?"
PRINT
COLOR 15
INPUT "Enter your answer", ans3$
SOUND 400, 5
PRINT
IF ans3$ = "three" THEN PRINT "Good answer! :)"
IF ans3$ <> "three" THEN GOTO riddles
PRINT
SOUND 900, 10
SOUND 100, 10
COLOR 10
PRINT "Perfect answers!"
COLOR 6
PRINT
PRINT name$, ", you are the best! :) "
 'Music:
 scale$ = "CDEFGAB"
 PLAY "L16"
 FOR i% = 0 TO 6
  PLAY "O" + STR$(i%)
  PLAY "X" + VARPTR$(scale$)
 NEXT i%
CLS
SOUND 100, 3
SOUND 200, 3
SOUND 300, 3
PRINT " ;) "
CLS
COLOR 14
PRINT "--------------------"
PRINT "That's all for now!"
PRINT "--------------------"
SOUND 100, 5
SOUND 200, 5
SOUND 300, 5
COLOR 12
INPUT "Type quit to exit this program  OR type high scores to display your score OR type menu to go back to main menu", quit1$
IF quit1$ = "quit" THEN END
IF quit1$ = "high scores" THEN PRINT "Good work!"; name$; " you are the best!"
IF quit1$ = "menu" THEN GOTO starter
IF com1$ = "age tester" THEN GOTO age.tester
age.tester:
CLS
COLOR 4
SOUND 700, 1
SOUND 600, 2
SOUND 500, 3
SOUND 400, 4
SOUND 300, 5
SOUND 200, 6
SOUND 100, 7
PRINT
PRINT "------------------"
PRINT "***AGE TESTER***"
COLOR 10
PRINT "Made by Mukto"
PRINT
PRINT
COLOR 15
INPUT "Enter your age please", age1
SOUND 1000, 5
SOUND 500, 5
SOUND 100, 5
IF age1 < 7 THEN PRINT "You are a small child!"
IF age1 >= 7 THEN PRINT "You are a kid!"
IF age1 >= 12 THEN PRINT "You are a teenager!"
IF age1 >= 18 THEN PRINT "You are an adult!"
IF age1 >= 40 THEN PRINT "You are a middle-ager!"
IF age1 >= 60 THEN PRINT "You are too old!"
PRINT
COLOR 14
PRINT " Hope you enjoyed my program!"
COLOR 15
INPUT "Type goodbye to exit OR type menu to go back to mainscreen OR type continue if you are a developer", exit$
IF exit$ = "goodbye" THEN END
IF exit$ = "menu" THEN GOTO starter
IF exit$ = "continue" THEN GOTO MEGA.BALLz
MEGA.BALLz:
CLS
PRINT
PRINT "MEGA BALLz"
PRINT "-----------------"
PRINT "choose option:-"
COLOR 12
PRINT "*start*"
COLOR 14
PRINT "the game is still in construction"
COLOR 12
INPUT "type to play!", play1$
IF play1$ = "start" THEN GOTO game.megaballz
game.megaballz:
CLS
SCREEN 13
move.R.0:
 CLS
 LINE (150, 25)-(200, 50), 6
 LINE (200, 50)-(250, 75), 6
 CIRCLE (200, 50), 4
 INPUT "A - D", move.1$
 IF move.1$ = "A" THEN GOTO move.L.1
 IF move.1$ = "D" THEN GOTO move.R.1
move.L.1:
 CLS
 LINE (150, 25)-(200, 50), 6
 LINE (200, 50)-(250, 75), 6
 CIRCLE (150, 25), 4
 INPUT "A - D", move.2$
 IF move.2$ = "A" THEN GOTO move.L.2
 IF move.2$ = "D" THEN GOTO move.R.0
move.R.1:
 CLS
 LINE (150, 25)-(200, 50), 6
 LINE (200, 50)-(250, 75), 6
 CIRCLE (250, 75), 4
 INPUT "A - D", move.3$
 IF move.3$ = "A" THEN GOTO move.R.0
 IF move.3$ = "D" THEN GOTO move.R.2
move.L.2:
move.R.2:

artwork:
 CLS
 SCREEN 13
 COLOR 3
 PRINT "This section is for pro artists only!"
 PRINT "However, you can just visit this secton for fun!"
 PRINT
 INPUT "Please enter your artist ID: ", code.id
 IF code.id = 22012002 THEN GOTO artist.mukto
 IF code.id = 1123581321 THEN GOTO artist.mukto
 IF code.id = 1711975519 THEN GOTO artist.daddy
 IF code.id <> 1711975519 OR 1123581321 THEN GOTO artist.normal
artist.normal:
 CLS
 SCREEN 7
 PRINT
 COLOR 12, 3
 PRINT "      *** Artworks ***       "
 PRINT
 COLOR 6, 4
 PRINT "The perfect pixel artists' place for"
 PRINT "their initial support is now here!"
 PRINT
 COLOR 15
 PRINT "Choose an artwork to view:-"
 PRINT
 COLOR 4, 6
 PRINT "    * Steve * by Mukto    "
 PRINT "    * Sunny Hill * by Mukto "
 PRINT
 COLOR 15
 INPUT "Enter your choice:-", artwork.choice$
 IF artwork.choice$ = "Steve" THEN GOTO Steve.artwork
 IF artwork.choice$ = "Sunny Hill" THEN GOTO SunnyHill.artwork
 IF artwork.choice$ <> "Steve" THEN GOTO unknown.command.artwork
 IF artwork.choice$ <> "Sunny Hill" THEN GOTO unknown.command.artwork
unknown.command.artwork:
 PRINT "Sorry, command not recognised. Please try again!"
 SOUND 200, 3
 SOUND 100, 15
 SOUND 500, 19
 GOTO artist.normal
artist.mukto:
 CLS
 SCREEN 13
 PRINT
 PRINT "     PROFILE : MUKTO.ARTIST "
 PRINT "   **************************"
 PRINT "    personal artwork gallery "
 PRINT
 PRINT
 PRINT "Available artworks :-"
 PRINT
 PRINT "    * Steve * "
 PRINT "    * Sunny Hill *"
 PRINT
 INPUT "Type the name of the artwork to view:", artwork.choice$
Steve.artwork:
 CLS
 SCREEN 13
 PSET (150, 40), 15
 PSET (151, 40), 1
 PSET (152, 40), 6
 PSET (153, 40), 6
 PSET (154, 40), 1
 PSET (155, 40), 15
 PSET (150, 39), 8
 PSET (155, 39), 8
 PRINT "It is still in construction..."
 PRINT
 INPUT "Type Exit to go back...", back.step.1$
 IF back.step.1$ = "Exit" THEN GOTO artwork


SunnyHill.artwork:

artist.daddy:

ending.stage:
 PRINT "Goodbye ! :( "
 END






























