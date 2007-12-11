%option never-interactive
%option noyywrap
%%
class											return SL_CLASS;
surface											return SL_SURFACE;
displacement									return SL_DISPLACEMENT;
light											return SL_LIGHT;
volume											return SL_VOLUME;
transformation									return SL_TRANSFORMATION;
imager											return SL_IMAGER;

float											return SL_FLOAT;
color											return SL_COLOR;
point											return SL_POINT;
vector											return SL_VECTOR;
normal											return SL_NORMAL;
matrix											return SL_MATRIX;
string											return SL_STRING;

void											return SL_VOID;
output											return SL_OUTPUT;
for												return SL_FOR;
while											return SL_WHILE;
if												return SL_IF;
gather											return SL_GATHER;
else											return SL_ELSE;
break											return SL_BREAK;
uniform											return SL_UNIFORM;
varying											return SL_VARIABLE;
private											return SL_PRIVATE;
public											return SL_PUBLIC;
continue										return SL_CONTINUE;
illuminance										return SL_ILLUMINANCE;
illuminate										return SL_ILLUMINATE;
solar											return SL_SOLAR;
return											return SL_RETURN;
extern											return SL_EXTERN;

texture											return SL_TEXTURE;
shadow											return SL_SHADOW;
environment										return SL_ENVIRONMENT;
bump											return SL_BUMP;

PI												return SL_FCN_PI;

\"[^\"]*\"										{	strcpy(yylval.string,yytext);	return SL_TEXT_VALUE;				}
[a-zA-Z\_][a-zA-Z0-9\_]*						{	strcpy(yylval.string,yytext);	return SL_IDENTIFIER_VALUE;			}
(([0-9]*\.[0-9]+)([eE][+-]?[0-9]+)?)			{	strcpy(yylval.string,yytext);	return SL_FLOAT_VALUE;				}
(([0-9]+\.[0-9]*)([eE][+-]?[0-9]+)?)			{	strcpy(yylval.string,yytext);	return SL_FLOAT_VALUE;				}
(([0-9]+)([eE][+-]?[0-9]+)?)					{	strcpy(yylval.string,yytext);	return SL_FLOAT_VALUE;				}


\,												return SL_COMMA;
\:												return SL_COLON;
\?												return SL_QUESTION;
\;												return SL_SEMI_COLON;

\+\+											return SL_INCREMENT;
\-\-											return SL_DECREMENT;
\+\=											return SL_INCREMENT_BY;
\-\=											return SL_DECREMENT_BY;
\*\=											return SL_MULTIPLY_BY;
\/\=											return SL_DIVIDE_BY;

\<\=											return SL_COMP_LESS_EQUAL;
\>\=											return SL_COMP_GREATER_EQUAL;
\<												return SL_COMP_LESS;
\>												return SL_COMP_GREATER;
\=\=											return SL_COMP_EQUAL;
\!\=											return SL_COMP_DIFFERENT;
\&\&											return SL_AND;
\|\|											return SL_OR;
\!												return SL_NOT;
\+												return SL_PLUS;
\-												return SL_MINUS;
\=												return SL_EQUAL;
\*												return SL_MULTIPLY;
\/												return SL_DIVIDE;
\^												return SL_CROSS;
\.												return SL_DOT;

\(												return SL_OPEN_PARANTHESIS;
\)												return SL_CLOSE_PARANTHESIS;
\{												return SL_OPEN_CRL_PARANTHESIS;
\}												return SL_CLOSE_CRL_PARANTHESIS;
\[												return SL_OPEN_SQR_PARANTHESIS;
\]												return SL_CLOSE_SQR_PARANTHESIS;

\#line[ ][0-9]+[ ]\"[^\"]*\"					{ char tmp[256]; sscanf(yytext+6,"%d \"%s\"",&lineNo,tmp); tmp[strlen(tmp)-1] = '\0';  if (sourceFile != NULL) free(sourceFile); sourceFile = strdup(tmp);}
\#line[ ][0-9]+.*								{ sscanf(yytext+1,"%d",&lineNo); }
\#.*											;
[ \t]+											;

\n												{ lineNo++;	}
%%
