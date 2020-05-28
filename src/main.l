
%{
#include <stdlib.h>
void yyerror(char *);

#include "y.tab.h"

%}


%%


[\n] { }

\] {return ']';}

\[ {return '[';}



[0-9]+ {return NUM;}
[0-9]+[.][0-9]+ {return NUM;}

[,] {return ',';}



\" {return '"';}

\: {return ':';}

\} {return '}';}

\{ {return '{';}


\"(\\.|[^"\\])*\" { return LET;}



. ; { }


%%

int yywrap() {
  return 1;
}
