SELECT CASE start$
CASE "Y"
GOTO home
CASE "N"
GOTO home
END SELECT
CLS
'This is a trial software
'-------------------------
'Created by As39002
'
'Press F5 to launch
CLS
COLOR 12
PRINT "Loading..."
'Play scale in 7 different octaves
scale$ = "CDEFGAB"
PLAY "L16"
FOR i% = 0 TO 6
 PLAY "O" + STR$(i%)
 PLAY "X" + VARPTR$(scale$)
NEXT i%
GOTO home
home:
CLS
COLOR 2
PRINT "                           "; CHR$(1); CHR$(2); "  Mad Maths  "; CHR$(2); CHR$(1)
COLOR 20
PRINT "                for a new era of future mathematics"
COLOR 3
PRINT
PRINT "                      Welcome to this software"
PRINT "                          Made by As39002"
PRINT
COLOR 15
PRINT "                           ***Contents***"
PRINT
PRINT "                      Press A for simple addition"
PRINT "                      Press B for simple subtraction"
PRINT "                      Press C for simple multiplication"
PRINT "                      Press D for simple division"
PRINT "                      Press X for more..."
DO WHILE INKEY$ = start$
SELECT CASE start$
CASE "A"
GOTO addition
CASE "B"
GOTO subtraction
CASE "C"
GOTO multiplication
CASE "D"
GOTO division
CASE "X"
GOTO moreoptions
END SELECT
LOOP

addition:
PRINT
PRINT
PRINT
CLS
COLOR 22
PRINT "                         Addition Master"
COLOR 12
PRINT "                       addition made easy"
PRINT
COLOR 15
INPUT "                      Enter the first number", num1.add
INPUT "                      Enter the second number", num2.add
COLOR 3
PRINT "                      Are there any more numbers? if not, type 0"
COLOR 15
DO WHILE INKEY$ = y.n$
SELECT CASE y.n$
CASE "Y"
GOTO more.add
CASE "N"
GOTO ans.add
END SELECT
LOOP
more.add:
INPUT "                      Enter the third number", num3.add
COLOR 3
PRINT "                      Are there any more numbers? if not, type 0"
COLOR 15
DO WHILE INKEY$ = y.n$
SELECT CASE y.n$
CASE "Y"
GOTO evenmore.add
CASE "N"
GOTO ans.add
END SELECT
LOOP
evenmore.add:
INPUT "                      Enter the fourth number", num4.add
COLOR 3
PRINT "                      Sorry, no more numbers can be input."
COLOR 15
GOTO ans.add
ans.add:
PRINT "                      The answer is ", num1.add + num2.add + num3.add + num4.add
GOTO quit.add
quit.add:
COLOR 20
PRINT "     Type N to go back to homescreen."
PRINT "                   OR          "
PRINT "     Type Y to do sums again."
PRINT "                   OR          "
PRINT "     Type Exit to quit this program."
COLOR 2
INPUT "                      Type your command here: ", cmd1$
IF cmd1$ = "N" THEN GOTO home
IF cmd1$ = "Y" THEN GOTO addition
IF cmd1$ = "Exit" THEN END

subtraction:

multiplication:

division:

moreoptions:


