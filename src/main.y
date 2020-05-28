

%{
#include <stdio.h>
  #include <stdlib.h>
void yyerror(char *c);
int yylex(void);
%}

%token '[' ']''{''}'',''"'':' LET NUM

%%

S:
        JORJAO {printf("VALIDO\n");}
        ;

STR:
        LET {}
        |LET LET {}
        ;

JORJAO:
        '{'JORGE'}' {}
        ;

JORGE:
        '"'STR'"'':'TOY {}
        |JORGE','JORGE {}
        ;

TOY:
        NUM {}
        |'"'STR'"' {}
        |JORJAO {}
        |MARCELA {}
        ;

MARCELA:
        '['GALAK']'
        ;

GALAK:
        '"'STR'"'{}
        |NUM {}
        |GALAK','GALAK
        |MARCELA
        |
        ;




%%

void yyerror(char *s) {
  printf("INVALIDO\n");
}

int main() {
  yyparse();
    return 0;

}
