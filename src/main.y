

%{
#include <stdio.h>
  #include <stdlib.h>
void yyerror(char *c);
int yylex(void);
%}

%token '[' ']''{''}'',''"'':' LET NUM '\n'

%%

S:
        JORJAO {printf("VALIDO\n");}
        ;


JORJAO:
        '{'JORGE'}' {}
        ;

JORGE:
        JORGE','JORGE {}
        |STR':'TOY {}
        ;

TOY:
        NUM {}
        |STR {}
        |JORJAO {}
        |MARCELA {}
        ;

MARCELA:
        '['GALAK']'
        ;

GALAK:
        NUM {}
        |STR {}
        |GALAK','GALAK
        |MARCELA
        |
        ;



STR:
        LET {}
        |LET LET {}
        ;



%%

void yyerror(char *s) {
  printf("INVALIDO\n");
}

int main() {
  yyparse();
    return 0;

}
