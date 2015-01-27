" =============================================================================
" Filename: autoload/spellbad_pattern.vim
" Author: itchyny
" License: MIT License
" Last Change: 2015/01/24 00:19:43.
" =============================================================================

let s:save_cpo = &cpo
set cpo&vim

function! spellbad_pattern#update() abort
  if !get(g:, 'spellbad_pattern_enable', 1) || get(b:, 'spellbad_pattern', -1) == &l:spell
    return
  endif
  if &l:spell
    for s in get(g:, 'spellbad_pattern', [])
      silent! call matchadd('SpellBad', s)
    endfor
  else
    for m in getmatches()
      if m.group ==# 'SpellBad'
        silent! call matchdelete(m.id)
      endif
    endfor
  endif
  let b:spellbad_pattern = &l:spell
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo
