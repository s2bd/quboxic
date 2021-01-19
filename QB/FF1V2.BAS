CLS
SCREEN 1
DIM Box%(1 TO 200)
x1% = 1: x2% = 10: y1% = 1: y2% = 10
LINE (x1%, y1%)-(x2%, y2%), 2, BF
GET (x1%, y1%)-(x2%, y2%), Box%
DO
     PUT (x1%, y1%), Box%, XOR
     x1% = RND * 300
     y1% = RND * 180
     PUT (x1%, y1%), Box%
LOOP WHILE INKEY$ = ""
PRINT "FREE FALLIN' "
COLOR 4
PRINT "Made by As39002"
PRINT "-------------------"
PRINT
PRINT
COLOR 3
PRINT "LOAD => FileBasis(1)/Documents/QB"
'Play scale in 7 different octaves
scale$ = "CDEFGAB"
PLAY "L16"
FOR i% = 0 TO 6
   PLAY "O" + STR$(i%)
   PLAY "X" + VARPTR$(scale$)
NEXT i%
COLOR 4
PRINT
PRINT "Just press Enter to move right"
COLOR 10
'Play scale in 7 different octaves
scale$ = "ABCDEFG"
PLAY "L16"
FOR i% = 0 TO 6
   PLAY "O" + STR$(i%)
   PLAY "X" + VARPTR$(scale$)
NEXT i%
CLS
SCREEN 7
COLOR 12
PRINT CHR$(3); CHR$(3); CHR$(3)
COLOR 10
PRINT
PRINT
PRINT
PRINT CHR$(2)
PRINT "-----------------"
PRINT
PRINT "                 ----------------"
PRINT
PRINT "-----------------"; CHR$(1)
PRINT CHR$(176); CHR$(176); CHR$(176)
COLOR 8
INPUT "0->", inp$
COLOR 10
CLS
COLOR 12
PRINT CHR$(3); CHR$(3); CHR$(3)
COLOR 10
PRINT
PRINT
PRINT
PRINT " "; CHR$(2)
PRINT "-----------------"
PRINT
PRINT "                 ----------------"
PRINT
PRINT "-----------------"; CHR$(1)
PRINT CHR$(176); CHR$(176); CHR$(176)
COLOR 8
INPUT "0->", inp$
COLOR 10
CLS
COLOR 12
PRINT CHR$(3); CHR$(3); CHR$(3)
COLOR 10
PRINT
PRINT
PRINT
PRINT "  "; CHR$(2)
PRINT "-----------------"
PRINT
PRINT "                 ----------------"
PRINT
PRINT "-----------------"; CHR$(1)
PRINT CHR$(176); CHR$(176); CHR$(176)
COLOR 8
INPUT "0->", inp$
COLOR 10
CLS
COLOR 12
PRINT CHR$(3); CHR$(3); CHR$(3)
COLOR 10
PRINT
PRINT
PRINT
PRINT "   "; CHR$(2)
PRINT "-----------------"
PRINT
PRINT "                 ----------------"
PRINT
PRINT "-----------------"; CHR$(1)
PRINT CHR$(176); CHR$(176); CHR$(176)
COLOR 8
INPUT "0->", inp$
COLOR 10
CLS
COLOR 12
PRINT CHR$(3); CHR$(3); CHR$(3)
COLOR 10
PRINT
PRINT
PRINT
PRINT "    "; CHR$(2)
PRINT "-----------------"
PRINT
PRINT "                 ----------------"
PRINT
PRINT "-----------------"; CHR$(1)
COLOR 8
INPUT "0->", inp$
COLOR 10
CLS
COLOR 12
PRINT CHR$(3); CHR$(3); CHR$(3)
COLOR 10
PRINT
PRINT
PRINT
PRINT "     "; CHR$(2)
PRINT "-----------------"
PRINT
PRINT "                 ----------------"
PRINT
PRINT "-----------------"; CHR$(1)
COLOR 8
INPUT "0->", inp$
COLOR 10
CLS
COLOR 12
PRINT CHR$(3); CHR$(3); CHR$(3)
COLOR 10
PRINT
PRINT
PRINT
PRINT "      "; CHR$(2)
PRINT "-----------------"
PRINT
PRINT "                 ----------------"
PRINT
PRINT "-----------------"; CHR$(1)
COLOR 8
INPUT "0->", inp$
COLOR 10
CLS











