CLS
SOUND 100, 1
SOUND 200, 2
BEEP
SOUND 200, 2
SOUND 100, 2
BEEP
SOUND 300, 3
SOUND 200, 4
SOUND 400, 3
SOUND 500, 6
BEEP
SOUND 400, 4
SOUND 500, 5
SOUND 600, 2
BEEP
SOUND 300, 7
SOUND 400, 7
SOUND 200, 7
BEEP
SOUND 700, 7
SOUND 600, 7
SOUND 200, 3
SOUND 100, 4
SOUND 300, 4
BEEP
BEEP
SOUND 500, 6
SOUND 600, 7
SOUND 800, 9
BEEP
SOUND 900, 4
SOUND 500, 4
SOUND 300, 4
BEEP
BEEP
SOUND 300, 2
SOUND 100, 3
SOUND 400, 2
BEEP
    'Play scale in 7 different octaves
    scale$ = "CDEFGAB"
    PLAY "L16"
    FOR i% = 0 TO 6
        PLAY "O" + STR$(i%)
        PLAY "X" + VARPTR$(scale$)
    NEXT i%
    ON PLAY(3) GOSUB Background
    PLAY ON
    Music$ = "MBo3L8ED+ED+Eo2Bo3DCL2o2A"
    Music2$ = "A2o2LCD3oB2oE+DE+DE8L3oBM"
    Music3$ = "A2o2LCDoMB2oMMBBB3o8BLo+L2o2A"
    PLAY Music$
    LOCATE 2, 1: PRINT "Press any key to stop.";
    DO WHILE INKEY$ = "": LOOP
    PLAY Music2$
    PLAY Music3$
    END

Background:
        i% = i% + 1
        LOCATE 1, 1: PRINT "Background called "; i%; "time(s)";
        PLAY Music$
        RETURN

