" MIT License. Copyright (c) 2013-2017 Doron Behar, C.Brabandt
" vim: et ts=2 sts=2 sw=2

scriptencoding utf-8

if !has('keymap')
  finish
endif

function! airline#extensions#keymap#status()
  return printf('%s', (&keymap ? (g:airline_symbols.keymap . ' '. &keymap) : ''))
endfunction

function! airline#extensions#keymap#init(ext)
  call airline#parts#define_function('keymap', 'airline#extensions#keymap#status')
endfunction
