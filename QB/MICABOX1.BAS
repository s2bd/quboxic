mains:
CLS
SCREEN 7
SOUND 100, 1
SOUND 200, 1
SOUND 300, 2
SOUND 100, 1
SOUND 200, 1
SOUND 300, 2
SOUND 100, 1
SOUND 200, 1
SOUND 300, 2
PRINT "loading variables..."
PRINT
SOUND 500, 43
LET a = 55
LET b = -55
LET ab = 0
LET c = 110
LET d = -110
LET e = 165
LET f = -165
LET g = 165 + 55
LET h = -165 - 55
PRINT "Variables declared"
CLS
SCREEN 13
PAINT (320, 320), 7
LINE (56, 78)-(78, 56), 4, BF
INPUT ">", input1$
IF input1$ = "start" THEN GOTO ATI
IF input1$ <> "start" THEN GOTO mains
ATI:
 CLS
 PRINT "MOVEMENT TEST"
 PRINT
 PRINT CHR$(1)
 LINE (x1, y1)-(x2, y2), 4, BF
 PRINT
 INPUT ">", move1$
 IF move1$ = "left" THEN GOTO left.by.1
 IF move1$ = "right" THEN GOTO right.by.1
 IF move1$ = "exit" THEN END

left.by.1:
 x1 = a
 x2 = b
 y1 = b
 y2 = a
 GOTO ATI


right.by.1:
 x1 = b
 x2 = a
 y1 = a
 y2 = b
 GOTO ATI



