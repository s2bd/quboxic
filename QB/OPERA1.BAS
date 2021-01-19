CLS
 '----------------
 '   Opera Disco
 '----------------
 ' Press F5 to launch
 ' FREE EDITION v.6.3.2.0.1.6
SCREEN 7
 ' developer options:-
 '     * COLOR codes =
 '   // 1 = BLUE
 '   // 2 = GREEN
 '   // 3 = Lt BLUE
 '   // 4 = RED
 '   // 5 = PINK
 '   // 6 = BROWN
 '   // 7 = WHITE
 '   //14 = YELLOW
 PRINT
 PRINT "New version recquired..."
 PRINT
 PRINT "Do you need the latest version? (y/n)"
 INPUT "", cmd1$
 IF cmd1$ = "y" THEN GOTO scr.1

scr.1:
 CLS
 'PSET (hor, ver), col
'tree:
 PSET (30, 21), 6
 PSET (30, 22), 6
 PSET (30, 23), 6
 PSET (29, 21), 6
 PSET (29, 22), 6
 PSET (29, 23), 6
 PSET (31, 21), 6
 PSET (31, 22), 6
 PSET (31, 23), 6
 PSET (25, 20), 2
 PSET (26, 20), 2
 PSET (27, 20), 2
 PSET (28, 20), 2
 PSET (29, 20), 2
 PSET (30, 20), 2
 PSET (31, 20), 2
 PSET (32, 20), 2
 PSET (33, 20), 2
 PSET (34, 20), 2
 PSET (35, 20), 2
'cloud:
 PSET (10, 2), 15
 PSET (10, 3), 15
 PSET (10, 4), 7
 PSET (8, 2), 7
 PSET (9, 2), 7
 PSET (9, 3), 15
 PSET (11, 2), 15
 PSET (11, 3), 15
 PSET (11, 4), 7
'name:
 'M:
 PSET (120, 102), 4
 PSET (120, 103), 4
 PSET (120, 104), 4
 PSET (121, 102), 4
 PSET (122, 103), 4
 PSET (123, 102), 4
 PSET (124, 102), 4
 PSET (124, 103), 4
 PSET (124, 104), 4
 'U:
 PSET (126, 102), 4
 PSET (126, 103), 4
 PSET (127, 104), 4
 PSET (128, 102), 4
 PSET (128, 103), 4
 'K:
 PSET (130, 102), 4
 PSET (130, 103), 4
 PSET (130, 104), 4
 PSET (131, 103), 4
 PSET (132, 102), 4
 PSET (132, 104), 4
 'T:
 PSET (134, 102), 4
 PSET (135, 102), 4
 PSET (135, 103), 4
 PSET (135, 104), 4
 PSET (136, 102), 4
 'O:
 PSET (138, 102), 4
 PSET (138, 103), 4
 PSET (138, 104), 4
 PSET (139, 102), 4
 PSET (139, 104), 4
 PSET (140, 102), 4
 PSET (140, 103), 4
 PSET (140, 104), 4

scale$ = "CDEFABG"
 PLAY "L8"
  FOR i% = 0 TO 6
   PLAY "O" + STR$(i%)
   PLAY "X" + VARPTR$(scale$)
 NEXT i%
scale.1$ = "ABEGFAC"
 PLAY "L2"
  FOR i% = 0 TO 6
   PLAY "O" + STR$(i%)
   PLAY "X" + VARPTR$(scale.1$)
  NEXT i%



