Flicker.Control = 6000
SCREEN 7
RANDOMIZE TIMER

GOTO main.menu
intro:
 CLS
 SOUND 100, 2
 SOUND 500, 1
 SOUND 100, 2
 SOUND 500, 25
 PRINT
 PRINT
 PRINT
 COLOR 2
 PRINT " AS39002 proudly "
 COLOR 4
 PRINT "   presents....  "
 SOUND 100, 2
 SOUND 500, 1
 SOUND 100, 2
 SOUND 500, 25
 CLS
 PRINT
 PRINT
 PRINT
 COLOR 4
 PRINT " The Tank Game "
 COLOR 2
 PRINT " ------------ "
 SOUND 100, 2
 SOUND 500, 1
 SOUND 100, 2
 SOUND 500, 25
 CLS
 GOTO main.menu
credits:
 CLS
 PRINT
 PRINT
 PRINT
 COLOR 2
 PRINT " Audio transmission by "
 COLOR 4
 PRINT "     BASS-MASS         "
 SOUND 100, 2
 SOUND 500, 1
 SOUND 100, 2
 SOUND 500, 25
 CLS
 PRINT
 PRINT
 PRINT
 COLOR 4
 PRINT " Game script by "
 COLOR 2
 PRINT "    Q BASIC    "
 SOUND 100, 2
 SOUND 500, 1
 SOUND 100, 2
 SOUND 500, 25
 CLS
 PRINT
 PRINT
 PRINT
 COLOR 2
 PRINT " Produced by "
 COLOR 4
 PRINT "   AS39002   "
 SOUND 100, 2
 SOUND 500, 1
 SOUND 100, 2
 SOUND 500, 25

main.menu:
CLS
SCREEN 0
LOCATE 10, 1
COLOR 6
PRINT "            ====---      "
PRINT "       ===============   "
PRINT "     =OOOOOOOOOOOOOOOOO= "
PRINT "       ===============   "
PRINT
COLOR 20
PRINT "             { TANK FIGHTER } "
PRINT
COLOR 2
PRINT "          Made by As39002 (c) 2016"
COLOR 8
PRINT "                  v.1.1.2         "
PRINT
COLOR 4
PRINT "                  < MENU >          "
COLOR 15
PRINT "****************************************"
COLOR 3
PRINT "   (1)             START          (1)"
PRINT "   (2)         INSTRUCTIONS       (2)"
PRINT "   (3)            CREDITS         (3)"
PRINT "   (4)              EXIT          (4)"
COLOR 15
PRINT "****************************************"
PRINT
INPUT " ", press.key
SELECT CASE press.key
CASE 1
GOTO mode.select
CASE 2
GOTO instruct
CASE 3
GOTO credits
CASE 4
GOTO confirm.end
CASE IS > 4
GOTO main.menu
END SELECT
SCREEN 13

mode.select:
 CLS
 COLOR 4
 PRINT " /Select mode to play:"
 PRINT
 COLOR 15
 PRINT "***********************"
 COLOR 3
 PRINT " (1) Simple Game "
 PRINT " (2) Normal Beatdown "
 PRINT " (3) Extreme Annihilation "
 PRINT " (4) PvP {in progress} "
 PRINT " (5) Survival Mode {in progress}"
 PRINT " (6) Back to Menu "
 COLOR 15
 PRINT "************************"
 PRINT
 INPUT " ", select.mode

 SELECT CASE select.mode
 CASE 1
 GOTO start
 CASE 2
 rounds.limit = 5
 num.players = 1
 difficuty$ = "d"
 s.difficulty$ = "e"
 tanka.name$ = "Blackjack Don"
 GOTO insert.playername
 CASE 3
 rounds.limit = 3
 num.players = 1
 dificulty$ = "d"
 s.difficulty$ = "i"
 tanka.name$ = "Shaitan Sheikh"
 GOTO insert.playername
 CASE 4
 num.players = 2
 GOTO insert.playername2
 CASE 5
 num.players = 1
 difficulty$ = "d"
 s.difficulty$ = "e"
 GOTO survive.mode
 CASE 6
 GOTO main.menu
 END SELECT

insert.playername:
 CLS
 COLOR 2
 INPUT " Please enter your name: ", tankb.name$
 GOTO newround

insert.playername2:
 CLS
 COLOR 4
 INPUT " Please enter RED tank's name: ", tanka.name$
 PRINT
 COLOR 2
 INPUT " Please enter GREEN tank's name: ", tankb.name$
 GOTO newround

