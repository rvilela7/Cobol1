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

clean:
	rm -f *.exe
	rm -f *.dll
