local Pos = require("util/Position")

-- This is the lexer for HolyP.
-- The lexer splits the source code into tokens that hold the parser can go through.
local l = {}


l.TokenTypes = {
-- +----MISC----+
	Identifier = "TK_IDENTIFIER",

-- +----LITERALS----+
	Int    = "TK_INT",    -- 0
	Float  = "TK_FLOAT",  -- 0.0
	String = "TK_STRING", -- "x"
	Char   = "TK_CHAR",   -- 'x'

-- +----PUNCTUATION----+
	LCurly   = "TK_LEFT_CURLY",    -- {
	RCurly   = "TK_RIGHT_CURLY",   -- }
	LBracket = "TK_LEFT_BRACKET",  -- [
	RBracket = "TK_RIGHT_BRACKET", -- ]
	LParen   = "TK_LEFT_PAREN",    -- (
	RParen   = "TK_RIGHT_PAREN",   -- )
	Dot      = "TK_DOT",           -- .
	Comma    = "TK_COMMA",         -- ,
	DerefVal = "TK_DEREF_VAL",     -- ->
	Semi     = "TK_SEMICOLON",     -- ;
	Colon    = "TK_COLON",         -- :
	Plus     = "TK_PLUS",          -- +
	Minus    = "TK_MINUS",         -- -
	Star     = "TK_STAR",          -- *
	Slash    = "TK_SLASH",         -- /
	Modulo   = "TK_MODULO",        -- %
	Equal    = "TK_EQUAL",         -- =
	EqEq     = "TK_EQEQ",          -- ==
	PlEq     = "TK_PLEQ",          -- +=
	MiEq     = "TK_MIEQ",          -- -=
	StEq     = "TK_STEQ",          -- *=
	SlEq     = "TK_SLEQ",          -- /=

-- +----TYPES----+
	TypeInt    = "TK_TYPE_INT",    -- Int
	TypeFloat  = "TK_TYPE_FLOAT",  -- Float
	TypeString = "TK_TYPE_STRING", -- String

-- +----KEYWORDS----+
	KeywordIf      = "TK_KEYWORD_IF",      -- if
	KeywordElse    = "TK_KEYWORD_ELSE",    -- else
	KeywordSwitch  = "TK_KEYWORD_SWITCH",  -- switch
	KeywordCase    = "TK_KEYWORD_CASE",    -- case
	KeywordDefault = "TK_KEYWORD_DEFAULT", -- default
	KeywordFor     = "TK_KEYWORD_FOR",     -- for
	KeywordWhile   = "TK_KEYWORD_WHILE",   -- while
	KeywordDo      = "TK_KEYWORD_DO",      -- do
	KeywordBreak   = "TK_KEYWORD_BREAK",   -- break
	KeywordGoto    = "TK_KEYWORD_GOTO",    -- goto
	KeywordReturn  = "TK_KEYWORD_RETURN",  -- return
	KeywordConst   = "TK_KEYWORD_CONST",   -- const
	KeywordClass   = "TK_KEYWORD_CLASS",   -- class
	KeywordStruct  = "TK_KEYWORD_STRUCT",  -- struct
	KeywordUnion   = "TK_KEYWORD_UNION",   -- union

-- +----PREPROCCESSOR----+
	PreProcInclude   = "TK_PREPROC_INCLUDE", -- #include
	PreProcAssert    = "TK_PREPROC_ASSERT",  -- #assert

-- +----DIRECTIVES----+
	DirDate = "TK_DIRECTIVE_DATE", -- __DATE__
	DirTime = "TK_DIRECTIVE_TIME", -- __TIME__
	DirLine = "TK_DIRECTIVE_LINE", -- __LINE__
	DirFile = "TK_DIRECTIVE_FILE", -- __FILE__
}


return l