survive.mode:
 CLS
 GOTO insert.playername

instruct.load:
BSAVE "tankcode.txt", score, alpha
PRINT Tank.code.pal

SOUND 300, 4
SOUND 500, 2
SOUND 700, 10
SOUND 200, 10
SOUND 300, 10
PRINT "Do you need instructions? y/n"
GOTO instruct.y.n
instruct.y.n:
y.n$ = INKEY$
SELECT CASE y.n$
CASE "Y"
GOTO instruct
CASE "N"
GOTO instruct.y.n
END SELECT

instruct:
CLS
SCREEN 13
LOCATE 1, 1
COLOR 4
PRINT " Red tank controls:"
PRINT " w, a, s, d - move"
PRINT " i,j,k,l - aim"
PRINT " spacebar - shoot"
PRINT
COLOR 2
PRINT " Green tank controls:"
PRINT " t, f, g, h - move"
PRINT " arrow keys - aim"
PRINT " 0 - shoot"
PRINT
COLOR 15
PRINT " Note: You can shoot only one"
PRINT "  missile at a time!"
INPUT " ", back.2.menu$
SELECT CASE back.2.menu$
CASE "Q"
GOTO end.foot
END SELECT
GOTO main.menu

start:
CLS
SCREEN 13
num.players = 3
PRINT
PRINT " How many players? (1/2)"
WHILE num.players <> 1 AND num.players <> 2
num$ = INKEY$
SELECT CASE num$
CASE "1"
PRINT "1"
num.players = 1
CASE "2"
num.players = 2
Flicker.Control = 3000
PRINT "2"
END SELECT
WEND

IF num.players = 1 THEN
PRINT
PRINT "Easy, Difficult, Super Hard"
PRINT "or Impossible? e/d/s/i"
difficulty$ = "0"
WHILE difficulty$ <> "e" AND difficulty$ <> "d" AND difficulty$ <> "s" AND difficulty$ <> "i"
diff$ = INKEY$
SELECT CASE diff$
CASE "e"
difficulty$ = "e"
s.difficulty$ = "e"
Flicker.Control = 4000
PRINT "easy"
CASE "d"
difficulty$ = "d"
s.difficulty$ = "e"
Flicker.Control = 3000
PRINT "Difficult"
CASE "s"
difficulty$ = "d"
s.difficulty$ = "s"
Flicker.Control = 2000
PRINT "It can be done"
CASE "i"
difficulty$ = "d"
s.difficulty$ = "i"
Flicker.Control = 1000
PRINT " You're in for it, now!"
END SELECT
WEND
END IF

PRINT
IF num.players = 2 THEN
COLOR 4
PRINT "What is the red tank's"
INPUT "driver's name?", tanka.name$
ELSE
tanka.name$ = "Computer"
computer.duration = 0
computer.time = 0
END IF
PRINT
COLOR 2
PRINT "What is the green tank's"
INPUT "driver's name?", tankb.name$
PRINT
COLOR 15
INPUT "How many round you wanna play?", rounds.limit
rounds = 0
tanka.score = 0
tankb.score = 0
n.y = 1
newround:

IF rounds >= rounds.limit THEN
GOTO finish
END IF

rounds = rounds + 1
tanka.direction$ = "E"
tankb.direction$ = "W"
tanka.aim$ = "E"
tankb.aim$ = "W"
tanka.x = 20
tanka.y = 100
tankb.x = 300
tankb.y = 100
tanka.missile.x = -5000
tanka.missile.y = -5000
tankb.missile.x = -50000
tankb.missile.y = -50000

tanka.supermissile.x = -5000
tanka.supermissile.y = -5000
tankb.supermissile.x = -5000
tankb.supermissile.y = -5000

tanka.missile.direction$ = "0"
tankb.missile.direction$ = "0"

a:

CLS
SCREEN 13

LINE (tanka.x - 10, tanka.y - 10)-(tanka.x + 10, tanka.y + 10), 4, BF
LINE (tankb.x - 10, tankb.y - 10)-(tankb.x + 10, tankb.y + 10), 2, BF
LINE (tanka.missile.x - 1, tanka.missile.y - 1)-(tanka.missile.x + 1, tanka.missile.y + 1), 15, B
LINE (tankb.missile.y - 1, tankb.missile.y - 1)-(tankb.missile.x + 1, tankb.missile.y + 1), 15, B

