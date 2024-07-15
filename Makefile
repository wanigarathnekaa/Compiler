all:
	bison -t -d -v parser.y
	flex lexer.l
	g++ lex.yy.c parser.tab.c -ll