9000 REM *** CONTRACT COMPLETE ***
9010 TEXT:HOME
9020 HTAB 10:VTAB 9
9021 FOR I=1 TO 20: PRINT "*";: NEXT I: PRINT "*"
9023 HTAB 10: PRINT "* ";:INVERSE: PRINT "CONTRACT COMPLETE";:NORMAL: PRINT " *"
9024 HTAB 10: PRINT "* ";
9025 C$="CRASH SHIP":F$="3 ":E$="-1"
9026 L=10-(LEN(C$))/2
9027 HTAB 10+L:PRINT C$;:HTAB 30: PRINT "*"
9030 HTAB 10:PRINT "*      FUNDS ";F$;:HTAB 30: PRINT "*"
9030 HTAB 10:PRINT "*   EXPERIENCE ";E$;:HTAB 30: PRINT "*"
9040 HTAB 10
9042 FOR I=1 TO 20: PRINT "*";: NEXT I:PRINT "*"
9100 VTAB 16
9110 PRINT "NOW WHAT?"
9120 PRINT "  1. RETURN TO THE VAB"
9130 PRINT "  2. RETURN TO ASTRO COMPLEX"
9140 PRINT "  3. RETURN TO LAUNCH"
9145 PRINT "  4. HELP"
9150 PRINT "  5. QUIT GAME"
9160 PRINT "---> ";
9170 GET A$
9171 IF A$="1" GOTO 1
9172 IF A$="2" GOTO 2
9173 IF A$="3" GOTO 3
9174 IF A$="4" OR A$="H" GOTO 9200
9175 IF A$="5" OR A$="Q" GOTO 4
9176 GOTO 9160
9200 REM *** HELP ***
9210 HOME
9220 PRINT "KSP-APPLE-II BY VINCE WEAVER"
9230 PRINT "     APPLE II FOREVER"
9240 PRINT " A,D   - STEER SHIP RIGHT/LEFT"
9250 PRINT " Z     - START ENGINES"
9260 PRINT " X     - CUT ENGINES"
9270 PRINT " SPACE - LAUNCH,STAGE"
9275 PRINT " M     - SWITCH TO ORBITAL VIEW"
9280 PRINT " ESC   - QUIT" 
9300 GET A$
9320 GOTO 9010
