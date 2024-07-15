%{
#include "parser.tab.h"
void yyerror (char *s);
int yylex();
%}


%%
[\n]				   {return print;}
"STOP"				   {return exit_command;}
[0-9]+                 {yylval.num = atoi(yytext); return number;}
[ \t]                  {;}
"+"                    {return ADD;}
"-"                    {return SUB;}
"*"                    {return MUL;}
"/"                    {return DIV;}
"("                    {return LEFTP;}
")"                    {return RIGHTP;}
.                      {ECHO; yyerror ("unexpected character");}

%%
int yywrap (void) {return 1;}
