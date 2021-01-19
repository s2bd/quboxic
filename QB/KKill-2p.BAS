CLS
COLOR 6
PRINT " As39002 presents..."
SOUND 300, 9
SOUND 200, 5
SOUND 300, 9
SOUND 400, 18
CLS
COLOR 7
PRINT " As39002 presents..."
SOUND 300, 9
SOUND 200, 5
SOUND 400, 9
SOUND 500, 18

main.menu:
CLS
PRINT " =========== "
PRINT " KARATE KILL "
PRINT " =========== "
PRINT "          Made by Mukto "
PRINT
PRINT "[1] Play [1]"
PRINT "[2] Instructions [2]"
PRINT "[3] Exit [3]"
INPUT ":", menu
SELECT CASE menu
CASE 1
GOTO exec.var
CASE 2
GOTO guide
CASE 3
GOTO exitor
END SELECT

exec.var:
CLS
PRINT " *** Loading... *** "

SOUND 400, 2
BEEP
SOUND 400, 2
BEEP
SOUND 400, 2
BEEP
SOUND 400, 2
BEEP
SOUND 400, 2

LET boot1 = 1
LET legs1 = 2
LET tor1 = 4
LET hed1 = 7
LET hand1 = 7
LET boot2 = 1
LET legs2 = 8
LET tor2 = 7
LET hed2 = 4
LET hand2 = 4

LET HP1 = 100
LET HP2 = 100
CLS
GOTO prepare

prepare:
CLS
screen 13
COLOR 4
input " SINGLE or DOUBLE players? (1/2)", prepy
select case prepy
case 1
goto single.player
case 2
goto multi.player
end select


single.player:
let pc2.name$ = "Computer AI"
cls
print " Type your name: "
input ">", pc1.name$
var.load.1:
CLS
screen 13
COLOR 7
PRINT pc1.name$; "   ", HP1
PRINT pc2.name$; "   ", HP2

IF HP1 < 0 THEN GOTO lose.1

PSET (20, 200), boot1
PSET (22, 200), boot1
PSET (20, 199), legs1
PSET (22, 199), legs1
PSET (20, 198), legs1
PSET (21, 198), legs1
PSET (22, 198), legs1
PSET (20, 197), tor1
PSET (21, 197), tor1
PSET (22, 197), tor1
PSET (20, 196), tor1
PSET (21, 196), tor1
PSET (22, 196), tor1
PSET (21, 195), hed1
PSET (19, 198), hand1
PSET (18, 197), tor1
PSET (19, 196), tor1
PSET (25, 198), hand1
PSET (24, 197), tor1
PSET (23, 196), tor1

PSET (27, 200), boot2
PSET (29, 200), boot2
PSET (27, 199), legs2
PSET (29, 199), legs2
PSET (27, 198), legs2
PSET (28, 198), legs2
PSET (29, 198), legs2
PSET (27, 197), tor2
PSET (28, 197), tor2
PSET (29, 197), tor2
PSET (27, 196), tor2
PSET (28, 196), tor2
PSET (29, 196), tor2
PSET (28, 195), hed2
PSET (30, 198), hand2
PSET (31, 197), tor2
PSET (30, 196), tor2
PSET (24, 198), hand2
PSET (25, 197), tor2
PSET (26, 196), tor2

COLOR 4
INPUT ">", pc1.cmd$
SELECT CASE pc1.cmd$
CASE "q"
GOTO punch.1
CASE "w"
GOTO kick.1
CASE "e"
GOTO block.1
END SELECT

IF pc1.cmd$ <> "q" AND pc1.cmd$ <> "w" AND pc1.cmd$ <> "e" THEN HP1 = HP1 - 5

var.load.2:
CLS
screen 13
COLOR 7
PRINT pc1.name$; "   ", HP1
PRINT pc2.name$; "   ", HP2

IF HP2 < 0 THEN GOTO lose.2

