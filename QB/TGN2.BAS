'TANKER COMMANDO PvP // made by As39002 v.1.1.0 deluxe edition
'
'------------------
'Press F5 to play
'------------------
'
'If screen flickers too much while you are playing
'or if game is too fast, increase Flicker.control =" bigger,
'and smaller, if game is too slow.
Flicker.Control = 600
SCREEN 7 '320 X 200
RANDOMIZE TIMER

CLS
 LOCATE 10, 1
 PRINT "Welcome to"
 PRINT
 PRINT " THE TANK GAME."
 PRINT
 PRINT "Do you need instructions? y/n"

instruct.y.n:
 y.n$ = INKEY$
 SELECT CASE y.n$
  CASE "y"
  GOTO instruct
  CASE "n"
 END SELECT
 GOTO instruct.y.n

instruct:
 CLS
 LOCATE 1, 1
 PRINT "player 1(blue)"
 PRINT "move =i,j,k,l"
 PRINT "aim =e,s,d,f"
 PRINT "shoot=space bar"
 PRINT
 PRINT "player 2(white)"
 PRINT "move =numeric pad"
 PRINT "aim =arrow keys"
 PRINT "shoot=num 0"
start:
 num.players = 3
 PRINT
 PRINT "How many players? (1/2)"
 WHILE num.players <> 1 AND num.players <> 2
 num$ = INKEY$
 SELECT CASE num$
  CASE "1"
  num.players = 1
  PRINT "1"
  CASE "2"
  num.players = 2
  PRINT "2"
 END SELECT
 WEND

 IF num.players = 1 THEN
 PRINT
 PRINT "Easy, Difficult, Super Hard,"
 PRINT "or Impossible? e/d/s/i"
 difficulty$ = "0"
 WHILE difficulty$ <> "e" AND difficulty$ <> "d" AND difficulty$ <> "s" AND difficulty$ <> "i"
 diff$ = INKEY$
 SELECT CASE diff$
  CASE "e"
  difficulty$ = "e"
  s.difficulty$ = "e"
  PRINT "Easy"
  CASE "d"
  difficulty$ = "d"
  s.difficulty$ = "e"
  PRINT "Difficult"
  CASE "s"
  difficulty$ = "d"
  s.difficulty$ = "s"
  PRINT "It can be done."
  CASE "i"
  difficulty$ = "d"
  s.difficulty$ = "i"
 PRINT "You're in for it, now!"
 END SELECT
 WEND
 END IF

 PRINT
 IF num.players = 2 THEN
 PRINT "What is the person's name who will be"
 INPUT "driving the blue tank? ", tanka.name$
 ELSE
 tanka.name$ = "Computer"
 computer.duration = 0
 computer.time = 0
 END IF
 PRINT
 PRINT "What is the person's name who will be "
 INPUT "driving the white tank? ", tankb.name$
 PRINT
 INPUT "How many rounds do you want to play? ", rounds.limit
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
 tankb.missile.x = -5000
 tankb.missile.y = -5000
 tanka.missile.direction$ = "0"
 tankb.missile.direction$ = "0"
 
a:

 CLS

 LINE (tanka.x - 10, tanka.y - 10)-(tanka.x + 10, tanka.y + 10), 9, BF
 LINE (tankb.x. - 10, tankb.y - 10)-(tankb.x + 10, tankb.y + 10), 15, BF
 LINE (tanka.missile.x - 1, tanka.missile.y - 1)-(tanka.missile.x + 1, tanka.missile.y + 1), 15, B
 LINE (tankb.missile.x - 1, tankb.missile.y - 1)-(tankb.missile.x + 1, tankb.missile.y + 1), 9, B

 COLOR 15
 SELECT CASE tanka.aim$
  CASE "N"
  LINE (tanka.x, tanka.y)-(tanka.x, tanka.y - 10)
  CASE "E"
  LINE (tanka.x, tanka.y)-(tanka.x + 10, tanka.y)
  CASE "S"
  LINE (tanka.x, tank.y)-(tanka.x, tanka.y + 10)
  CASE "W"
  LINE (tanka.x, tank.y)-(tanka.x - 10, tanka.y)
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
  LINE (tankb.x, tankb.y)-(tanka.x - 10, tankb.y)
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
 SELECT CASE controls$
  CASE "q"
  GOTO quit
  CASE "p"
  WHILE INKEY$ <> " "
 SELECT CASE controls2$
  CASE CHR$(0) + "H"
  tankb.aim$ = "N"
  CASE CHR$(0) + "M"
  tankb.aim$ = "E"
  CASE CHR$(0) + "P"
  tankb.aim$ = "S"
  CASE CHR$(0) + "K"
  tankb.aim$ = "W"
  CASE "8"
  tankb.direction$ = "N"
  CASE "6"
  tankb.direction$ = "E"
  CASE "2"
  tankb.direction$ = "S"
  CASE "4"
  tankb.direction$ = "W"
  CASE "0"
  tankb.missile.direction$ = tankb.aim$
  tankb.missile.x = tankb.x
  tankb.missile.y = tankb.y
 END SELECT
 
 IF num.players = 2 THEN
 SELECT CASE change$
  CASE "e"
  tanka.aim$ = "N"
  CASE "f"
  tanka.aim$ = "E"
