" =============================================================================
" Filename: autoload/spellbad_pattern.vim
" Author: itchyny
" License: MIT License
" Last Change: 2014/12/17 00:20:08.
" =============================================================================

let s:save_cpo = &cpo
set cpo&vim

function! spellbad_pattern#update() abort
  if exists('b:spellbad_pattern_done') && b:spellbad_pattern_done == &l:spell
    return
  endif
  if !exists('b:spellbad_pattern_done') || b:spellbad_pattern_done != &l:spell
    if &l:spell
      let spellbads = get(g:, 'spellbad_pattern', [])
      let b:spellbad_pattern_id = []
      for s in spellbads
        call add(b:spellbad_pattern_id, matchadd('SpellBad', s))
      endfor
    elseif exists('b:spellbad_pattern_id')
      for i in b:spellbad_pattern_id
        silent! call matchdelete(i)
      endfor
      unlet b:spellbad_pattern_id
    endif
    let b:spellbad_pattern_done = &l:spell
  endif
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo
