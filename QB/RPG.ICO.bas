cls
screen 13
print ",."
sound 100,10
cls
print ",.,"
sound 100, 10
cls
print ",.,."
sound 100, 10
cls
print ",.,.,"
sound 100, 10
cls
print ",.,.,."
let mob1.RNG = 1
let mob1.SPD = 1
let mob1.HP = 30
let mob1.AT = 30
let mob1.DE = 20
goto main.screen

main.screen:
cls
screen 13
print "***********************************"
print "   RPG.ICO (c) 2016 by Mukto"
print "***********************************"
print
print "========================"
print "[1] Start a new game [1]"
print "[2] Load a pre-saved game [2]"
print "[3] Instruction manual [3]"
print "[4] Credits and extras [4]"
print "[5] Exit the game [5]"
print "========================"
input menu.select
select case menu.select
case 1
goto new.game
case 2
goto load.game
case 3
goto info.manual
case 4
goto credits
case 5
goto ender
end select

new.game:
cls
print " PLAYER SELECTION: "
print
print " Choose type: "
print "[1] Warrior [1]"
print "[2] Wizard [2]"
print "[3] Archer [3]"
input mob1.type
select case mob1.type
case 1
mob1.type = war
case 2
mob1.type = wiz
case 3
mob1.type = arc
end select

cls
print " PLAYER SELECTION: "
print
print " Choose gender: "
print "[1] Male [1]"
print "[2] Female [2]"
input mob1.gender
select case mob1.gender
case 1
mob1.gender = mal
case 2
mob1.gender = fem
end select

cls
print " PLAYER SELECTION: "
print
print " Choose skill: "
print "[1] RNG + 1 [1]"
print "[2] SPD + 1 [2]"
print "[3] HP + 20 [3]"
print "[4] AT + 20 [4]"
print "[5] DE + 10 [5]"
input mob1.upgrade
select case mob1.upgrade
case 1
mob1RNG = mob1.RNG + 1
case 2
mob1.SPD = mob1.SPD + 1
case 3
mob1.HP = mob1.HP + 20
case 4
mob1.AT = mob1.AT + 20
case 5
mob1.DE = mob1.DE + 10
end select

goto start.game

start.game:
cls
print " Choose a mode: "
print "[1] Story Mode [1]"
print "[2] Multiplayer [2]"
print "[3] Back... [3]"
input game.select
select case game.select
case 1
goto start.game.base
case 2
goto alpha
case 3
goto main.screen
end select

alpha:
cls
print " }}}} "
print " /loading static.meshes..."
print " }}}} "
beep
beep
beep
cls
print " }}}}}}}}}}}} "
print " /loading textures.main..."
print " }}}}}}}}}}}} "
beep
beep
cls
print " }}}}}}}}}}}}}}}}}}}} "
print " /loading textures.mobs..."
print " }}}}}}}}}}}}}}}}}}}} "
beep
' player 1.mob1
let mob1.x1 = 40
let mob1.y1 = 40
let mob1.x2 = 40
let mob1.y2 = 39
' enemy 1.orc1
let orc1.x1 = 32
let orc1.y1 = 45
let orc1.x2 = 32
let orc1.y2 = 44
beep
cls
print " }}}}}}}}}}}}}}}}}}}}}}}}}}}}}} "
print "  /preparing background... "
print " }}}}}}}}}}}}}}}}}}}}}}}}}}}}}} "
beep
beep
beep
cls
goto beta

beta:
' ////////////////////// Here's the mob.textures!
cls
print mob1.type
color 4
print "HP:", mob1.HP,""
color 1
print "DE:", mob1.DE,""
color 3
print "AT:", mob1.AT,""
color 2
print "RNG:", mob1.RNG,""
color 7
print "SPD:", mob1.SPD,""
pset (mob1.x1, mob1.y2), 8
pset (40, 39), 6
pset (orc1.x1, orc1.y1), 4
pset (orc1.x2, orc1.y2), 2
pset (12, 60), 4
pset (12, 59), 2
pset (50, 36), 4
pset (50, 35), 2
input ":" move.down
select case move.down
case "S"
mob1.y1 = mob1.y1 + 2
mob1.y2 = mob1.y2 + 2
case "W"
mob1.y1 = mob1.y1 - 2
mob1.y2 = mob1.y2 - 2
case "A"
mob1.x1 = mob1.x1 - 2
mob1.x2 = mob1.x2 - 2
case "D"
mob1.x1 = mob1.x1 + 2
mob1.x2 = mob1.x2 + 2
end select
goto beta