COLOR 15
SELECT CASE tanka.aim$
CASE "N"
LINE (tanka.x, tanka.y)-(tanka.x, tanka.y - 10)
CASE "E"
LINE (tanka.x, tanka.y)-(tanka.x + 10, tanka.y)
CASE "S"
LINE (tanka.x, tanka.y)-(tanka.x, tanka.y + 10)
CASE "W"
LINE (tanka.x, tanka.y)-(tanka.x - 10, tanka.y)
END SELECT

COLOR 1
SELECT CASE tankb.aim$
CASE "N"
LINE (tankb.x, tankb.y)-(tankb.x, tankb.y - 10)
CASE "E"
LINE (tankb.x, tankb.y)-(tankb.x + 10, tankb.y)
CASE "S"
LINE (tankb.x, tankb.y)-(tankb.x, tankb.y + 10)
CASE "W"
LINE (tankb.x, tankb.y)-(tankb.x - 10, tankb.y)
END SELECT

FOR count = 1 TO Flicker.Control
NEXT count

SELECT CASE tanka.direction$
CASE "N"
tanka.y = tanka.y - 3
CASE "E"
tanka.x = tanka.x + 3
CASE "S"
tanka.y = tanka.y + 3
CASE "W"
tanka.x = tanka.x - 3
END SELECT

SELECT CASE tankb.direction$
CASE "N"
tankb.y = tankb.y - 3
CASE "E"
tankb.x = tankb.x + 3
CASE "S"
tankb.y = tankb.y + 3
CASE "W"
tankb.x = tankb.x - 3
END SELECT

SELECT CASE tanka.missile.direction$
CASE "N"
tanka.missile.y = tanka.missile.y - 6
CASE "E"
tanka.missile.x = tanka.missile.x + 6
CASE "S"
tanka.missile.y = tanka.missile.y + 6
CASE "W"
tanka.missile.x = tanka.missile.x - 6
END SELECT

SELECT CASE tankb.missile.direction$
CASE "N"
tankb.missile.y = tankb.missile.y - 6
CASE "E"
tankb.missile.x = tankb.missile.x + 6
CASE "S"
tankb.missile.y = tankb.missile.y + 6
CASE "W"
tankb.missile.x = tankb.missile.x - 6
END SELECT

change$ = INKEY$
SELECT CASE change$
CASE "q"
GOTO quit
CASE "p"
WHILE INKEY$ <> " "
WEND

CASE CHR$(0) + "H"
tankb.aim$ = "N"
CASE CHR$(0) + "M"
tankb.aim$ = "E"
CASE CHR$(0) + "P"
tankb.aim$ = "S"
CASE CHR$(0) + "K"
tankb.aim$ = "W"
CASE "t"
tankb.direction$ = "N"
CASE "h"
tankb.direction$ = "E"
CASE "g"
tankb.direction$ = "S"
CASE "f"
tankb.direction$ = "W"
CASE "0"
tankb.missile.direction$ = tankb.aim$
tankb.missile.x = tankb.x
tankb.missile.y = tankb.y
SOUND 500, 4
END SELECT

IF num.players = 2 THEN
SELECT CASE change$
CASE "i"
tanka.aim$ = "N"
CASE "l"
tanka.aim$ = "E"
CASE "k"
tanka.aim$ = "S"
CASE "j"
tanka.aim$ = "W"
CASE "w"
tanka.direction$ = "N"
CASE "d"
tanka.direction$ = "E"
CASE "s"
tanka.direction$ = "S"
CASE "a"
tanka.direction$ = "W"
CASE " "
tanka.missile.direction$ = tanka.aim$
tanka.missile.x = tanka.x
tanka.missile.y = tanka.y
SOUND 500, 4
END SELECT