PSET (20, 200), boot1
PSET (22, 200), boot1
PSET (20, 199), legs1
PSET (22, 199), legs1
PSET (20, 198), legs1
PSET (21, 198), legs1
PSET (22, 198), legs1
PSET (20, 197), tor1
PSET (21, 197), tor1
PSET (22, 197), tor1
PSET (20, 196), tor1
PSET (21, 196), tor1
PSET (22, 196), tor1
PSET (21, 195), hed1
PSET (19, 198), hand1
PSET (18, 197), tor1
PSET (19, 196), tor1
PSET (25, 198), hand1
PSET (24, 197), tor1
PSET (23, 196), tor1

PSET (27, 200), boot2
PSET (29, 200), boot2
PSET (27, 199), legs2
PSET (29, 199), legs2
PSET (27, 198), legs2
PSET (28, 198), legs2
PSET (29, 198), legs2
PSET (27, 197), tor2
PSET (28, 197), tor2
PSET (29, 197), tor2
PSET (27, 196), tor2
PSET (28, 196), tor2
PSET (29, 196), tor2
PSET (28, 195), hed2
PSET (30, 198), hand2
PSET (31, 197), tor2
PSET (30, 196), tor2
PSET (24, 198), hand2
PSET (25, 197), tor2
PSET (26, 196), tor2

COLOR 2
pc2.cmd = INT(3 * RND) + 1
SELECT CASE pc2.cmd
CASE 1
GOTO punch.2
CASE 2
GOTO kick.2
CASE 3
GOTO block.2
END SELECT

IF pc2.cmd <> 1 AND pc2.cmd <> 2 AND pc2.cmd <> 3 THEN HP2 = HP2 - 5

punch.1:
CLS
screen 13
PRINT pc1.name$; "   ", HP1
PRINT pc2.name$; "   ", HP2

PSET (20, 200), boot1
PSET (22, 200), boot1
PSET (20, 199), legs1
PSET (22, 199), legs1
PSET (20, 198), legs1
PSET (21, 198), legs1
PSET (22, 198), legs1
PSET (20, 197), tor1
PSET (21, 197), tor1
PSET (22, 197), tor1
PSET (20, 196), tor1
PSET (21, 196), tor1
PSET (22, 196), tor1
PSET (21, 195), hed1
PSET (18, 198), hand1
PSET (18, 197), tor1
PSET (19, 196), tor1
PSET (27, 196), hand1
PSET (26, 196), tor1
PSET (25, 196), tor1

PSET (27, 200), boot2
PSET (29, 200), boot2
PSET (27, 199), legs2
PSET (29, 199), legs2
PSET (27, 198), legs2
PSET (28, 198), legs2
PSET (29, 198), legs2
PSET (28, 197), tor2
PSET (29, 197), tor2
PSET (30, 197), tor2
PSET (27, 196), tor2
PSET (28, 196), tor2
PSET (29, 196), tor2
PSET (28, 195), hed2
PSET (30, 198), hand2
PSET (31, 197), tor2
PSET (30, 196), tor2
PSET (24, 198), hand2
PSET (25, 197), tor2
PSET (26, 196), tor2

HP2 = HP2 - 10
SOUND 300, 2
SOUND 100, 2
SOUND 300, 2

GOTO var.load.2

kick.1:
CLS
screen 13
PRINT pc1.name$; "   ", HP1
PRINT pc2.name$; "   ", HP2

PSET (20, 200), boot1
PSET (24, 198), boot1
PSET (20, 199), legs1
PSET (23, 198), legs1
PSET (20, 198), legs1
PSET (21, 198), legs1
PSET (22, 198), legs1
PSET (20, 197), tor1
PSET (21, 197), tor1
PSET (22, 197), tor1
PSET (20, 196), tor1
PSET (21, 196), tor1
PSET (22, 196), tor1
PSET (21, 195), hed1
PSET (19, 198), hand1
PSET (18, 197), tor1
PSET (19, 196), tor1
PSET (25, 198), hand1
PSET (24, 197), tor1
PSET (23, 196), tor1

PSET (27, 200), boot2
PSET (29, 200), boot2
PSET (27, 199), legs2
PSET (29, 199), legs2
PSET (27, 198), legs2
PSET (28, 198), legs2
PSET (29, 198), legs2
PSET (27, 197), tor2
PSET (28, 197), tor2
PSET (29, 197), tor2
PSET (27, 196), tor2
PSET (28, 196), tor2
PSET (29, 196), tor2
PSET (28, 195), hed2
PSET (30, 198), hand2
PSET (31, 197), tor2
PSET (30, 196), tor2
PSET (24, 198), hand2
PSET (25, 197), tor2
PSET (26, 196), tor2

