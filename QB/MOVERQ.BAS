middle:
 CLS
 PRINT "_______0_______"
 SELECT CASE cmd$
 CASE "D"
 GOTO right.1
 CASE "A"
 GOTO left.1
 END SELECT

right.1:
 CLS
 PRINT "________0______"
 SELECT CASE cmd$
 CASE "D"
 GOTO right.2
 CASE "A"
 GOTO middle
 END SELECT

left.1:
 CLS
 PRINT "______0________"
 SELECT CASE cmd$
 CASE "D"
 GOTO middle
 CASE "A"
 GOTO left.2
 END SELECT

