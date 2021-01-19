 CLS
  SCREEN 13
  Triangle$ = "F60 L120 E60"
  DRAW "C2 X" + VARPTR$(Triangle$)
  DRAW "BD30 P1,2 C3 M-30,-30"
 INPUT " ", control$
  KEY 4, "MENU" + CHR$(13)
  KEY LIST
  KEY 4, ""
  KEY LIST
gh:
    CLS
    OPEN "LIST" FOR OUTPUT AS #1
    DO
        INPUT "   NAME:       ", Name$
        INPUT "   AGE:        ", Age$
        WRITE #1, Name$, Age$
        INPUT "Add another entry"; R$
    LOOP WHILE UCASE$(R$) = "Y"
    CLOSE #1
    'Print the file to the screen.
    OPEN "LIST" FOR INPUT AS #1
    CLS
    PRINT "Entries in file:": PRINT
    DO WHILE NOT EOF(1)
        INPUT #1, Rec1$, Rec2$   'Read entries from file.
        PRINT Rec1$, Rec2$       'Print the entries on the screen.
    LOOP
    CLOSE #1
    KILL "LIST"






