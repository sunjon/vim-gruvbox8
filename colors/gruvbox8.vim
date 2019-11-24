" Name:         Gruvbox 8
" Description:  Retro groove color scheme originally designed by morhetz
" Author:       morhetz <morhetz@gmail.com>
" Maintainer:   Sunjon <sunjon@gmail.com
" Website:      https://github.com/sunjon/vim-gruvbox8/
" License:      Vim License (see `:help license`)
" Last Updated: Thu Aug 15 10:48:32 2019

hi clear
if exists('syntax_on')
  syntax reset
endif

let g:colors_name = 'gruvbox8'

let s:t_Co = exists('&t_Co') && !empty(&t_Co) && &t_Co > 1 ? &t_Co : 2
let s:italics = (((&t_ZH != '' && &t_ZH != '[7m') || has('gui_running')) && !has('iOS')) || has('nvim')

let s:italics = s:italics && get(g:, 'gruvbox_italics', 1)
hi! link CursorColumn CursorLine
hi! link QuickFixLine Search
hi! link StatusLineTerm StatusLine
hi! link StatusLineTermNC StatusLineNC
hi! link VisualNOS Visual
hi! link Tag Special
hi! link lCursor Cursor
hi! link iCursor Cursor
hi! link vCursor Cursor

if (has('termguicolors') && &termguicolors) || has('gui_running')
  if &background ==# 'dark'
    let g:terminal_ansi_colors = ['#202020', '#cc241d', '#b8bb26', '#d79921',
          \ '#458588', '#b16286', '#689d6a', '#a89984', '#7c6f64', '#fb4934',
          \ '#cbc75d', '#fabd2f', '#83a597', '#d3869b', '#8ec07c', '#ebdbb2']
    if has('nvim')
      let g:terminal_color_0 = '#202020'
      let g:terminal_color_1 = '#cc241d'
      let g:terminal_color_2 = '#b8bb26'
      let g:terminal_color_3 = '#d79921'
      let g:terminal_color_4 = '#458588'
      let g:terminal_color_5 = '#b16286'
      let g:terminal_color_6 = '#689d6a'
      let g:terminal_color_7 = '#bdae93'
      let g:terminal_color_8 = '#7c6f64'
      let g:terminal_color_9 = '#fb4934'
      let g:terminal_color_10 = '#cbc75d'
      let g:terminal_color_11 = '#fabd2f'
      let g:terminal_color_12 = '#83a597'
      let g:terminal_color_13 = '#d3869b'
      let g:terminal_color_14 = '#8ec07c'
      let g:terminal_color_15 = '#ebdbb2'
    endif
    hi Normal guifg=#ebdbb2 guibg=#202020 guisp=NONE gui=NONE cterm=NONE
    hi CursorLineNr guifg=#d9a20e guibg=#282c33 guisp=NONE gui=NONE cterm=NONE
    hi FoldColumn guifg=#7c6f64 guibg=#202020 guisp=NONE gui=NONE cterm=NONE
    hi SignColumn guifg=#ebdbb2 guibg=#202020 guisp=NONE gui=NONE cterm=NONE
    hi VertSplit guifg=#303030 guibg=#202020 guisp=NONE gui=NONE cterm=NONE
    hi ColorColumn guifg=NONE guibg=#262626 guisp=NONE gui=NONE cterm=NONE
    hi Comment guifg=#7c6f64 guibg=NONE guisp=NONE gui=italic cterm=italic
    hi CursorLine guifg=NONE guibg=#282c33 guisp=NONE gui=NONE cterm=NONE
    hi Error guifg=#fb4934 guibg=#202020 guisp=NONE gui=bold,reverse cterm=bold,reverse
    hi ErrorMsg guifg=#fb4934 guibg=#202020 guisp=NONE gui=bold cterm=bold
    hi Folded guifg=#7c6f64 guibg=#353535 guisp=NONE gui=italic cterm=italic
    hi LineNr guifg=#7c6f64 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    hi MatchParen guifg=NONE guibg=#665c54 guisp=NONE gui=bold cterm=bold
    hi NonText guifg=#2e2e2e guibg=NONE guisp=NONE gui=NONE cterm=NONE
    hi Pmenu guifg=#ebdbb2 guibg=#2e2e2e guisp=NONE gui=NONE cterm=NONE
    hi PmenuSbar guifg=NONE guibg=#2e2e2e guisp=NONE gui=NONE cterm=NONE
    hi PmenuSel guifg=#202020 guibg=#d9a20e guisp=NONE gui=bold cterm=bold
    hi PmenuThumb guifg=NONE guibg=#7c6f64 guisp=NONE gui=NONE cterm=NONE
    hi SpecialKey guifg=#7c6f64 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    hi StatusLine guifg=#7c6f64 guibg=#2b2b2b guisp=NONE gui=reverse cterm=reverse
    hi StatusLineNC guifg=#202020 guibg=#a89984 guisp=NONE gui=reverse cterm=reverse
    hi TabLine guifg=#7c6f64 guibg=#202020 guisp=NONE gui=NONE cterm=NONE
    hi TabLineFill guifg=#7c6f64 guibg=#202020 guisp=NONE gui=NONE cterm=NONE
    hi TabLineSel guifg=#cbc75d guibg=#3c3836 guisp=NONE gui=NONE cterm=NONE
    hi ToolbarButton guifg=#fbf1c7 guibg=#665c54 guisp=NONE gui=bold cterm=bold
    hi ToolbarLine guifg=NONE guibg=#665c54 guisp=NONE gui=NONE cterm=NONE
    hi Visual guifg=#202020 guibg=#fa852b guisp=NONE gui=NONE cterm=NONE
    hi WildMenu guifg=#ebdbb2 guibg=#2b2b2b guisp=NONE gui=bold cterm=bold
    hi Conceal guifg=#83a597 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    hi Cursor guifg=NONE guibg=bdae93 guisp=NONE gui=reverse ctermfg=NONE ctermbg=NONE cterm=reverse
    hi DiffAdd guifg=#cbc75d guibg=#202020 guisp=NONE gui=reverse cterm=reverse
    hi DiffChange guifg=#8ec07c guibg=#202020 guisp=NONE gui=reverse cterm=reverse
    hi DiffDelete guifg=#fb4934 guibg=#202020 guisp=NONE gui=reverse cterm=reverse
    hi DiffText guifg=#fabd2f guibg=#202020 guisp=NONE gui=reverse cterm=reverse
    hi Directory guifg=#83a597 guibg=NONE guisp=NONE gui=bold cterm=bold
    hi EndOfBuffer guifg=#202020 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    hi IncSearch guifg=#d9a20e guibg=#202020 guisp=NONE gui=reverse cterm=reverse
    hi ModeMsg guifg=#fabd2f guibg=NONE guisp=NONE gui=bold cterm=bold
    hi MoreMsg guifg=#fabd2f guibg=NONE guisp=NONE gui=bold cterm=bold
    hi Question guifg=#fa852b guibg=NONE guisp=NONE gui=bold cterm=bold
    hi Search guifg=#689d6a guibg=#202020 guisp=NONE gui=reverse cterm=reverse
    hi SpellBad guifg=#fb4934 guibg=NONE guisp=#fb4934 gui=italic,undercurl cterm=italic,undercurl
    hi SpellCap guifg=#83a597 guibg=NONE guisp=#83a597 gui=italic,undercurl cterm=italic,undercurl
    hi SpellLocal guifg=#8ec07c guibg=NONE guisp=#8ec07c gui=italic,undercurl cterm=italic,undercurl
    hi SpellRare guifg=#d3869b guibg=NONE guisp=#d3869b gui=italic,undercurl cterm=italic,undercurl
    hi Title guifg=#cbc75d guibg=NONE guisp=NONE gui=bold cterm=bold
    hi WarningMsg guifg=#fb4934 guibg=NONE guisp=NONE gui=bold cterm=bold
    hi Boolean guifg=#d3869b guibg=NONE guisp=NONE gui=NONE cterm=NONE
    hi Character guifg=#d3869b guibg=NONE guisp=NONE gui=NONE cterm=NONE
    hi Conditional guifg=#fb4934 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    hi Constant guifg=#d3869b guibg=NONE guisp=NONE gui=NONE cterm=NONE
    hi Define guifg=#8ec07c guibg=NONE guisp=NONE gui=NONE cterm=NONE
    hi Debug guifg=#fb4934 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    hi Delimiter guifg=#fa852b guibg=NONE guisp=NONE gui=NONE cterm=NONE
    hi Error guifg=#fb4934 guibg=#202020 guisp=NONE gui=bold,reverse cterm=bold,reverse
    hi Exception guifg=#fb4934 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    hi Float guifg=#d3869b guibg=NONE guisp=NONE gui=NONE cterm=NONE
    hi Function guifg=#cbc75d guibg=NONE guisp=NONE gui=bold cterm=bold
    hi Identifier guifg=#83a597 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    hi Ignore guifg=fg guibg=NONE guisp=NONE gui=NONE cterm=NONE
    hi Include guifg=#8ec07c guibg=NONE guisp=NONE gui=NONE cterm=NONE
    hi Keyword guifg=#fb4934 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    hi Label guifg=#fb4934 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    hi Macro guifg=#8ec07c guibg=NONE guisp=NONE gui=NONE cterm=NONE
    hi Number guifg=#d3869b guibg=NONE guisp=NONE gui=NONE cterm=NONE
    hi Operator guifg=#8ec07c guibg=NONE guisp=NONE gui=NONE cterm=NONE
    hi PreCondit guifg=#8ec07c guibg=NONE guisp=NONE gui=NONE cterm=NONE
    hi PreProc guifg=#8ec07c guibg=NONE guisp=NONE gui=NONE cterm=NONE
    hi Repeat guifg=#fb4934 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    hi SpecialChar guifg=#fb4934 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    hi SpecialComment guifg=#fb4934 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    hi Statement guifg=#fb4934 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    hi StorageClass guifg=#fa852b guibg=NONE guisp=NONE gui=NONE cterm=NONE
    hi Special guifg=#fa852b guibg=NONE guisp=NONE gui=italic cterm=italic
    hi String guifg=#cbc75d guibg=NONE guisp=NONE gui=italic cterm=italic
    hi Structure guifg=#8ec07c guibg=NONE guisp=NONE gui=NONE cterm=NONE
    hi Todo guifg=fg guibg=#202020 guisp=NONE gui=bold,italic cterm=bold,italic
    hi Type guifg=#fabd2f guibg=NONE guisp=NONE gui=NONE cterm=NONE
    hi Typedef guifg=#fabd2f guibg=NONE guisp=NONE gui=NONE cterm=NONE
    hi Underlined guifg=#83a597 guibg=NONE guisp=NONE gui=underline cterm=underline
    hi CursorIM guifg=NONE guibg=NONE guisp=NONE gui=reverse ctermfg=NONE ctermbg=NONE cterm=reverse
    if !s:italics
      hi Comment gui=NONE cterm=NONE
      hi Folded gui=NONE cterm=NONE
      hi SpellBad gui=undercurl cterm=undercurl
      hi SpellCap gui=undercurl cterm=undercurl
      hi SpellLocal gui=undercurl cterm=undercurl
      hi SpellRare gui=undercurl cterm=undercurl
      hi Special gui=NONE cterm=NONE
      hi String gui=NONE cterm=NONE
      hi Todo gui=bold cterm=bold
    endif
    if !get(g:, 'gruvbox_italicize_strings', 1)
      hi Special gui=NONE cterm=NONE
      hi String gui=NONE cterm=NONE
    endif
    hi NormalMode guifg=#a89984 guibg=#202020 guisp=NONE gui=reverse cterm=reverse
    hi InsertMode guifg=#83a597 guibg=#202020 guisp=NONE gui=reverse cterm=reverse
    hi ReplaceMode guifg=#8ec07c guibg=#202020 guisp=NONE gui=reverse cterm=reverse
    hi VisualMode guifg=#fa852b guibg=#202020 guisp=NONE gui=reverse cterm=reverse
    hi CommandMode guifg=#d3869b guibg=#202020 guisp=NONE gui=reverse cterm=reverse
    hi Warnings guifg=#fa852b guibg=#202020 guisp=NONE gui=reverse cterm=reverse
    if has('nvim')
      hi! link TermCursor Cursor
      hi TermCursorNC guifg=#202020 guibg=#bdae93 guisp=NONE gui=NONE cterm=NONE
    endif
    if !(get(g:, 'gruvbox_plugin_hi_groups', 0) || get(g:, 'gruvbox_filetype_hi_groups', 0))
      finish
    endif
    if get(g:, "gruvbox_plugin_hi_groups", 0)
      hi ALEError guifg=NONE guibg=NONE guisp=#fb4934 gui=undercurl ctermfg=NONE ctermbg=NONE cterm=undercurl
      hi ALEWarning guifg=NONE guibg=NONE guisp=#fb4934 gui=undercurl ctermfg=NONE ctermbg=NONE cterm=undercurl
      hi ALEInfo guifg=NONE guibg=NONE guisp=#83a597 gui=undercurl ctermfg=NONE ctermbg=NONE cterm=undercurl
      hi ALEErrorSign guifg=#fb4934 guibg=#202020 guisp=NONE gui=NONE cterm=NONE
      hi ALEWarningSign guifg=#fabd2f guibg=#202020 guisp=NONE gui=NONE cterm=NONE
      hi ALEInfoSign guifg=#83a597 guibg=#202020 guisp=NONE gui=NONE cterm=NONE
      " hi BufTabLineCurrent guifg=#202020 guibg=#a89984 guisp=NONE gui=NONE cterm=NONE
      " hi BufTabLineActive guifg=#a89984 guibg=#2e2e2e guisp=NONE gui=NONE cterm=NONE
      " hi BufTabLineHidden guifg=#7c6f64 guibg=#3c3836 guisp=NONE gui=NONE cterm=NONE
      " hi BufTabLineFill guifg=#202020 guibg=#202020 guisp=NONE gui=NONE cterm=NONE
      " hi CtrlPMatch guifg=#fabd2f guibg=NONE guisp=NONE gui=NONE cterm=NONE
      " hi CtrlPNoEntries guifg=#fb4934 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      " hi CtrlPPrtBase guifg=#2e2e2e guibg=NONE guisp=NONE gui=NONE cterm=NONE
      " hi CtrlPPrtCursor guifg=#83a597 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      " hi CtrlPLinePre guifg=#2e2e2e guibg=NONE guisp=NONE gui=NONE cterm=NONE
      " hi CtrlPMode1 guifg=#83a597 guibg=#2e2e2e guisp=NONE gui=bold cterm=bold
      " hi CtrlPMode2 guifg=#202020 guibg=#83a597 guisp=NONE gui=bold cterm=bold
      " hi CtrlPStats guifg=#a89984 guibg=#2e2e2e guisp=NONE gui=bold cterm=bold
      hi DirvishPathTail guifg=#83a597 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi DirvishArg guifg=#fabd2f guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi gitcommitSelectedFile guifg=#cbc75d guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi gitcommitDiscardedFile guifg=#fb4934 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      " hi GitGutterAdd guifg=#cbc75d guibg=#3c3836 guisp=NONE gui=NONE cterm=NONE
      " hi GitGutterChange guifg=#8ec07c guibg=#3c3836 guisp=NONE gui=NONE cterm=NONE
      " hi GitGutterDelete guifg=#fb4934 guibg=#3c3836 guisp=NONE gui=NONE cterm=NONE
      " hi GitGutterChangeDelete guifg=#8ec07c guibg=#3c3836 guisp=NONE gui=NONE cterm=NONE
      hi IndentGuidesOdd guifg=#202020 guibg=#2e2e2e guisp=NONE gui=NONE cterm=NONE
      hi IndentGuidesEven guifg=#202020 guibg=#3c3836 guisp=NONE gui=NONE cterm=NONE
      if !exists('g:indentLine_color_gui')
        let g:indentLine_color_gui = '#2e2e2e'
      endif
      " hi NERDTreeDir guifg=#8ec07c guibg=NONE guisp=NONE gui=NONE cterm=NONE
      " hi NERDTreeDirSlash guifg=#8ec07c guibg=NONE guisp=NONE gui=NONE cterm=NONE
      " hi NERDTreeOpenable guifg=#fa852b guibg=NONE guisp=NONE gui=NONE cterm=NONE
      " hi NERDTreeClosable guifg=#fa852b guibg=NONE guisp=NONE gui=NONE cterm=NONE
      " hi NERDTreeFile guifg=#ebdbb2 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      " hi NERDTreeExecFile guifg=#fabd2f guibg=NONE guisp=NONE gui=NONE cterm=NONE
      " hi NERDTreeUp guifg=#7c6f64 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      " hi NERDTreeCWD guifg=#cbc75d guibg=NONE guisp=NONE gui=NONE cterm=NONE
      " hi NERDTreeHelp guifg=#ebdbb2 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      " hi NERDTreeToggleOn guifg=#cbc75d guibg=NONE guisp=NONE gui=NONE cterm=NONE
      " hi NERDTreeToggleOff guifg=#fb4934 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      " hi netrwDir guifg=#8ec07c guibg=NONE guisp=NONE gui=NONE cterm=NONE
      " hi netrwClassify guifg=#8ec07c guibg=NONE guisp=NONE gui=NONE cterm=NONE
      " hi netrwLink guifg=#7c6f64 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      " hi netrwSymLink guifg=#ebdbb2 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      " hi netrwExe guifg=#fabd2f guibg=NONE guisp=NONE gui=NONE cterm=NONE
      " hi netrwComment guifg=#7c6f64 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      " hi netrwList guifg=#83a597 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      " hi netrwHelpCmd guifg=#8ec07c guibg=NONE guisp=NONE gui=NONE cterm=NONE
      " hi netrwCmdSep guifg=#bdae93 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      " hi netrwVersion guifg=#cbc75d guibg=NONE guisp=NONE gui=NONE cterm=NONE
      " Rainbow Parentheses
      " if !exists('g:rbpt_colorpairs')
      "   let g:rbpt_colorpairs = [['blue', '#458588'], ['magenta', '#b16286'],
      "         \ ['red', '#cc241d'], ['166', '#d65d0e']]
      " endif

      " let g:rainbow_guifgs = [ '#d65d0e', '#cc241d', '#b16286', '#458588' ]
      " let g:rainbow_ctermfgs = [ '166', 'red', 'magenta', 'blue' ]

      " if !exists('g:rainbow_conf')
      "   let g:rainbow_conf = {}
      " endif
      " if !has_key(g:rainbow_conf, 'guifgs')
      "   let g:rainbow_conf['guifgs'] = g:rainbow_guifgs
      " endif
      " if !has_key(g:rainbow_conf, 'ctermfgs')
      "   let g:rainbow_conf['ctermfgs'] = g:rainbow_ctermfgs
      " endif

      " hi ShowMarksHLl guifg=#83a597 guibg=#3c3836 guisp=NONE gui=NONE cterm=NONE
      " hi ShowMarksHLu guifg=#83a597 guibg=#3c3836 guisp=NONE gui=NONE cterm=NONE
      " hi ShowMarksHLo guifg=#83a597 guibg=#3c3836 guisp=NONE gui=NONE cterm=NONE
      " hi ShowMarksHLm guifg=#83a597 guibg=#3c3836 guisp=NONE gui=NONE cterm=NONE
      " hi SignifySignAdd guifg=#cbc75d guibg=NONE guisp=NONE gui=NONE cterm=NONE
      " hi SignifySignChange guifg=#8ec07c guibg=NONE guisp=NONE gui=NONE cterm=NONE
      " hi SignifySignDelete guifg=#fb4934 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi SignatureMarkText guifg=#83a597 guibg=#202020 guisp=NONE gui=NONE cterm=NONE
      hi SignatureMarkerText guifg=#d3869b guibg=#202020 guisp=NONE gui=NONE cterm=NONE
      hi StartifyBracket guifg=#bdae93 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi StartifyFile guifg=#ebdbb2 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi StartifyNumber guifg=#83a597 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi StartifyPath guifg=#7c6f64 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi StartifySlash guifg=#7c6f64 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi StartifySection guifg=#fabd2f guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi StartifySpecial guifg=#2e2e2e guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi StartifyHeader guifg=#fb4934 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi StartifyFooter guifg=#2e2e2e guibg=NONE guisp=NONE gui=NONE cterm=NONE
    endif
    if get(g:, "gruvbox_filetype_hi_groups", 0)
      hi diffAdded guifg=#cbc75d guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi diffRemoved guifg=#fb4934 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi diffChanged guifg=#8ec07c guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi diffFile guifg=#fa852b guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi diffNewFile guifg=#fabd2f guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi diffLine guifg=#83a597 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi htmlTag guifg=#83a597 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi htmlEndTag guifg=#83a597 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi htmlTagName guifg=#8ec07c guibg=NONE guisp=NONE gui=bold cterm=bold
      hi htmlArg guifg=#8ec07c guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi htmlScriptTag guifg=#d3869b guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi htmlTagN guifg=#ebdbb2 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi htmlSpecialTagName guifg=#8ec07c guibg=NONE guisp=NONE gui=bold cterm=bold
      hi htmlLink guifg=#a89984 guibg=NONE guisp=NONE gui=underline cterm=underline
      hi htmlSpecialChar guifg=#fa852b guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi htmlBold guifg=fg guibg=#202020 guisp=NONE gui=bold cterm=bold
      hi htmlBoldUnderline guifg=fg guibg=#202020 guisp=NONE gui=bold,underline cterm=bold,underline
      hi htmlBoldItalic guifg=fg guibg=#202020 guisp=NONE gui=bold,italic cterm=bold,italic
      hi htmlBoldUnderlineItalic guifg=fg guibg=#202020 guisp=NONE gui=bold,italic,underline cterm=bold,italic,underline
      hi htmlUnderline guifg=fg guibg=#202020 guisp=NONE gui=underline cterm=underline
      hi htmlUnderlineItalic guifg=fg guibg=#202020 guisp=NONE gui=italic,underline cterm=italic,underline
      hi htmlItalic guifg=fg guibg=#202020 guisp=NONE gui=italic cterm=italic
      hi xmlTag guifg=#83a597 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi xmlEndTag guifg=#83a597 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi xmlTagName guifg=#83a597 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi xmlEqual guifg=#83a597 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi docbkKeyword guifg=#8ec07c guibg=NONE guisp=NONE gui=bold cterm=bold
      hi xmlDocTypeDecl guifg=#7c6f64 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi xmlDocTypeKeyword guifg=#d3869b guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi xmlCdataStart guifg=#7c6f64 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi xmlCdataCdata guifg=#d3869b guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi dtdFunction guifg=#7c6f64 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi dtdTagName guifg=#d3869b guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi xmlAttrib guifg=#8ec07c guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi xmlProcessingDelim guifg=#7c6f64 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi dtdParamEntityPunct guifg=#7c6f64 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi dtdParamEntityDPunct guifg=#7c6f64 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi xmlAttribPunct guifg=#7c6f64 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi xmlEntity guifg=#fa852b guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi xmlEntityPunct guifg=#fa852b guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi vimCommentTitle guifg=#a89984 guibg=NONE guisp=NONE gui=bold cterm=bold
      hi vimNotation guifg=#fa852b guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi vimBracket guifg=#fa852b guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi vimMapModKey guifg=#fa852b guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi vimFuncSID guifg=#bdae93 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi vimSetSep guifg=#bdae93 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi vimSep guifg=#bdae93 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi vimContinue guifg=#bdae93 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi clojureKeyword guifg=#83a597 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi clojureCond guifg=#fa852b guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi clojureSpecial guifg=#fa852b guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi clojureDefine guifg=#fa852b guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi clojureFunc guifg=#fabd2f guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi clojureRepeat guifg=#fabd2f guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi clojureCharacter guifg=#8ec07c guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi clojureStringEscape guifg=#8ec07c guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi clojureException guifg=#fb4934 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi clojureRegexp guifg=#8ec07c guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi clojureRegexpEscape guifg=#8ec07c guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi clojureRegexpCharClass guifg=#bdae93 guibg=NONE guisp=NONE gui=bold cterm=bold
      hi! link clojureRegexpMod clojureRegexpCharClass
      hi! link clojureRegexpQuantifier clojureRegexpCharClass
      hi clojureParen guifg=#bdae93 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi clojureAnonArg guifg=#fabd2f guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi clojureVariable guifg=#83a597 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi clojureMacro guifg=#fa852b guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi clojureMeta guifg=#fabd2f guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi clojureDeref guifg=#fabd2f guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi clojureQuote guifg=#fabd2f guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi clojureUnquote guifg=#fabd2f guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi cOperator guifg=#d3869b guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi cStructure guifg=#fa852b guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi pythonBuiltin guifg=#fa852b guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi pythonBuiltinObj guifg=#fa852b guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi pythonBuiltinFunc guifg=#fa852b guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi pythonFunction guifg=#8ec07c guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi pythonDecorator guifg=#fb4934 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi pythonInclude guifg=#83a597 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi pythonImport guifg=#83a597 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi pythonRun guifg=#83a597 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi pythonCoding guifg=#83a597 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi pythonOperator guifg=#fb4934 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi pythonException guifg=#fb4934 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi pythonExceptions guifg=#d3869b guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi pythonBoolean guifg=#d3869b guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi pythonDot guifg=#bdae93 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi pythonConditional guifg=#fb4934 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi pythonRepeat guifg=#fb4934 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi pythonDottedName guifg=#cbc75d guibg=NONE guisp=NONE gui=bold cterm=bold
      hi cssBraces guifg=#83a597 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi cssFunctionName guifg=#fabd2f guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi cssIdentifier guifg=#fa852b guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi cssClassName guifg=#cbc75d guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi cssColor guifg=#83a597 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi cssSelectorOp guifg=#83a597 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi cssSelectorOp2 guifg=#83a597 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi cssImportant guifg=#cbc75d guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi cssVendor guifg=#ebdbb2 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi cssTextProp guifg=#8ec07c guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi cssAnimationProp guifg=#8ec07c guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi cssUIProp guifg=#fabd2f guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi cssTransformProp guifg=#8ec07c guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi cssTransitionProp guifg=#8ec07c guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi cssPrintProp guifg=#8ec07c guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi cssPositioningProp guifg=#fabd2f guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi cssBoxProp guifg=#8ec07c guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi cssFontDescriptorProp guifg=#8ec07c guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi cssFlexibleBoxProp guifg=#8ec07c guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi cssBorderOutlineProp guifg=#8ec07c guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi cssBackgroundProp guifg=#8ec07c guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi cssMarginProp guifg=#8ec07c guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi cssListProp guifg=#8ec07c guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi cssTableProp guifg=#8ec07c guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi cssFontProp guifg=#8ec07c guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi cssPaddingProp guifg=#8ec07c guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi cssDimensionProp guifg=#8ec07c guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi cssRenderProp guifg=#8ec07c guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi cssColorProp guifg=#8ec07c guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi cssGeneratedContentProp guifg=#8ec07c guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi javaScriptBraces guifg=#ebdbb2 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi javaScriptFunction guifg=#8ec07c guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi javaScriptIdentifier guifg=#fb4934 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi javaScriptMember guifg=#83a597 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi javaScriptNumber guifg=#d3869b guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi javaScriptNull guifg=#d3869b guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi javaScriptParens guifg=#bdae93 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi javascriptImport guifg=#8ec07c guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi javascriptExport guifg=#8ec07c guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi javascriptClassKeyword guifg=#8ec07c guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi javascriptClassExtends guifg=#8ec07c guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi javascriptDefault guifg=#8ec07c guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi javascriptClassName guifg=#fabd2f guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi javascriptClassSuperName guifg=#fabd2f guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi javascriptGlobal guifg=#fabd2f guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi javascriptEndColons guifg=#ebdbb2 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi javascriptFuncArg guifg=#ebdbb2 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi javascriptGlobalMethod guifg=#ebdbb2 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi javascriptNodeGlobal guifg=#ebdbb2 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi javascriptBOMWindowProp guifg=#ebdbb2 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi javascriptArrayMethod guifg=#ebdbb2 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi javascriptArrayStaticMethod guifg=#ebdbb2 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi javascriptCacheMethod guifg=#ebdbb2 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi javascriptDateMethod guifg=#ebdbb2 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi javascriptMathStaticMethod guifg=#ebdbb2 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi javascriptURLUtilsProp guifg=#ebdbb2 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi javascriptBOMNavigatorProp guifg=#ebdbb2 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi javascriptDOMDocMethod guifg=#ebdbb2 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi javascriptDOMDocProp guifg=#ebdbb2 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi javascriptBOMLocationMethod guifg=#ebdbb2 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi javascriptBOMWindowMethod guifg=#ebdbb2 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi javascriptStringMethod guifg=#ebdbb2 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi javascriptVariable guifg=#fa852b guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi javascriptIdentifier guifg=#fa852b guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi javascriptClassSuper guifg=#fa852b guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi javascriptFuncKeyword guifg=#8ec07c guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi javascriptAsyncFunc guifg=#8ec07c guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi javascriptClassStatic guifg=#fa852b guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi javascriptOperator guifg=#fb4934 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi javascriptForOperator guifg=#fb4934 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi javascriptYield guifg=#fb4934 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi javascriptExceptions guifg=#fb4934 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi javascriptMessage guifg=#fb4934 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi javascriptTemplateSB guifg=#8ec07c guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi javascriptTemplateSubstitution guifg=#ebdbb2 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi javascriptLabel guifg=#ebdbb2 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi javascriptObjectLabel guifg=#ebdbb2 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi javascriptPropertyName guifg=#ebdbb2 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi javascriptLogicSymbols guifg=#ebdbb2 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi javascriptArrowFunc guifg=#fabd2f guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi javascriptDocParamName guifg=#a89984 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi javascriptDocTags guifg=#a89984 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi javascriptDocNotation guifg=#a89984 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi javascriptDocParamType guifg=#a89984 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi javascriptDocNamedParamType guifg=#a89984 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi javascriptBrackets guifg=#ebdbb2 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi javascriptDOMElemAttrs guifg=#ebdbb2 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi javascriptDOMEventMethod guifg=#ebdbb2 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi javascriptDOMNodeMethod guifg=#ebdbb2 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi javascriptDOMStorageMethod guifg=#ebdbb2 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi javascriptHeadersMethod guifg=#ebdbb2 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi javascriptAsyncFuncKeyword guifg=#fb4934 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi javascriptAwaitFuncKeyword guifg=#fb4934 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi jsImport guifg=#fb4934 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi jsExport guifg=#fb4934 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi jsFrom guifg=#fb4934 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi jsThis guifg=#d3869b guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi jsParen guifg=#83a597 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi jsOperator guifg=#8ec07c guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi jsSpreadOperator guifg=#cbc75d guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi jsSpreadExpression guifg=#83a597 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi jsClassKeyword guifg=#fb4934 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi jsClassProperty guifg=#cbc75d guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi jsExtendsKeyword guifg=#fb4934 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi jsExportDefault guifg=#fa852b guibg=NONE guisp=NONE gui=bold cterm=bold
      hi jsTemplateBraces guifg=#8ec07c guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi jsGlobalNodeObjects guifg=#ebdbb2 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi jsGlobalObjects guifg=#ebdbb2 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi jsFunction guifg=#cbc75d guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi jsFuncParens guifg=#d3869b guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi jsFuncBlock guifg=#83a597 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi jsParens guifg=#bdae93 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi jsNull guifg=#d3869b guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi jsUndefined guifg=#d3869b guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi jsClassDefinition guifg=#fabd2f guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi jsFunctionKey guifg=#cbc75d guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi jsBracket guifg=#fb4934 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi jsObjectColon guifg=#fb4934 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi jsObjectProp guifg=#83a597 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi jsFuncBraces guifg=#cbc75d guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi jsVariableDef guifg=#fabd2f guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi jsObjectValue guifg=#83a597 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi jsDestructuringBlock guifg=#fabd2f guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi jsParenIfElse guifg=#83a597 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi jsClassBlock guifg=#83a597 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi jsFutureKeys guifg=#fa852b guibg=NONE guisp=NONE gui=bold cterm=bold
      hi jsStorageClass guifg=#fa852b guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi jsModuleKeyword guifg=#83a597 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi jsObjectShorthandProp guifg=#83a597 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi jsxRegion guifg=#83a597 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi jsxTagName guifg=#83a597 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi jsxComponentName guifg=#fabd2f guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi jsxEscapeJsAttributes guifg=#83a597 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi jsxEscapeJsContent guifg=#83a597 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi jsxAttrib guifg=#fabd2f guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi jsxAttributeBraces guifg=#ebdbb2 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi jsxEqual guifg=#8ec07c guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi jsxString guifg=#cbc75d guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi jsxCloseTag guifg=#83a597 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi jsxEndTag guifg=#83a597 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi jsxEndString guifg=#83a597 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi jsxCloseString guifg=#83a597 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi jsxIfOperator guifg=#8ec07c guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi jsxElseOperator guifg=#8ec07c guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi jsxDot guifg=#ebdbb2 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi jsxNamespace guifg=#83a597 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi jsxPunct guifg=#8ec07c guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi typeScriptReserved guifg=#8ec07c guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi typeScriptLabel guifg=#8ec07c guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi typeScriptFuncKeyword guifg=#8ec07c guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi typeScriptIdentifier guifg=#fa852b guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi typeScriptBraces guifg=#ebdbb2 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi typeScriptEndColons guifg=#ebdbb2 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi typeScriptDOMObjects guifg=#ebdbb2 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi typeScriptAjaxMethods guifg=#ebdbb2 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi typeScriptLogicSymbols guifg=#ebdbb2 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi! link typeScriptDocSeeTag Comment
      hi! link typeScriptDocParam Comment
      hi! link typeScriptDocTags vimCommentTitle
      hi typeScriptGlobalObjects guifg=#ebdbb2 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi typeScriptParens guifg=#bdae93 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi typeScriptOpSymbols guifg=#bdae93 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi typeScriptHtmlElemProperties guifg=#ebdbb2 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi typeScriptNull guifg=#d3869b guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi typeScriptInterpolationDelimiter guifg=#8ec07c guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi purescriptModuleKeyword guifg=#8ec07c guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi purescriptModuleName guifg=#ebdbb2 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi purescriptWhere guifg=#8ec07c guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi purescriptDelimiter guifg=#a89984 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi purescriptType guifg=#ebdbb2 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi purescriptImportKeyword guifg=#8ec07c guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi purescriptHidingKeyword guifg=#8ec07c guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi purescriptAsKeyword guifg=#8ec07c guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi purescriptStructure guifg=#8ec07c guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi purescriptOperator guifg=#83a597 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi purescriptTypeVar guifg=#ebdbb2 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi purescriptConstructor guifg=#ebdbb2 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi purescriptFunction guifg=#ebdbb2 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi purescriptConditional guifg=#fa852b guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi purescriptBacktick guifg=#fa852b guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi coffeeExtendedOp guifg=#bdae93 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi coffeeSpecialOp guifg=#bdae93 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi coffeeCurly guifg=#fa852b guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi coffeeParen guifg=#bdae93 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi coffeeBracket guifg=#fa852b guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi rubyStringDelimiter guifg=#cbc75d guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi rubyInterpolationDelimiter guifg=#8ec07c guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi objcTypeModifier guifg=#fb4934 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi objcDirective guifg=#83a597 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi goDirective guifg=#8ec07c guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi goConstants guifg=#d3869b guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi goDeclaration guifg=#fb4934 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi goDeclType guifg=#83a597 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi goBuiltins guifg=#fa852b guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi luaIn guifg=#fb4934 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi luaFunction guifg=#8ec07c guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi luaTable guifg=#fa852b guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi moonSpecialOp guifg=#bdae93 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi moonExtendedOp guifg=#bdae93 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi moonFunction guifg=#bdae93 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi moonObject guifg=#fabd2f guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi javaAnnotation guifg=#83a597 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi javaDocTags guifg=#8ec07c guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi! link javaCommentTitle vimCommentTitle
      hi javaParen guifg=#bdae93 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi javaParen1 guifg=#bdae93 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi javaParen2 guifg=#bdae93 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi javaParen3 guifg=#bdae93 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi javaParen4 guifg=#bdae93 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi javaParen5 guifg=#bdae93 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi javaOperator guifg=#fa852b guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi javaVarArg guifg=#cbc75d guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi! link elixirDocString Comment
      hi elixirStringDelimiter guifg=#cbc75d guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi elixirInterpolationDelimiter guifg=#8ec07c guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi elixirModuleDeclaration guifg=#fabd2f guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi scalaNameDefinition guifg=#ebdbb2 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi scalaCaseFollowing guifg=#ebdbb2 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi scalaCapitalWord guifg=#ebdbb2 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi scalaTypeExtension guifg=#ebdbb2 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi scalaKeyword guifg=#fb4934 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi scalaKeywordModifier guifg=#fb4934 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi scalaSpecial guifg=#8ec07c guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi scalaOperator guifg=#ebdbb2 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi scalaTypeDeclaration guifg=#fabd2f guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi scalaTypeTypePostDeclaration guifg=#fabd2f guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi scalaInstanceDeclaration guifg=#ebdbb2 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi scalaInterpolation guifg=#8ec07c guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi markdownItalic guifg=#bdae93 guibg=NONE guisp=NONE gui=italic cterm=italic
      hi markdownH1 guifg=#cbc75d guibg=NONE guisp=NONE gui=bold cterm=bold
      hi markdownH2 guifg=#cbc75d guibg=NONE guisp=NONE gui=bold cterm=bold
      hi markdownH3 guifg=#fabd2f guibg=NONE guisp=NONE gui=bold cterm=bold
      hi markdownH4 guifg=#fabd2f guibg=NONE guisp=NONE gui=bold cterm=bold
      hi markdownH5 guifg=#fabd2f guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi markdownH6 guifg=#fabd2f guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi markdownCode guifg=#8ec07c guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi markdownCodeBlock guifg=#8ec07c guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi markdownCodeDelimiter guifg=#8ec07c guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi markdownBlockquote guifg=#7c6f64 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi markdownListMarker guifg=#7c6f64 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi markdownOrderedListMarker guifg=#7c6f64 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi markdownRule guifg=#7c6f64 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi markdownHeadingRule guifg=#7c6f64 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi markdownUrlDelimiter guifg=#bdae93 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi markdownLinkDelimiter guifg=#bdae93 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi markdownLinkTextDelimiter guifg=#bdae93 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi markdownHeadingDelimiter guifg=#fa852b guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi markdownUrl guifg=#d3869b guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi markdownUrlTitleDelimiter guifg=#cbc75d guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi markdownLinkText guifg=#7c6f64 guibg=NONE guisp=NONE gui=underline cterm=underline
      hi! link markdownIdDeclaration markdownLinkText
      hi haskellType guifg=#ebdbb2 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi haskellIdentifier guifg=#ebdbb2 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi haskellSeparator guifg=#ebdbb2 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi haskellDelimiter guifg=#a89984 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi haskellOperators guifg=#83a597 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi haskellBacktick guifg=#fa852b guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi haskellStatement guifg=#fa852b guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi haskellConditional guifg=#fa852b guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi haskellLet guifg=#8ec07c guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi haskellDefault guifg=#8ec07c guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi haskellWhere guifg=#8ec07c guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi haskellBottom guifg=#8ec07c guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi haskellBlockKeywords guifg=#8ec07c guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi haskellImportKeywords guifg=#8ec07c guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi haskellDeclKeyword guifg=#8ec07c guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi haskellDeriving guifg=#8ec07c guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi haskellAssocType guifg=#8ec07c guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi haskellNumber guifg=#d3869b guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi haskellPragma guifg=#d3869b guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi haskellString guifg=#cbc75d guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi haskellChar guifg=#cbc75d guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi jsonKeyword guifg=#cbc75d guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi jsonQuote guifg=#cbc75d guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi jsonBraces guifg=#ebdbb2 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      hi jsonString guifg=#ebdbb2 guibg=NONE guisp=NONE gui=NONE cterm=NONE
      if !s:italics
        hi htmlBoldItalic gui=bold cterm=bold
        hi htmlBoldUnderlineItalic gui=bold,underline cterm=bold,underline
        hi htmlUnderlineItalic gui=underline cterm=underline
        hi htmlItalic gui=NONE cterm=NONE
        hi markdownItalic gui=NONE cterm=NONE
      endif
    endif
    unlet s:t_Co s:italics
    finish
  endif
