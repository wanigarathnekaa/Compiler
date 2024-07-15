%{
void yyerror (char *s);
int yylex();
#include <stdio.h>     /* C declarations used in actions */
#include <stdlib.h>
#include <ctype.h>
%}

%union {int num; char id;}         /* Yacc definitions */
%start line
%token print
%token ADD SUB MUL DIV
%token LEFTP RIGHTP
%token exit_command
%token <num> number
%type <num> line exp term factor
%left ADD SUB
%left MUL DIV

%%

/* descriptions of expected inputs     corresponding actions (in C) */

line    : exit_command            {exit(EXIT_SUCCESS);}
        | exp print               {printf("Result: %d\n", $1);}
        | line exp print          {printf("Result: %d\n", $2);}
        | exp exit_command        {printf("Result: %d\nProgram terminates", $1);exit(EXIT_SUCCESS);}
        ;

exp     : term                    {$$ = $1;}
        | exp ADD term            {$$ = $1 + $3;}
        | exp SUB term            {$$ = $1 - $3;}
        ;

term    : factor                  {$$ = $1;}
        | term MUL factor         {$$ = $1 * $3;}
        | term DIV factor         {
                                    if($3 == 0)
                                    {
                                        yyerror("Division by zero error");
                                        $$ = 0;
                                    } else {
                                        $$ = $1 / $3;
                                    }
                                }
        ;

factor  : number                  {$$ = $1;}
        | LEFTP exp RIGHTP        {$$ = $2;}
        ;

%%                     /* C code */

int main (void) {
    return yyparse();
}

void yyerror (char *s) {
    fprintf (stderr, "%s\n", s);
} 