CASE "d"
tanka.aim$ = "S"
CASE "s"
tanka.aim$ = "W"
CASE "i"
tanka.direction$ = "N"
CASE "l"
tanka.direction$ = "E"
CASE "k"
tanka.direction$ = "S"
CASE "j"
tanka.direction$ = "W"
CASE " "
tanka.missile..direction$ = tanka.aim$
tanka.missile.x = tanka.x
tanka.missile.y = tanka.y
END SELECT

ELSEIF computer.time >= computer.duration THEN
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
IF (tanka.missile.y < tankb.y + 10) AND (tanka.missile.y > tankb.y - 10) AND (tankb.x + 10 >= tanka.missile.x) THEN
GOTO endselect
ELSE
GOTO newtarget
END IF
CASE "S"
IF (tanka.missile.x < tankb.x + 10) AND (tanka.missile.x > tankb.x - 10) AND (tankb.y + 10 >= tanka.missile.y) THEN
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

IF (tanka.y < tankb.y + 10) AND (tanka.y > tankb.y - 10) AND (tankb.x + 10 >= tanka.x) THEN
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

tank.aim$ = tanka.missile.direction$

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
END IF

SELECT CASE tanka.direction$
CASE "N"
IF tankb.missile.y < tanka.y AND tankb.missile.direction$ <> "N" AND tankb.missile.direction$ <> "S" THEN
tanka.direction$ = direction.e.w$
END IF
CASE "E"
IF tankb.missile.x > tanka.x AND tankb.missile.direction$ <> "E" AND tankb.missile.direction$ <> "W" THEN
END IF
CASE "S"
IF tankb.missile.y > tanka.y AND tankb.missile.direction$ <> "N" AND tankb.missile.direction$ <> "S" THEN
END IF
CASE "W"
IF tankb.missile.x < tanka.x AND tankb.missile.direction$ <> "E" AND tankb.missile.direction$ <> "W" THEN
END IF
END SELECT
'                                     -- -------------------------------------------------

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
IF tankb.missile.y > tanka.y - 13 AND tankb.missile.y < tankb.missile.y > 1 AND tankb.missile.y < 200 AND tankb.missile.direction$ <> "N" AND tankb.missile.direction$ <> "S" THEN
tanka.direction$ = direction.e.w$
END IF
END SELECT

'skipped:-

IF tanka.x < 1 THEN
tanka.direction$ = "E"
END IF

IF tanka.x > 319 THEN
tanka.direction$ = "W"
END IF

IF tanka.y < 1 THEN
tanka.direction$ = "S"
END IF

IF tanka.y > 199 THEN
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



'skipped :-

IF tanka.x < 1 THEN
tanka.direction$ = "E"
END IF

IF tanka.x > 319 THEN
tanka.direction$ = "W"
END IF

IF tanka.x < 1 THEN
tanka.direction$ = "S"
END IF

IF tanka.y > 199 THEN
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


'skipped :-

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
PRINT "Score: "
LOCATE 16, 5
PRINT tanka.name$; "-"; tanka.score; " "; tankb.name$; "-"; tankb.score
IF change$ = "q" OR rounds >= rounds.limit THEN
n.y = 0
GOTO finish
END IF
LOCATE 17, 12
PRINT "Press space to continue..."
WHILE INKEY$ <> " "
WEND
GOTO newround

gameover:
LOCATE 18, 12
COLOR 12
PRINT "Game Over!"
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
END
END SELECT
GOTO again









