" =============================================================================
" Filename: plugin/spellbad_pattern.vim
" Author: itchyny
" License: MIT License
" Last Change: 2013/11/07 14:12:27.
" =============================================================================

let s:save_cpo = &cpo
set cpo&vim

augroup SpellBadPattern
  autocmd!
  autocmd CursorHold * call spellbad_pattern#update()
augroup END

let &cpo = s:save_cpo
unlet s:save_cpo
