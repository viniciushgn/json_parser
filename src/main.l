
%{
#include <stdlib.h>
void yyerror(char *);

#include "y.tab.h"

%}


%%


\] {return ']';}

\[ {return '[';}



[0-9]+ {return NUM;}
[0-9]+[.][0-9]+ {return NUM;}

[,] {return ',';}

[A-Za-z]+ {return LET;}

\" {return '"';}

\: {return ':';}

\} {return '}';}

\{ {return '{';}

[[:space:]]+ { }
[[:^space:]] { }


%%

int yywrap() {
  return 1;
}
