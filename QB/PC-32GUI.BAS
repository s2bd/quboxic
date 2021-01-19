DECLARE FUNCTION Play! ()
  CLS
  PRINT "Welcome to the 1970s Computer Operating System"
  PRINT "version 2.8.4.3.1.1.0 normal edition"
  PRINT
  INPUT "Enter your name please: ", name$
  PRINT
  PRINT "Hello "; name$; "!"
  PRINT "My name is PC-32"
  PRINT
  PRINT "Let me show you a simple calculation program."
  INPUT "Type Go to proceed:", Go1$
  IF Go1$ = "Go" THEN SOUND 339, 5
  INPUT "Enter your first number:", num1$
  INPUT "Enter your second number:", num2$
  PRINT
  PRINT "The answer is : "; num1$ + num2$
  PRINT
  SOUND 339, 5
  INPUT "Type Go to proceed:", Go1.5$
  IF Go1.5$ = "Go" THEN SOUND 339, 5
  CLS
  PRINT "So you see, a computer can solve simple sums. It can also do subtractions. Come, let me show you."
  PRINT
  INPUT "Type Go to proceed:", Go2$
  IF Go2$ = "Go" THEN SOUND 339, 5







