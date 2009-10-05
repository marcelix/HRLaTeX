%{
#include<stdio.h>


%}
%option outfile="main.latin2.c"
%option main



%%

\xc8	{ printf("\\v{C}");}
\xc6	{ printf("\\\'{C}");}
\xD0	{ printf("\\DJ{}");}
\xa9	{ printf("\\v{S}");}
\xaE	{ printf("\\v{Z}");}

\xE8	{ printf("\\v{c}");}
\xE6	{ printf("\\\'{c}");}
\xF0	{ printf("\\dj{}");}
\xb9	{ printf("\\v{s}");}
\xbE	{ printf("\\v{z}");}

.	ECHO;

%%


// invoke:
//      flex -8 -v -f test.l; gcc main.c -o filter        
