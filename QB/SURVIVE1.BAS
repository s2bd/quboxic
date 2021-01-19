start:
 CLS
 PRINT " ******** META TEST ********"
 PRINT
 PRINT "INPUT SQUADRON ID NUMBER:"
 INPUT ">", id$
 IF id$ = "Viper" THEN GOTO viper.squad
 IF id$ = "Scorpion" THEN GOTO scorpion.squad
 IF id$ = "test_smart" THEN GOTO diagnostics
 IF id$ = "test_log" THEN GOTO diagnostics.log
 IF id$ = "show_error" THEN GOTO error.start

error.start:
 CLS
 PRINT " ******** META TEST ********"
 PRINT
 PRINT "WRONG SQUADRON ID NUMBER!"
 PRINT "PLEASE RETRY..."
 PRINT
 INPUT "Type BACK to go back to start.menu", back.start1$
 IF back.start1$ = "BACK" THEN GOTO start
 IF back.start1$ = "back" THEN GOTO start
 IF back.start1$ = "lol dude" THEN GOTO face1

viper.squad:

scorpion.squad:

diagnostics:

diagnostics.log:

face1:









