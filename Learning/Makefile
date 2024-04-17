# Handle my tutorials (cygwin env. in win)
# -F use free format
CC=cobc -x -F
CCo= cobc -m -F

usage:
	@echo "use:"
	@echo "make t[1..x]"
	@echo "make clean"

t1:
	$(CC) 1BasicDisplayInputTut.cbl
	./1BasicDisplayInputTut.exe
t2:
	$(CC) 2ArithmeticTut.cbl
	./2ArithmeticTut.exe
t3:
	$(CC) 3*.cbl
	./3*.exe
t4:
	$(CC) 4*.cbl
	./4*.exe
t5:
	$(CCo) 5GetSum.cbl
	$(CC) 5CallGetSum.cbl
	./5CallGetSum.exe
t6:
	$(CC) 6Looping.cbl
	./6Looping.exe
t7:
	$(CC) 7*.cbl
	./7*.exe

t8:
	$(CC) 8*.cbl
	./8*.exe	

t9:
	$(CC) 9Strings.cbl
	./9Strings.exe

clean:
	rm -f *.exe
	rm -f *.dll