ELSE
IF computer.time >= computer.duration THEN
computer.time = 0
computer.duration = INT(19 * RND) + 1
computer.direction = INT(4 * RND) + 1
SELECT CASE computer.direction
CASE 1
tanka.direction$ = "N"
CASE 2
tanka.direction$ = "E"
CASE 3
tanka.direction$ = "S"
CASE 4
tanka.direction$ = "W"
END SELECT
END IF
computer.time = computer.time + 1
SELECT CASE tanka.missile.direction$
CASE "N"
IF (tanka.missile.x < tankb.x + 10) AND (tanka.missile.x > tankb.x - 10) AND (tankb.y - 10 <= tanka.missile.y) THEN
GOTO endselect
ELSE
GOTO newtarget
END IF
CASE "E"
IF (tanka.missile.y < tankb.y + 10) AND (tanka.missile.y > tankb.y - 10) AND (tankb.x - 10 >= tanka.missile.x) THEN
GOTO endselect
ELSE
GOTO newtarget
END IF
CASE "S"
IF (tanka.missile.x < tankb.x + 10) AND (tanka.missile.x > tankb.x - 10) AND (tankb.y - 10 >= tanka.missile.y) THEN
GOTO endselect
ELSE
GOTO newtarget
END IF
CASE "W"
IF (tanka.missile.y < tankb.y + 10) AND (tanka.missile.y > tankb.y - 10) AND (tankb.x - 10 <= tanka.missile.x) THEN
GOTO endselect
ELSE
GOTO newtarget
END IF
END SELECT
newtarget:
IF (tanka.x < tankb.x + 10) AND (tanka.x > tankb.x - 10) AND (tankb.y - 10 <= tanka.y) THEN
tanka.missile.direction$ = "N"
tanka.missile.x = tanka.x
tanka.missile.y = tanka.y
END IF
IF (tanka.y < tankb.y + 10) AND (tanka.y > tankb.y - 10) AND (tankb.x - 10 >= tanka.x) THEN
tanka.missile.direction$ = "E"
tanka.missile.x = tanka.x
tanka.missile.y = tanka.y
END IF
IF (tanka.x < tankb.x + 10) AND (tanka.x > tankb.x - 10) AND (tankb.y + 10 >= tanka.y) THEN
tanka.missile.direction$ = "S"
tanka.missile.x = tanka.x
tanka.missile.y = tanka.y
END IF
IF (tanka.y < tankb.y + 10) AND (tanka.y > tankb.y - 10) AND (tankb.x - 10 <= tanka.x) THEN
tanka.missile.direction$ = "W"
tanka.missile.x = tanka.x
tanka.missile.y = tanka.y
END IF
tanka.aim$ = tanka.missiile.direction$
endselect:
IF s.difficulty$ = "s" THEN
direction.num = INT(2 * RND)
SELECT CASE direction.num
CASE 0
direction.e.w$ = "E"
direction.n.s$ = "N"
CASE 1
direction.e.w$ = "W"
direction.n.s$ = "S"
END SELECT
SELECT CASE tanka.direction$
CASE "N"
IF tankb.missile.y < tanka.y AND tankb.missile.direction$ <> "N" AND tankb.missile.direction$ <> "S" THEN
tanka.direction$ = direction.e.w$
END IF
CASE "E"
IF tankb.missile.x < tanka.x AND tankb.missile.direction$ <> "E" AND tankb.missile.direction$ <> "W" THEN
tanka.direction$ = direction.n.s$
END IF
CASE "N"
IF tankb.missile.y > tanka.y AND tankb.missile.direction$ <> "N" AND tankb.missile.direction$ <> "S" THEN
tanka.direction$ = direction.e.w$
END IF
CASE "N"
IF tankb.missile.x < tanka.x AND tankb.missile.direction$ <> "E" AND tankb.missile.direction$ <> "W" THEN
tanka.direction$ = direction.n.s$
END IF
END SELECT
END IF

IF s.difficulty$ = "i" THEN
direction.num = INT(2 * RND)
SELECT CASE direction.num
CASE 0
direction.e.w$ = "E"
direction.n.s$ = "N"
CASE 1
direction.e.w$ = "W"
direction.n.s$ = "S"
END SELECT
SELECT CASE tanka.direction$
CASE "N"
IF tankb.missile.y < tanka.y AND tankb.missile.direction$ <> "N" AND tankb.missile.direction$ <> "S" THEN
tanka.direction$ = direction.e.w$
END IF
CASE "E"
IF tankb.missile.x < tanka.x AND tankb.missile.direction$ <> "E" AND tankb.missile.direction$ <> "W" THEN
tanka.direction$ = direction.n.s$
END IF
CASE "N"
IF tankb.missile.y > tanka.y AND tankb.missile.direction$ <> "N" AND tankb.missile.direction$ <> "S" THEN
tanka.direction$ = direction.e.w$
END IF
CASE "N"
IF tankb.missile.x < tanka.x AND tankb.missile.direction$ <> "E" AND tankb.missile.direction$ <> "W" THEN
tanka.direction$ = direction.n.s$
END IF
END SELECT
END IF

