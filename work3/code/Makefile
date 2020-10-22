all:code1 code2 code3

code1:code1.tab.c
	gcc -o code1 code1.tab.c

code2:code2.tab.c
	gcc -o code2 code2.tab.c 

code3:code3.tab.c
	gcc -o code3 code3.tab.c

code1.tab.c:code1.y
	bison -d code1.y

code2.tab.c:code2.y
	bison -d code2.y

code3.tab.c:code3.y
	bison -d code3.y