start.game.base:
cls
print "(newplayer)"
color 4
print "HP:", mob1.HP,""
color 1
print "DE:", mob1.DE,""
color 3
print "AT:", mob1.AT,""
color 2
print "RNG:", mob1.RNG,""
color 7
print "SPD:", mob1.SPD,""
print
print
print
color 15
print " Wizard of Almac: "
print " Hello and welcome to the magnificent city of Almac. I am Goldin. You can explore the city, free at will."
print
print " [1] Sure, thanks. But I prefer to work alone. [1]"
print " [2] Fine, thanks. Please give me a quick tour. [2]"
print " [3] Prepare to die, wizard! [3]"
print
input choice.almac.gates
select case choice.almac.gates
case 1
goto game.base.1
case 2
goto game.base.2
case 3
goto game.base.3
end select

game.base.1:
cls
print "(newplayer)"
color 4
print "HP:", mob1.HP,""
color 1
print "DE:", mob1.DE,""
color 3
print "AT:", mob1.AT,""
color 2
print "RNG:", mob1.RNG,""
color 7
print "SPD:", mob1.SPD,""
print
print
print
color 15
print " Goldin: "
print " Alright, then! If you wish. I can help you find your way, though. Need a quest?"
print
print "[1] Yes, I need a quest. [1]"
print "[2] No, thank you. I'm better off, alone. [2]"
print "[3] Hmm...I'll think about it. Why don't you show me your house? [3]"
print
input choice.game.base.1
select case choice.game.base.1
case 1
goto game.base.1.1
case 2
goto game.base.1.2
case 3
goto game.base.1.3
end select

game.base.2:
cls
print "(newplayer)"
color 4
print "HP:", mob1.HP,""
color 1
print "DE:", mob1.DE,""
color 3
print "AT:", mob1.AT,""
color 2
print "RNG:", mob1.RNG,""
color 7
print "SPD:", mob1.SPD,""
print
print
print
color 15
print " Goldin: "
print " Oh, you need a tour! Newcomer, eh? I didn't get your name. Could you tell it again?"
print
print "[Enter name of charecter]:"
input mob1.name$
cls
print mob1.name$
color 4
print "HP:", mob1.HP,""
color 1
print "DE:", mob1.DE,""
color 3
print "AT:", mob1.AT,""
color 2
print "RNG:", mob1.RNG,""
color 7
print "SPD:", mob1.SPD,""
print
print
print
color 15
print " Goldin: "
print " Hello. Nice to meet you "mob1.name$"! Let's goto a nearby inn and settle down for a while."
print
print "[1] Sure, let's go! [1]"
input lets.go
goto game.base.2.1

game.base.3:
cls
print "(newplayer)"
color 4
print "HP:", mob1.HP,""
color 1
print "DE:", mob1.DE,""
color 3
print "AT:", mob1.AT,""
color 2
print "RNG:", mob1.RNG,""
color 7
print "SPD:", mob1.SPD,""
print
print
print
color 15
print " Goldin: "
print " What?! Want to fight me? Die!!!"
print
input " [Press Enter] ",wizard.kill
goto wizard.kill

wizard.kill:
cls
print " ---"
print " ---"
cls
print "  ---"
print "  ---"
cls
print "   ---"
print "   ---"
cls
goto game.base.wizard.kill

game.base.wizard.kill:
mob1.HP = 0
mob1.DE = 0
mob1.AT = 0
mob1.RNG = 0
mob1.SPD = 0
cls
print "(newplayer)"
color 4
print "HP:", mob1.HP,""
color 1
print "DE:", mob1.DE,""
color 3
print "AT:", mob1.AT,""
color 2
print "RNG:", mob1.RNG,""
color 7
print "SPD:", mob1.SPD,""
print
print
print
color 15
print " ********************************** "
print "          GAME OVER !!!  "
print " The Enemy has killed you!!! "
print " ********************************** "
print
print " [Press Enter to continue]"
input go.die
goto main.screen

game.base.1.1:

game.base.1.2:

game.base.1.3:

game.base.2.1:

game.base.2.2:

game.base.2.3:



load.game:

info.manual:

credits:

ender:
end
