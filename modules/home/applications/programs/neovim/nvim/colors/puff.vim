set background=light

hi clear
syntax reset
let g:colors_name = 'puff'

hi Normal         guifg=#202020 guibg=#ffdab9 gui=NONE
hi Cursor         guifg=#ffdab9 guibg=#5f5faf gui=NONE
hi CursorLine     guibg=#f5c195 gui=NONE
hi CursorColumn   guibg=#f5c195 gui=NONE
hi ColorColumn    guibg=#f0cfae gui=NONE

hi LineNr         guifg=#b06040 guibg=NONE gui=NONE
hi CursorLineNr   guifg=#8b0000 guibg=NONE  gui=NONE
hi SignColumn     guibg=NONE
hi FoldColumn     guifg=#7a6a5a guibg=NONE

hi VertSplit      guifg=#d0b090 guibg=#d0b090
hi WinSeparator   guifg=#d0b090 guibg=#d0b090

hi StatusLine     guifg=#202020 guibg=#e3c1a5 
hi StatusLineNC   guifg=#7a6a5a guibg=#efcaa9 gui=NONE

hi TabLine        guifg=#7a6a5a guibg=#efcaa9 gui=NONE
hi TabLineSel     guifg=#202020 guibg=#ffdab9 
hi TabLineFill    guibg=#efcaa9

hi Visual         guifg=NONE guibg=#d8c0b0 gui=NONE
hi Search         guifg=#ffffff guibg=#a02090 gui=NONE
hi IncSearch      guifg=#ffffff guibg=#2e8b57 

hi MatchParen     guifg=#ffffff guibg=#6a5acd 
hi Pmenu          guifg=#202020 guibg=#ffd2ae
hi PmenuSel       guifg=#202020 guibg=#f5c195 
hi PmenuThumb     guibg=#b0a090

hi Comment        guifg=#607090

hi Constant       guifg=#b03060
hi String         guifg=#b25d00
hi Character      guifg=#b25d00
hi Number         guifg=#b03060
hi Boolean        guifg=#b03060
hi Float          guifg=#b03060

hi Statement      guifg=#8b1f1f 
hi Conditional    guifg=#8b1f1f 
hi Repeat         guifg=#8b1f1f 
hi Label          guifg=#8b1f1f
hi Keyword        guifg=#8b1f1f 
hi Exception      guifg=#8b1f1f

" Functions + identifiers
hi Identifier     guifg=#007070 gui=NONE
hi Function       guifg=#006699 gui=NONE

" Types
hi Type           guifg=#2e8b57 gui=NONE
hi StorageClass   guifg=#2e8b57 gui=NONE
hi Structure      guifg=#2e8b57 gui=NONE
hi Typedef        guifg=#2e8b57 gui=NONE

" Preprocessor
hi PreProc        guifg=#a02090
hi Include        guifg=#a02090
hi Define         guifg=#a02090
hi Macro          guifg=#a02090

" Specials
hi Special        guifg=#6a5acd
hi SpecialChar    guifg=#6a5acd
hi Delimiter      guifg=#505050
hi Underlined     guifg=#406090 gui=underline

hi DiffAdd        guifg=#ffffff guibg=#5f875f
hi DiffChange     guifg=#ffffff guibg=#5f87af
hi DiffDelete     guifg=#ffffff guibg=#af5faf
hi DiffText       guifg=#000000 guibg=#c6c6c6

hi Error          guifg=#ffffff guibg=#cc3333 
hi ErrorMsg       guifg=#ffffff guibg=#cc3333 
hi WarningMsg     guifg=#a02090 

hi Todo           guifg=#202020 guibg=#f0e68c 

hi Directory      guifg=#af5faf 
hi Title          guifg=#a02090 
hi NonText        guifg=#b8a090
hi EndOfBuffer    guifg=#d8b89a
hi SpecialKey     guifg=#b8a090

hi SpellBad       guisp=#cc3333 gui=undercurl
hi SpellCap       guisp=#007c7c gui=undercurl
hi SpellRare      guisp=#6a5acd gui=undercurl
hi SpellLocal     guisp=#a02090 gui=undercurl

let g:terminal_ansi_colors = [
      \ '#000000',
      \ '#a52a2a',
      \ '#2e8b57',
      \ '#b8860b',
      \ '#406090',
      \ '#a02090',
      \ '#008b8b',
      \ '#737373',
      \ '#5f5f5f',
      \ '#cd0000',
      \ '#5f875f',
      \ '#ffaf87',
      \ '#6a5acd',
      \ '#ff00ff',
      \ '#00aaaa',
      \ '#ffffff'
      \ ]

hi! link @comment Comment
hi! link @string String
hi! link @keyword Keyword
hi! link @function Function
hi! link @type Type
hi! link @variable Identifier
hi! link @constant Constant
hi! link @punctuation.delimiter Delimiter
hi! link @punctuation.bracket Delimiter

hi DiagnosticError guifg=#cc3333
hi DiagnosticWarn  guifg=#b8860b
hi DiagnosticInfo  guifg=#406090
hi DiagnosticHint  guifg=#2e8b57
