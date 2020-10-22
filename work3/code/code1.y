%{
#include<stdio.h>
#include<stdlib.h>
#include<ctype.h>
#ifndef YYSTYPE
#define YYSTYPE double
#endif
int yylex();
extern int yyparse();
FILE* yyin;
void yyerror(const char*s);
%}


%token ADD
%left ADD '-'
%left '*''/'
%right UMINUS

%%



expr	:	expr ADD expr {$$=$1+$3;}
		|
		;

%%


int main(void)
{
	yyin = stdin;
	do {
		yyparse();

	} while (!feof(yyin));
	return 0;
}

void yyerror(const char*s)
{
	fprintf(stderr, "Parse error : %s\n", s);
	exit(1);
}


int yylex()
{
	int t;
	t=getchar();
	if(t=='+')
		return ADD;
	else
		return t;

}














