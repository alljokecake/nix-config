set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif

" #7c6f64

let g:colors_name="dorf"

hi Normal	        guifg=#e3dede guibg=#242424
hi NonText	        guifg=grey30

hi SignColumn       guibg=#242424

hi LineNr           guifg=grey50
hi CursorLineNr     guifg=grey70  gui=bold
hi CursorLine       guibg=#303030


hi StatusLine	    guibg=gray45 guifg=white gui=none
hi StatusLineNC	    guibg=gray20 guifg=white gui=none

hi WinSeparator	    guibg=none guifg=grey20 gui=none
hi VertSplit	    guibg=none guifg=#c2bfa5 gui=bold
hi IncSearch	    guifg=black guibg=khaki
hi Search	        guibg=grey40 guifg=white
hi ColorColumn      guibg=grey16
hi ModeMsg	        guifg=goldenrod
hi MoreMsg	        guifg=SeaGreen
hi SpecialKey	    guifg=yellowgreen
hi Title	        guifg=#7ca1c0 gui=NONE
hi Visual	        gui=none guifg=white guibg=#4c63ad
hi MatchParen       guibg=none guifg=#ff00af gui=bold
hi Comment	        guifg=grey50
hi Constant	        guifg=#A89B90  gui=NONE
hi String	        guifg=#A89B90 gui=NONE
hi Identifier	    guifg=#f0f0bb gui=NONE
hi Statement	    guifg=indianred gui=NONE
hi PreProc	        guifg=navajowhite gui=NONE
hi Type		        guifg=#8daf67 gui=NONE
hi Special	        guifg=#cdabcf gui=NONE
hi Todo             guifg=#FFC900 gui=NONE
hi Directory        guifg=#8daf67

hi Function         guifg=#81A2C7
hi QuickFixLine guifg=#f2a766 guibg=#3a2a1f gui=BOLD

hi Pmenu            guifg=#FFFFFF guibg=gray30
hi PmenuSel         guifg=#4c63ad guibg=white
hi PmenuThumb       guibg=#cccccc
hi PmenuSbar        guibg=grey20

hi NormalFloat    guibg=#222222
hi FloatBorder    guibg=#242424 guifg=#cccccc

" Basic
hi DiagnosticError        guifg=#e05f5f
hi DiagnosticWarn         guifg=#e6b450
hi DiagnosticInfo         guifg=#d0b57d
hi DiagnosticHint         guifg=#7ca1c0
hi DiagnosticOk           guifg=#ddddcc

" Default
hi DiagnosticDefaultError guifg=#e05f5f
hi DiagnosticDefaultWarn  guifg=#e6b450
hi DiagnosticDefaultInfo  guifg=#d0b57d
hi DiagnosticDefaultHint  guifg=#7ca1c0
hi DiagnosticDefaultOk    guifg=#ddddcc

" Virtual Text
hi DiagnosticVirtualTextError guifg=#e05f5f guibg=#4a2a2a
" hi DiagnosticVirtualTextWarn guifg=#e6b450 guibg=#4a3e2a
hi DiagnosticVirtualTextWarn guifg=#e6a850 guibg=#4a3e2a
hi DiagnosticVirtualTextInfo guifg=#d0b57d guibg=#403628
hi DiagnosticVirtualTextHint guifg=#7ca1c0 guibg=#2a3540
hi DiagnosticVirtualTextOk guifg=#ddddcc guibg=#3a3a36

" Floating
hi DiagnosticFloatingError guifg=#e05f5f
hi DiagnosticFloatingWarn  guifg=#e6b450
hi DiagnosticFloatingInfo  guifg=#d0b57d
hi DiagnosticFloatingHint  guifg=#7ca1c0
hi DiagnosticFloatingOk    guifg=#ddddcc

" Sign column
hi DiagnosticSignError guifg=#e05f5f guibg=grey20
hi DiagnosticSignWarn  guifg=#e6b450 guibg=NONE
hi DiagnosticSignInfo  guifg=#d0b57d guibg=grey20
hi DiagnosticSignHint  guifg=#7ca1c0 guibg=grey20
hi DiagnosticSignOk    guifg=#ddddcc guibg=grey20

" Underlines
hi DiagnosticUnderlineError gui=undercurl guisp=#e05f5f
hi DiagnosticUnderlineWarn  gui=undercurl guisp=#e6b450
hi DiagnosticUnderlineInfo  gui=undercurl guisp=#d0b57d
hi DiagnosticUnderlineHint  gui=undercurl guisp=#7ca1c0
hi DiagnosticUnderlineOk    gui=undercurl guisp=#ddddcc

hi link @comment Comment
hi link @comment.documentation Comment 
hi link @comment.todo Todo 
hi link @comment.error Todo 
hi link @comment.warning Todo 
hi link @comment.note Todo 
hi link @lsp.type.macro Directory

" Telescope
hi link TelescopeNormal LineNr
hi link TelescopePromptBorder LineNr
hi link TelescopePromptTitle TelescopePromptBorder

hi link TelescopePreviewBorder TelescopePromptBorder
hi link TelescopePreviewTitle TelescopePromptBorder
hi link TelescopePromptPrefix Directory

hi MasonBackdrop guibg=#242424
