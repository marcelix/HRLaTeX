%{
#include<stdio.h>

int par_cnt=0;

#define SMALL_C_CARON   "�"
#define CAPITAL_C_CARON "�"

#define SMALL_C_ACUTE   "�"
#define CAPITAL_C_ACUTE "�"

#define SMALL_DJ	"�"
#define CAPITAL_DJ      "�"

#define SMALL_S_CARON   "�"
#define CAPITAL_S_CARON "�"

#define SMALL_Z_CARON   "�"
#define CAPITAL_Z_CARON "�"


%}

%option outfile="main.hr_tex-to-cp1250.c"
%option main




WHITESPACE [ \n\t]

CARON_COMMAND \\v


%%





\\v{WHITESPACE}c |
\\v\{c\} {
	printf(SMALL_C_CARON);
	}

\\v{WHITESPACE}C |
\\v\{C\} {
	printf(CAPITAL_C_CARON);
	}

\\\'c |
\\\'\{c\} {
	printf(SMALL_C_ACUTE);
	}

\\\'C |
\\\'\{C\} {
	printf(CAPITAL_C_ACUTE);
	}

\{\\dj\} |
\\dj{WHITESPACE} |
\\dj\{\} {
	printf(SMALL_DJ);
	}

\{\\DJ\} |
\\DJ{WHITESPACE} |
\\DJ\{\} {
	printf(CAPITAL_DJ);
	}

\\v{WHITESPACE}s |
\\v\{s\} {
	printf(SMALL_S_CARON);
	}

\\v{WHITESPACE}S |
\\v\{S\} {
	printf(CAPITAL_S_CARON);
	}

\\v{WHITESPACE}z |
\\v\{z\} {
	printf(SMALL_Z_CARON);
	}

\\v{WHITESPACE}Z |
\\v\{Z\} {
	printf(CAPITAL_Z_CARON);
	}







.	ECHO;

%%
/*

known bugs: \v{c }
- sto ako je slovo na kraju rijeci pa se razmak treba odrzati?
*/
