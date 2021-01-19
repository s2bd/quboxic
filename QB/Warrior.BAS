cls
print " Ninja Tune A "
print
print " Press Enter "
input " ", ent$
goto load.vars

load.vars:
CLS
LET man.x1 = 50
LET man.y1 = 60
LET man.x2 = 50
LET man.y2 = 61
LET mob.x1 = 120
LET mob.y1 = 110
LET mob.x2 = 120
LET mob.y2 = 111
PRINT " Loading . . ."
LET man.HP = 100
LET mob.HP = 80
PRINT " Loading . . ."
CLS
LET man.skn = 7
LET man.col = 1
LET mob.skn = 8
LET mob.col = 4
LET mob.at.x = 4
LET mob.at.y = 8
GOTO mash.up

mash.up:
CLS
SCREEN 13
PAINT (130, 130), 2
PSET (man.x1, man.y1), man.skn
PSET (man.x2, man.y2), man.col
PSET (mob.x1, mob.y1), mob.skn
PSET (mob.x2, mob.y2), mob.col

IF man.x1 = mob.x1 AND man.x2 = mob.x2 AND man.y1 = mob.y1 AND man.y2 = mob.y2 THEN GOTO script.1
IF man.x1 = mob.x1 THEN mob.at.x = man.x1
IF mob.at.x = man.x1 THEN man.HP = man.HP - 10

SELECT CASE control$
CASE CHR$(87)
man.y1 = man.y1 - 2
man.y2 = man.y2 - 2
CASE CHR$(83)
man.y1 = man.y1 + 2
man.y2 = man.y2 + 2
CASE CHR$(65)
man.x1 = man.x1 - 2
man.x2 = man.x2 - 2
CASE CHR$(68)
man.x1 = man.x1 + 2
man.x2 = man.x2 + 2
END SELECT

GOTO mash.up

script.1:
CLS
SOUND 500, 10