HP2 = HP2 - 20
SOUND 700, 2
SOUND 300, 2
SOUND 100, 2

GOTO var.load.2

block.1:
CLS
screen 13
PRINT pc1.name$; "   ", HP1
PRINT pc2.name$; "   ", HP2

PSET (20, 200), boot1
PSET (22, 200), boot1
PSET (20, 199), legs1
PSET (22, 199), legs1
PSET (20, 198), legs1
PSET (21, 198), legs1
PSET (22, 198), legs1
PSET (20, 197), tor1
PSET (21, 197), tor1
PSET (22, 197), tor1
PSET (20, 196), tor1
PSET (21, 196), tor1
PSET (22, 196), tor1
PSET (21, 195), hed1
PSET (19, 198), hand1
PSET (18, 197), tor1
PSET (19, 196), tor1
PSET (24, 195), hand1
PSET (24, 196), tor1
PSET (23, 196), tor1

PSET (27, 200), boot2
PSET (29, 200), boot2
PSET (27, 199), legs2
PSET (29, 199), legs2
PSET (27, 198), legs2
PSET (28, 198), legs2
PSET (29, 198), legs2
PSET (27, 197), tor2
PSET (28, 197), tor2
PSET (29, 197), tor2
PSET (27, 196), tor2
PSET (28, 196), tor2
PSET (29, 196), tor2
PSET (28, 195), hed2
PSET (30, 198), hand2
PSET (31, 197), tor2
PSET (30, 196), tor2
PSET (24, 198), hand2
PSET (25, 197), tor2
PSET (26, 196), tor2

HP1 = HP1 + 20
SOUND 100, 2
SOUND 200, 2
SOUND 300, 2

GOTO var.load.2

punch.2:
CLS
screen 13
PRINT pc1.name$; "   ", HP1
PRINT pc2.name$; "   ", HP2

PSET (20, 200), boot1
PSET (22, 200), boot1
PSET (20, 199), legs1
PSET (22, 199), legs1
PSET (20, 198), legs1
PSET (21, 198), legs1
PSET (22, 198), legs1
PSET (20, 197), tor1
PSET (21, 197), tor1
PSET (22, 197), tor1
PSET (20, 196), tor1
PSET (21, 196), tor1
PSET (22, 196), tor1
PSET (21, 195), hed1
PSET (19, 198), hand1
PSET (18, 197), tor1
PSET (19, 196), tor1
PSET (25, 198), hand1
PSET (24, 197), tor1
PSET (23, 196), tor1

PSET (27, 200), boot2
PSET (29, 200), boot2
PSET (27, 199), legs2
PSET (29, 199), legs2
PSET (27, 198), legs2
PSET (28, 198), legs2
PSET (29, 198), legs2
PSET (27, 197), tor2
PSET (28, 197), tor2
PSET (29, 197), tor2
PSET (27, 196), tor2
PSET (28, 196), tor2
PSET (29, 196), tor2
PSET (28, 195), hed2
PSET (30, 198), hand2
PSET (31, 197), tor2
PSET (30, 196), tor2
PSET (24, 196), hand2
PSET (25, 196), tor2
PSET (26, 196), tor2

HP1 = HP1 - 10
SOUND 300, 2
SOUND 100, 2
SOUND 300, 2

GOTO var.load.1

kick.2:
CLS
screen 13
PRINT pc1.name$; "   ", HP1
PRINT pc2.name$; "   ", HP2

PSET (20, 200), boot1
PSET (22, 200), boot1
PSET (20, 199), legs1
PSET (22, 199), legs1
PSET (20, 198), legs1
PSET (21, 198), legs1
PSET (22, 198), legs1
PSET (20, 197), tor1
PSET (21, 197), tor1
PSET (22, 197), tor1
PSET (20, 196), tor1
PSET (21, 196), tor1
PSET (22, 196), tor1
PSET (21, 195), hed1
PSET (19, 198), hand1
PSET (18, 197), tor1
PSET (19, 196), tor1
PSET (25, 198), hand1
PSET (24, 197), tor1
PSET (23, 196), tor1