endif

" Color: neutralred        rgb(204,  36,  29)    160 DarkRed
" Color: neutralgreen      rgb(152, 151,  26)    100 DarkGreen
" Color: neutralyellow     rgb(215, 153,  33)    172 DarkYellow
" Color: neutralblue       rgb( 69, 133, 136)    66  DarkBlue
" Color: neutralpurple     rgb(177,  98, 134)    132 DarkMagenta
" Color: neutralaqua       rgb(104, 157, 106)    71  DarkCyan
" Color: neutralorange     rgb(214,  93,  14)    166
" Background: dark
" Color: bg0 rgb(40,40,40) 235 Black
" Color: bg1             rgb(60,  56,  54)     237 DarkGray
" Color: bg2             rgb(80,  73,  69)     239
" Color: bg3             rgb(102, 92,  84)      59
" Color: bg4             rgb(124, 111, 100)    243
" Color: fg0             rgb(251, 241, 199)    230
" Color: fg1             rgb(235, 219, 178)    187 White
" Color: fg2             rgb(213, 196, 161)    187
" Color: fg3             rgb(189, 174, 147)    144
" Color: fg4             rgb(168, 153, 132)    137 Gray
" Color: grey            rgb(146, 131, 116)    102 DarkGray
" Color: red             rgb(251, 73,  52)     203 Red
" Color: green           rgb(184, 187, 38)     142 Green
" Color: yellow          rgb(250, 189, 47)     214 Yellow
" Color: blue            rgb(131, 165, 152)    109 Blue
" Color: purple          rgb(211, 134, 155)    175 Magenta
" Color: aqua            rgb(142, 192, 124)    107 Cyan
" Color: orange          rgb(254, 128, 25)     208 Magenta
" Term colors: bg0 neutralred neutralgreen neutralyellow
" Term colors: neutralblue neutralpurple neutralaqua fg4
" Term colors: grey red green yellow blue purple aqua fg1
" Background: light
" Color: bg0 rgb(251, 241, 199) 230 White
" Color: bg1 rgb(235, 219, 178) 187 Grey
" Color: bg2 rgb(213, 196, 161) 187
" Color: bg3               rgb(189, 174, 147)    144
" Color: bg4               rgb(168, 153, 132)    137
" Color: fg0               rgb( 40,  40,  40)    235 DarkGray
" Color: fg1               rgb( 60,  56,  54)    237 Black
" Color: fg2               rgb( 80,  56,  54)    237
" Color: fg3               rgb(102,  92,  84)     59
" Color: fg4               rgb(124, 111, 100)    243 Black
" Color: grey              rgb(146, 131, 116)    102 DarkGray
" Color: red               rgb(157,   0,   6)    124 Red
" Color: green             rgb(121, 116,  14)    100 Green
" Color: yellow            rgb(181, 118,  20)    172 Yellow
" Color: blue              rgb(  7, 102, 120)    23  Blue
" Color: purple            rgb(143,  63, 113)    126 Magenta
" Color: aqua              rgb( 66, 123,  88)    29  Cyan
" Color: orange            rgb(175,  58,   3)    124 Magenta
" Term colors: bg0 neutralred neutralgreen neutralyellow
" Term colors: neutralblue neutralpurple neutralaqua fg4
" Term colors: grey red green yellow blue purple aqua fg1
" Background: any
" vim: et ts=2 sw=2
