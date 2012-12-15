"Last Change:2012/07/23.

"(大文字/小文字を区別しない)
syntax case ignore

"正規表現
"syntax match Underlined	 /^##.*/
"syntax match Identifier	 /^[ＡＢＣＤＥ].¥{6,}$/
"syntax match PreProc	 /^（.*$/
"syntax match Comment	 /¥-¥-.*¥-¥-/
"syntax match Statement	 /|.*|/

"範囲
"syntax region Statement start=/|/ end=/|/


"highlight link txtUnderlined	 Underlined 
"highlight link txtString		 String

"etc
"set textwidth=90


"マーク行をハイライト
syntax match Todo /.*¥%'a.*/ containedin=ALL
syntax match Todo /.*¥%'b.*/ containedin=ALL
syntax match Todo /.*¥%'c.*/ containedin=ALL
syntax match Todo /.*¥%'d.*/ containedin=ALL
syntax match Todo /.*¥%'e.*/ containedin=ALL
syntax match Todo /.*¥%'f.*/ containedin=ALL
syntax match Todo /.*¥%'g.*/ containedin=ALL
syntax match Todo /.*¥%'h.*/ containedin=ALL
syntax match Todo /.*¥%'i.*/ containedin=ALL
syntax match Todo /.*¥%'j.*/ containedin=ALL
syntax match Todo /.*¥%'k.*/ containedin=ALL
syntax match Todo /.*¥%'l.*/ containedin=ALL
syntax match Todo /.*¥%'m.*/ containedin=ALL
syntax match Todo /.*¥%'n.*/ containedin=ALL
syntax match Todo /.*¥%'o.*/ containedin=ALL
syntax match Todo /.*¥%'p.*/ containedin=ALL
syntax match Todo /.*¥%'q.*/ containedin=ALL
syntax match Todo /.*¥%'r.*/ containedin=ALL
syntax match Todo /.*¥%'s.*/ containedin=ALL
syntax match Todo /.*¥%'t.*/ containedin=ALL
syntax match Todo /.*¥%'u.*/ containedin=ALL
syntax match Todo /.*¥%'v.*/ containedin=ALL
syntax match Todo /.*¥%'w.*/ containedin=ALL
syntax match Todo /.*¥%'x.*/ containedin=ALL
syntax match Todo /.*¥%'y.*/ containedin=ALL
syntax match Todo /.*¥%'z.*/ containedin=ALL



"	*Comment	any comment
"
"	*Constant	any constant
"	 String		a string constant: "this is a string"
"	 Character	a character constant: 'c', '¥n'
"	 Number		a number constant: 234, 0xff
"	 Boolean	a boolean constant: TRUE, false
"	 Float		a floating point constant: 2.3e10
"
"	*Identifier	any variable name
"	 Function	function name (also: methods for classes)
"
"	*Statement	any statement
"	 Conditional	if, then, else, endif, switch, etc.
"	 Repeat		for, do, while, etc.
"	 Label		case, default, etc.
"	 Operator	"sizeof", "+", "*", etc.
"	 Keyword	any other keyword
"	 Exception	try, catch, throw
"
"	*PreProc	generic Preprocessor
"	 Include	preprocessor #include
"	 Define		preprocessor #define
"	 Macro		same as Define
"	 PreCondit	preprocessor #if, #else, #endif, etc.
"
"	*Type		int, long, char, etc.
"	 StorageClass	static, register, volatile, etc.
"	 Structure	struct, union, enum, etc.
"	 Typedef	A typedef
"
"	*Special	any special symbol
"	 SpecialChar	special character in a constant
"	 Tag		you can use CTRL-] on this
"	 Delimiter	character that needs attention
"	 SpecialComment	special things inside a comment
"	 Debug		debugging statements
"
"	*Underlined	text that stands out, HTML links
"
"	*Ignore		left blank, hidden
"
"	*Error		any erroneous construct
"
"	*Todo		anything that needs extra attention; mostly the
"			keywords TODO FIXME and XXX
