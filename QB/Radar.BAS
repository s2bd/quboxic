CLS
COLOR 15
LET count = 1
LET frx = 140
LET fry = 120
SOUND 100, 2
SOUND 200, 2

radar:
CLS
SCREEN 13
SOUND 100, 2
SOUND 200, 2
CIRCLE (160, 160), 4
CIRCLE (160, 160), 8
CIRCLE (160, 160), 16
CIRCLE (160, 160), 32
CIRCLE (160, 160), 64
PSET (frx, fry), 4
count = count + 1
IF count > 2 THEN frx = frx + 2
IF count > 2 THEN fry = fry - 2
IF count > 12 THEN frx = frx + 2
IF count > 12 THEN fry = fry + 10
IF count > 22 THEN frx = frx - 2
IF count > 22 THEN fry = fry - 20
IF count > 30 THEN frx = 160
IF count > 30 THEN fry = 140
IF frx = 160 AND fry = 140 THEN GOTO radar.crash
input " ", cont$
GOTO radar

radar.crash:
CLS
SOUND 100, 2
SOUND 200, 2
SOUND 100, 2
SOUND 200, 2
SCREEN 13
CIRCLE (160, 160), 4
CIRCLE (160, 160), 8
CIRCLE (160, 160), 16
CIRCLE (160, 160), 32
CIRCLE (160, 160), 64
PSET (frx, fry), 4
fry = fry + 10
IF frx = 160 AND fry = 160 THEN GOTO radar.die
input " ", cont$
GOTO radar.crash

radar.die:
CLS
SOUND 100, 2
SOUND 200, 2
SOUND 100, 2
SOUND 200, 2
SCREEN 13
CIRCLE (160, 160), 4
CIRCLE (160, 160), 8
CIRCLE (160, 160), 16
CIRCLE (160, 160), 32
CIRCLE (160, 160), 64
PSET (frx, fry), 4
PAINT (100, 30), 4
PRINT " /////////////////////////// "
PRINT " /////////////////////////// "
PRINT " /////////////////////////// "
input " ", cont$
SOUND 500, 5
CLS
SOUND 500, 5
SOUND 400, 4
SOUND 300, 3
SOUND 200, 2
SOUND 100, 1
COLOR 4
PRINT " You died! "

