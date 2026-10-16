if exists("b:current_syntax") | finish | endif

syn keyword blpKeyword using template menu section submenu item layout styles bind accessibility responses strings items mime-types patterns suffixes
syn keyword blpBool true false
syn match   blpType    "\<\u\w*\(\.\u\w*\)*\>"
syn match   blpProp    "\<[a-z][a-z0-9-]*\ze\s*:"
syn match   blpNumber  "\<\d\+\(\.\d\+\)\?\>"
syn region  blpString  start=+"+ skip=+\\"+ end=+"+
syn region  blpString  start=+'+ skip=+\\'+ end=+'+
syn match   blpTrans   "\<_\ze("
syn match   blpComment "//.*$"
syn region  blpComment start="/\*" end="\*/"

hi def link blpKeyword Keyword
hi def link blpBool    Boolean
hi def link blpType    Type
hi def link blpProp    Identifier
hi def link blpNumber  Number
hi def link blpString  String
hi def link blpTrans   Function
hi def link blpComment Comment

let b:current_syntax = "blueprint"
