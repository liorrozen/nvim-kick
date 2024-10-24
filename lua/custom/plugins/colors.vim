set background=dark
hi clear

let g:colors_name = "colors"

hi Added gui=NONE term=NONE cterm=NONE guifg=#b3f6c0 guibg=NONE ctermfg=157 ctermbg=NONE
hi link Boolean Constant
hi Changed gui=NONE term=NONE cterm=NONE guifg=#8cf8f7 guibg=NONE ctermfg=123 ctermbg=NONE
hi link Character Constant
hi ColorColumn gui=NONE term=reverse,inverse cterm=NONE guifg=NONE guibg=#4f5258 ctermfg=NONE ctermbg=239
hi Comment gui=NONE term=NONE cterm=NONE guifg=#87ceeb guibg=NONE ctermfg=116 ctermbg=NONE
hi Conceal gui=NONE term=NONE cterm=NONE guifg=#4f5258 guibg=NONE ctermfg=239 ctermbg=NONE
hi link Conditional Statement
hi Constant gui=NONE term=NONE cterm=NONE guifg=#ffa0a0 guibg=NONE ctermfg=217 ctermbg=NONE
hi CurSearch gui=NONE term=NONE cterm=NONE guifg=#07080d guibg=#fce094 ctermfg=232 ctermbg=222
hi Cursor gui=NONE term=NONE cterm=NONE guifg=#708090 guibg=#f0e68c ctermfg=8 ctermbg=222
hi CursorColumn gui=NONE term=NONE cterm=NONE guifg=NONE guibg=#2c2e33 ctermfg=NONE ctermbg=236
hi link CursorIM Cursor
hi CursorLine gui=NONE term=NONE cterm=NONE guifg=NONE guibg=#2c2e33 ctermfg=NONE ctermbg=236
hi link CursorLineFold FoldColumn
hi CursorLineNr gui=bold term=bold cterm=bold guifg=NONE guibg=NONE ctermfg=NONE ctermbg=NONE
hi link CursorLineSign SignColumn
hi link Debug Special
hi link Define PreProc
hi Delimiter gui=NONE term=NONE cterm=NONE guifg=#e0e2ea guibg=NONE ctermfg=254 ctermbg=NONE
hi DiffAdd gui=NONE term=bold cterm=NONE guifg=#000000 guibg=#008000 ctermfg=0 ctermbg=2
hi DiffChange gui=NONE term=bold cterm=NONE guifg=#333333 guibg=#ff0000 ctermfg=236 ctermbg=9
hi DiffDelete gui=NONE term=bold cterm=NONE guifg=#000000 guibg=#ff0000 ctermfg=0 ctermbg=9
hi DiffText gui=NONE term=bold cterm=NONE guifg=#333333 guibg=#ff0000 ctermfg=236 ctermbg=9
hi Directory gui=NONE term=NONE cterm=NONE guifg=#8cf8f7 guibg=NONE ctermfg=123 ctermbg=NONE
hi link EndOfBuffer NonText
hi Error gui=NONE term=bold cterm=NONE guifg=#eef1f8 guibg=#590008 ctermfg=255 ctermbg=52
hi ErrorMsg gui=NONE term=bold cterm=NONE guifg=#ffc0b9 guibg=NONE ctermfg=217 ctermbg=NONE
hi link Exception Statement
hi link Float Constant
hi FoldColumn gui=NONE term=NONE cterm=NONE guifg=#d2b48c guibg=#4d4d4d ctermfg=180 ctermbg=239
hi Folded gui=NONE term=NONE cterm=NONE guifg=#ffd700 guibg=#4d4d4d ctermfg=220 ctermbg=239
hi Function gui=NONE term=NONE cterm=NONE guifg=#8cf8f7 guibg=NONE ctermfg=123 ctermbg=NONE
hi Identifier gui=NONE term=NONE cterm=NONE guifg=#98fb98 guibg=NONE ctermfg=120 ctermbg=NONE
hi Ignore gui=NONE term=NONE cterm=NONE guifg=#666666 guibg=NONE ctermfg=241 ctermbg=NONE
"hi IncSearch gui=NONE term=NONE cterm=NONE guifg=#708090 guibg=#f0e68c ctermfg=8 ctermbg=222
hi link Include PreProc
hi link Keyword Statement
hi link Label Statement
hi LineNr gui=NONE term=NONE cterm=NONE guifg=#4f5258 guibg=NONE ctermfg=239 ctermbg=NONE
hi link LineNrAbove LineNr
hi link LineNrBelow LineNr
hi link Macro PreProc
hi MatchParen gui=bold term=underline,bold cterm=bold guifg=NONE guibg=#4f5258 ctermfg=NONE ctermbg=239
hi ModeMsg gui=NONE term=NONE cterm=NONE guifg=#daa520 guibg=NONE ctermfg=178 ctermbg=NONE
hi MoreMsg gui=NONE term=NONE cterm=NONE guifg=#2e8b57 guibg=NONE ctermfg=29 ctermbg=NONE
hi NonText gui=NONE term=bold cterm=NONE guifg=#add8e6 guibg=#4d4d4d ctermfg=152 ctermbg=239
hi Normal gui=NONE term=NONE cterm=NONE guifg=#ffffff guibg=#333333 ctermfg=15 ctermbg=236
hi link Number Constant
hi Operator gui=NONE term=NONE cterm=NONE guifg=#e0e2ea guibg=NONE ctermfg=254 ctermbg=NONE
hi Pmenu gui=NONE term=reverse,inverse cterm=NONE guifg=NONE guibg=#2c2e33 ctermfg=NONE ctermbg=236
hi link PmenuExtra Pmenu
hi link PmenuExtraSel PmenuSel
hi link PmenuKind Pmenu
hi link PmenuKindSel PmenuSel
hi link PmenuSbar Pmenu
hi PmenuSel gui=NONE term=underline,reverse,inverse cterm=NONE guifg=#2c2e33 guibg=#e0e2ea ctermfg=236 ctermbg=254
hi PmenuThumb gui=NONE term=NONE cterm=NONE guifg=NONE guibg=#4f5258 ctermfg=NONE ctermbg=239
hi link PreCondit PreProc
hi PreProc gui=NONE term=NONE cterm=NONE guifg=#cd5c5c guibg=NONE ctermfg=167 ctermbg=NONE
hi Question gui=NONE term=NONE cterm=NONE guifg=#00ff7f guibg=NONE ctermfg=48 ctermbg=NONE
hi QuickFixLine gui=NONE term=NONE cterm=NONE guifg=#8cf8f7 guibg=NONE ctermfg=123 ctermbg=NONE
hi Removed gui=NONE term=NONE cterm=NONE guifg=#ffc0b9 guibg=NONE ctermfg=217 ctermbg=NONE
hi link Repeat Statement
hi Search gui=NONE term=NONE cterm=NONE guifg=#f5deb3 guibg=#cd853f ctermfg=223 ctermbg=173
hi SignColumn gui=NONE term=NONE cterm=NONE guifg=#4f5258 guibg=NONE ctermfg=239 ctermbg=NONE
hi Special gui=NONE term=NONE cterm=NONE guifg=#ffdead guibg=NONE ctermfg=223 ctermbg=NONE
hi link SpecialChar Special
hi link SpecialComment Special
hi SpecialKey gui=NONE term=NONE cterm=NONE guifg=#9acd32 guibg=NONE ctermfg=113 ctermbg=NONE
hi SpellBad gui=NONE term=undercurl cterm=NONE guifg=NONE guibg=NONE ctermfg=NONE ctermbg=NONE
hi SpellCap gui=undercurl term=undercurl cterm=undercurl guifg=NONE guibg=NONE ctermfg=NONE ctermbg=NONE guisp=#fce094
hi SpellLocal gui=undercurl term=undercurl cterm=undercurl guifg=NONE guibg=NONE ctermfg=NONE ctermbg=NONE guisp=#b3f6c0
hi SpellRare gui=undercurl term=undercurl cterm=undercurl guifg=NONE guibg=NONE ctermfg=NONE ctermbg=NONE guisp=#8cf8f7
hi Statement gui=bold term=bold cterm=bold guifg=#f0e68c guibg=NONE ctermfg=222 ctermbg=NONE
hi StatusLine gui=NONE term=reverse,inverse,bold cterm=NONE guifg=#000000 guibg=#c2bfa5 ctermfg=0 ctermbg=7
hi StatusLineNC gui=NONE term=reverse,inverse cterm=NONE guifg=#7f7f7f guibg=#c2bfa5 ctermfg=8 ctermbg=7
hi link StorageClass Type
hi String gui=NONE term=NONE cterm=NONE guifg=#b3f6c0 guibg=NONE ctermfg=157 ctermbg=NONE
hi link Structure Type
hi link TabLine StatusLineNC
hi link TabLineFill StatusLineNC
hi TabLineSel gui=bold term=bold cterm=bold guifg=NONE guibg=NONE ctermfg=NONE ctermbg=NONE
hi link Tag Special
hi Title gui=bold term=bold cterm=bold guifg=#cd5c5c guibg=NONE ctermfg=167 ctermbg=NONE
hi Todo gui=bold term=bold cterm=bold guifg=#ff4500 guibg=#eeee00 ctermfg=202 ctermbg=11
hi Type gui=NONE term=NONE cterm=NONE guifg=#bdb76b guibg=NONE ctermfg=143 ctermbg=NONE
hi link Typedef Type
hi Underlined gui=underline term=underline cterm=underline guifg=NONE guibg=NONE ctermfg=NONE ctermbg=NONE
hi VertSplit gui=NONE term=reverse,inverse cterm=NONE guifg=#7f7f7f guibg=#c2bfa5 ctermfg=8 ctermbg=7
hi Visual gui=NONE term=reverse cterm=reverse
hi VisualNOS gui=NONE term=underline,bold cterm=NONE guifg=NONE guibg=NONE ctermfg=NONE ctermbg=NONE
hi WarningMsg gui=NONE term=NONE cterm=NONE guifg=#fa8072 guibg=NONE ctermfg=209 ctermbg=NONE
hi clear WildMenu
hi lCursor gui=NONE term=NONE cterm=NONE guifg=#333333 guibg=#ffffff ctermfg=236 ctermbg=15
