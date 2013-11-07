" =============================================================================
" Filename: plugin/spellbad_pattern.vim
" Author: itchyny
" License: MIT License
" Last Change: 2013/11/07 14:23:14.
" =============================================================================

if exists('g:loaded_spellbad_pattern') && g:loaded_spellbad_pattern
  finish
endif

let s:save_cpo = &cpo
set cpo&vim

augroup SpellBadPattern
  autocmd!
  autocmd CursorHold * call spellbad_pattern#update()
augroup END

let g:loaded_spellbad_pattern = 1

let &cpo = s:save_cpo
unlet s:save_cpo
