" =============================================================================
" Filename: plugin/spellbad_pattern.vim
" Author: itchyny
" License: MIT License
" Last Change: 2015/01/18 09:44:33.
" =============================================================================

if exists('g:loaded_spellbad_pattern') || v:version < 700 || !exists('*matchadd')
  finish
endif
let g:loaded_spellbad_pattern = 1

let s:save_cpo = &cpo
set cpo&vim

augroup SpellBadPattern
  autocmd!
  autocmd CursorHold * call spellbad_pattern#update()
augroup END

let &cpo = s:save_cpo
unlet s:save_cpo