IF difficulty$ = "d" THEN
direction.num = INT(2 * RND)
SELECT CASE direction.num
CASE 0
direction.e.w$ = "E"
direction.n.s$ = "N"
CASE 1
direction.e.w$ = "W"
direction.n.s$ = "S"
END SELECT
SELECT CASE tanka.direction$
CASE "N"
IF tankb.missile.y < tanka.y AND tankb.missile.direction$ <> "N" AND tankb.missile.direction$ <> "S" THEN
tanka.direction$ = direction.e.w$
END IF
CASE "E"
IF tankb.missile.x < tanka.x AND tankb.missile.direction$ <> "E" AND tankb.missile.direction$ <> "W" THEN
tanka.direction$ = direction.n.s$
END IF
CASE "N"
IF tankb.missile.y > tanka.y AND tankb.missile.direction$ <> "N" AND tankb.missile.direction$ <> "S" THEN
tanka.direction$ = direction.e.w$
END IF
CASE "N"
IF tankb.missile.x < tanka.x AND tankb.missile.direction$ <> "E" AND tankb.missile.direction$ <> "W" THEN
tanka.direction$ = direction.n.s$
END IF
END SELECT
END IF
END IF
IF tanka.x < 1 THEN
tanka.direction$ = "E"
END IF
IF tanka.x > 319 THEN
tanka.direction$ = "W"
END IF
IF tanka.y < 1 THEN
tanka.direction$ = "S"
END IF
IF tanka.x > 199 THEN
tanka.direction$ = "N"
END IF
IF tankb.x < 1 THEN
tankb.direction$ = "E"
END IF
IF tankb.x > 319 THEN
tankb.direction$ = "W"
END IF
IF tankb.y < 1 THEN
tankb.direction$ = "S"
END IF
IF tankb.y > 199 THEN
tankb.direction$ = "N"
END IF

'change direction if tanks hit <script not written yet>

LOCATE 12, 13
IF (tanka.missile.x > tankb.x - 10) AND (tanka.missile.x < tankb.x + 10) AND (tanka.missile.y > tankb.y - 10) AND (tanka.missile.y < tankb.y + 10) THEN
COLOR 9
PRINT tankb.name$; " got hit!"
tanka.score = tanka.score + 1
GOTO new
END IF
IF (tankb.missile.x > tanka.x - 10) AND (tankb.missile.x < tanka.x + 10) AND (tankb.missile.y > tanka.y - 10) AND (tankb.missile.y < tanka.y + 10) THEN
COLOR 15
PRINT tanka.name$; " got hit!"
tankb.score = tankb.score + 1
GOTO new
END IF
GOTO a
quit:
finish:
LOCATE 1, 12
IF tanka.score > tankb.score THEN
COLOR 9
PRINT tanka.name$; " wins!"
ELSE
IF tankb.score > tanka.score THEN
COLOR 15
PRINT tankb.name$; " wins!"
ELSE
COLOR 12
PRINT "It's a tie!"
END IF
END IF
IF n.y = 0 THEN
GOTO gameover
END IF
new:
LOCATE 15, 1
PRINT "Score:"
LOCATE 16, 5
PRINT tanka.name$; "-", tanka.score; " "; tankb.name$; "-"; tankb.score
IF change$ = "q" OR rounds >= rounds.limit THEN
n.y = 0
GOTO finish
END IF
LOCATE 17, 12
PRINT "space to continue"
WHILE INKEY$ <> " "
WEND
GOTO newround
gameover:
LOCATE 18, 12
COLOR 12
PRINT " Game Over !!!"
LOCATE 19, 5
PRINT "Do you want to play again? y/n"
again:
y.n$ = INKEY$
SELECT CASE y.n$
CASE "y"
COLOR 15
CLS
GOTO start
CASE "n"
GOTO confirm.end
END SELECT
GOTO again

confirm.end:
CLS
SCREEN 13
COLOR 4
PRINT " Are you sure you want to quit?"
PRINT " (Y)(N)"
PRINT
INPUT " ", def.end$
SELECT CASE def.end$
CASE "N"
GOTO instruct
CASE "Y"
GOTO end.foot
END SELECT

end.foot:
END

