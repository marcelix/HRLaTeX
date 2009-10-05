%{
#include<stdio.h>


%}
%option outfile="main.c"
%option main


%%

\xc8	{ printf("\\v{C}");}
\xc6	{ printf("\\\'{C}");}
\xD0	{ printf("\\DJ{}");}
\x8A	{ printf("\\v{S}");}
\x8E	{ printf("\\v{Z}");}

\xE8	{ printf("\\v{c}");}
\xE6	{ printf("\\\'{c}");}
\xF0	{ printf("\\dj{}");}
\x9A	{ printf("\\v{s}");}
\x9E	{ printf("\\v{z}");}

.	ECHO;

%%


// invoke:
//      flex --nounistd -8 -v -f test.l; gcc main.c -o filter        