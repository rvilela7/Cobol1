# Handle my tutorials (cygwin env. in win)
# -F use free format
CC=cobc -x -F
cc=$CC
CCo= cobc -m -F
cco= $CCo

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

#### ****************** Files ******************
t10:
#	touch files/Customer.dat
	$(CC) 10FileWrite.cbl
	./10FileWrite.exe
	cat files/Customer.dat

t10_2:
#	touch files/Customer.dat
	$(CC) 10FileWrite2.cbl
	./10FileWrite2.exe

t11: t10
	$(CC) 11FileAppend.cbl
	./11FileAppend.exe
	cat files/Customer.dat

# ** Should run manually t11.
t12:
	$(CC) 12FileRead.cbl
	./12FileRead.exe


t13: t10_2
	$(CC) 13FileReport.cbl
	./13FileReport.exe
	@echo "See files/CustomerReport.rpt"

# ************************************************

clean:
	rm -f *.exe
	rm -f *.dll
	rm -f files/Customer.dat
	rm -f files/CustomerReport.rpt


