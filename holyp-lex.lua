-- This is the lexer for HolyP.
-- The lexer splits the source code into tokens that hold the parser can go through.
local l = {}


l.TokenTypes = {
-- +----MISC----+
	Identifier = "TK_IDENTIFIER",

-- +----LITERALS----+
	Int    = "TK_INT",
	Float  = "TK_FLOAT",
	String = "TK_STRING",
	Char   = "TK_CHAR",

-- +----PUNCTUATION----+
	LCurly   = "TK_LEFT_CURLY", -- {
	RCurly   = "TK_RIGHT_CURLY", -- }
	LBracket = "TK_LEFT_BRACKET", -- [
	RBracket = "TK_RIGHT_BRACKET", -- ]
	LParen   = "TK_LEFT_PAREN", -- (
	RParen   = "TK_RIGHT_PAREN", -- )
	Dot      = "TK_DOT",
	Comma    = "TK_COMMA",
	Equal    = "TK_EQUAL",
	EqEq     = "TK_EQEQ",
	Semi     = "TK_SEMICOLON",
	Colon    = "TK_COLON",
	DerefVal = "TK_DEREF_VAL", -- ->

-- +----TYPES----+
	TypeInt    = "TK_TYPE_INT",
	TypeFloat  = "TK_TYPE_FLOAT",
	TypeString = "TK_TYPE_STRING",

-- +----KEYWORDS----+
	KeywordIf      = "TK_KEYWORD_IF",
	KeywordElse    = "TK_KEYWORD_ELSE",
	KeywordSwitch  = "TK_KEYWORD_SWITCH",
	KeywordCase    = "TK_KEYWORD_CASE",
	KeywordDefault = "TK_KEYWORD_DEFAULT",
	KeywordFor     = "TK_KEYWORD_FOR",
	KeywordWhile   = "TK_KEYWORD_WHILE",
	KeywordDo      = "TK_KEYWORD_DO",
	KeywordBreak   = "TK_KEYWORD_BREAK",
	KeywordGoto    = "TK_KEYWORD_GOTO",
	KeywordReturn  = "TK_KEYWORD_RETURN",
	KeywordConst   = "TK_KEYWORD_CONST",
	KeywordStruct  = "TK_KEYWORD_STRUCT",
	KeywordUnion   = "TK_KEYWORD_UNION",
-- +----PREPROCCESSOR----+
	PreProcDefine  = "TK_PREPROC_DEFINE",
	PreProcInclude = "TK_PREPROC_INCLUDE",
}


return l
