CLS
 germ.x1 = 20
 germ.x2 = 35
 germ.y1 = 35
 germ.y2 = 20

a:
 germ.direction$ = "N"
 germ.direction$ = "W"
 germ.direction$ = "S"
 germ.direction$ = "E"

b:
 PRINT "Welcome to "
 PRINT " THE GERMATTAX "
 PRINT
 PRINT "Do you need instructions? y/n "

instruct.y.n:
 DO WHILE INKEY$ = instruct$
 SELECT CASE instruct$
 CASE "Y"
 GOTO instruct.y
 CASE "N"
 GOTO instruct.n
 END SELECT
 LOOP

instruct.both:

instruct.y:
 PRINT "Controls : "
 PRINT
 PRINT " Move using W,A,S,D "
 PRINT
 PRINT "        Press Y to continue "
 PRINT "        Press N to exit "

command.y.n:
 DO WHILE INKEY$ = sure.or.not1$
 SELECT CASE sure.or.not1$
 CASE "Y"
 GOTO c
 CASE "N"
 GOTO z
 END SELECT
 GOTO c.z

instruct.n:

c.z:

c:
 PRINT "Loading..."

z:
 PRINT "Goodbye ! :( "
 END

