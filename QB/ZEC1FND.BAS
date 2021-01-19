CLS

player.id.select:
CLS
PRINT " Enter your name:"
PRINT
INPUT ">", plr.name$
CLS

PRINT " Select fighter:"
PRINT
PRINT "[1] Joe Threestar [1]"
PRINT "[2] Mike Slasher [2]"
PRINT "[3] The Shredder [3]"
PRINT "[4] William Bankbang [4]"
PRINT "[5] Victarion Wazowski [5]"
PRINT "[6] -LOCKED- [6]"
PRINT "[7] -LOCKED- [7]"
PRINT
INPUT player.id
SELECT CASE player.id
CASE 1
player.id = 1
CASE 2
player.id = 2
CASE 3
plyer.id = 3
CASE 4
player.id = 4
CASE 5
player.id = 5
CASE 6
player.id = 0
CASE 7
player.id = 0
END SELECT

GOTO id.info

id.info:
 CLS
 LET p1.hp = 300
 LET p1.sp = 300
 LET mob1.hp = 450
 LET mob1.sp = 200
 LET mob1.name$ = "Crank Shaft"
 LET plr.col = player.id
 IF player.id = 1 THEN plr.col$ = "Joe Threestar"
 IF player.id = 2 THEN plr.col$ = "Mike Slasher"
 IF player.id = 3 THEN plr.col$ = "The Shredder"

 GOTO test.match

test.match:
 CLS
 SCREEN 13

  IF plr.hp < 0 THEN GOTO game.over
  IF mob1.hp < 0 THEN GOTO victory

 PRINT " *** TEST MATCH ***"
 PRINT " /// USER LEAGUE ///"
 PRINT
 PRINT " Player 1 : ", plr.name$
 PRINT plr.col$
 PRINT
 PRINT "HEALTH:", p1.hp
 PRINT "STAMINA:", p1.sp
 PRINT
 PRINT " Available moves: "
 PRINT "[1] LIGHT PUNCH (-20 SP) deals 10 HP"
 PRINT "[2] LIGHT KICK (-25 SP) deals 20 HP"
 PRINT "[3] HEAVY PUNCH (-40 SP) deals 25 HP"
 PRINT "[4] PUSH KICK (-50 SP) deals 50 HP"
 PRINT
 PRINT " Player 2 :", mob1.name$
 PRINT mob1.col$
 PRINT
 PRINT "HEALTH:", mob1.hp
 PRINT "STAMINA:", mob1.sp
 PRINT
 INPUT ">", plr.move
 IF plr.move = 1 THEN mob1.hp = mob1.hp - 10
 IF plr.move = 2 THEN mob1.hp = mob1.hp - 20
 IF plr.move = 3 THEN mob1.hp = mob1.hp - 25
 IF plr.move = 4 THEN mob1.hp = mob1.hp - 50
  IF plr.move = 1 THEN plr.sp = plr.sp - 20
  IF plr.move = 2 THEN plr.sp = plr.sp - 25
  IF plr.move = 3 THEN plr.sp = plr.sp - 40
  IF plr.move = 4 THEN plr.sp = plr.sp - 50
 mob1.at = INT(4 * RND)
  IF mob1.at = 1 THEN plr.hp = plr.hp - 10
  IF mob1.at = 2 THEN plr.hp = plr.hp - 20
  IF mob1.at = 3 THEN plr.hp = plr.hp - 25
  IF mob1.at = 4 THEN plr.hp = plr.hp - 50
   IF mob1.at = 1 THEN mob1.sp = mob1.sp - 20
   IF mob1.at = 2 THEN mob1.sp = mob1.sp - 25
   IF mob1.at = 3 THEN mob1.sp = mob1.sp - 40
   IF mob1.at = 4 THEN mob1.sp = mob1.sp - 50

   plr.sp = plr.sp + 5
   plr.hp = plr.hp + 1
   mob1.sp = mob1.sp + 5
   mob1.hp = mob1.hp + 1

GOTO test.match

game.over:
 PRINT
 PRINT
 PRINT " GAME OVER !!!"
 END

victory:
 PRINT
 PRINT
 PRINT " VICTORY !!!"
 END


  






