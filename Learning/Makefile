# Handle my tutorials (cygwin env. in win)
CC=cobc

usage:
	@echo "use:"
	@echo "make t[1..x]"
	@echo "make clean"

t1:
	$(CC) -x 1BasicDisplayInputTut.cbl
	./1BasicDisplayInputTut.exe
t2:
	$(CC) -x 2ArithmeticTut.cbl
	./2ArithmeticTut.exe
t3:
	$(CC) -x 3*.cbl
	./3DataConditionalLoopTut.exe

clean:
	rm -f *.exe
	rm -f *.dll