PSET (25, 198), boot2
PSET (29, 200), boot2
PSET (26, 198), legs2
PSET (29, 199), legs2
PSET (27, 198), legs2
PSET (28, 198), legs2
PSET (29, 198), legs2
PSET (27, 197), tor2
PSET (28, 197), tor2
PSET (29, 197), tor2
PSET (27, 196), tor2
PSET (28, 196), tor2
PSET (29, 196), tor2
PSET (28, 195), hed2
PSET (30, 198), hand2
PSET (31, 197), tor2
PSET (30, 196), tor2
PSET (24, 194), hand2
PSET (25, 195), tor2
PSET (26, 196), tor2

HP1 = HP1 - 20
SOUND 700, 2
SOUND 300, 2
SOUND 100, 2

GOTO var.load.1

block.2:
CLS
screen 13
PRINT pc1.name$; "   ", HP1
PRINT pc2.name$; "   ", HP2

PSET (20, 200), boot1
PSET (22, 200), boot1
PSET (20, 199), legs1
PSET (22, 199), legs1
PSET (20, 198), legs1
PSET (21, 198), legs1
PSET (22, 198), legs1
PSET (20, 197), tor1
PSET (21, 197), tor1
PSET (22, 197), tor1
PSET (20, 196), tor1
PSET (21, 196), tor1
PSET (22, 196), tor1
PSET (21, 195), hed1
PSET (19, 198), hand1
PSET (18, 197), tor1
PSET (19, 196), tor1
PSET (25, 198), hand1
PSET (24, 197), tor1
PSET (23, 196), tor1

PSET (27, 200), boot2
PSET (29, 200), boot2
PSET (27, 199), legs2
PSET (29, 199), legs2
PSET (27, 198), legs2
PSET (28, 198), legs2
PSET (29, 198), legs2
PSET (27, 197), tor2
PSET (28, 197), tor2
PSET (29, 197), tor2
PSET (27, 196), tor2
PSET (28, 196), tor2
PSET (29, 196), tor2
PSET (28, 195), hed2
PSET (30, 198), hand2
PSET (31, 197), tor2
PSET (30, 196), tor2
PSET (24, 198), hand2
PSET (25, 197), tor2
PSET (26, 196), tor2

HP2 = HP2 + 20
SOUND 100, 2
SOUND 200, 2
SOUND 300, 2

GOTO var.load.1

lose.1:
CLS
COLOR 4
PRINT " HA HA HA THE DEVIL'S SOUL IS NOW "
PRINT " YOUR DOOM ! BETTER LUCK NEXT TIME "
PRINT " BAD ASS! GAME OVER, WIMP !!! "
PRINT
PRINT " The winner is: ", pc2.name$
PRINT " The loser is  : ", pc1.name$
INPUT " Press Enter to continue...", ent$
GOTO main.menu

lose.2:
CLS
COLOR 4
PRINT " HA HA HA THE DEVIL'S SOUL IS NOW "
PRINT " YOUR DOOM ! BETTER LUCK NEXT TIME "
PRINT " BAD ASS! GAME OVER, WIMP !!! "
PRINT
PRINT " The winner is: ", pc1.name$
PRINT " The loser is  : ", pc2.name$
INPUT " Press Enter to continue...", ent$
GOTO main.menu
guide:
CLS
COLOR 15
PRINT " CONTROL SCHEME : "
PRINT " Player1 (Hojo) "
PRINT "  PUNCH (-10) = Q "
PRINT "  KICK (-20) = W "
PRINT "  BLOCK (+20) = E "
PRINT " Player2 (Juko) "
PRINT "  PUNCH (-10) = I "
PRINT "  KICK (-20) = O "
PRINT "  BLOCK (+20) = p "
PRINT
PRINT " Note : Any wrong moves will"
PRINT "     deduct your health by -5 !"
PRINT
INPUT " Press ENTER to continue...", ent$
GOTO main.menu

exitor:
END

